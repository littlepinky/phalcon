<?php
// *** include require setting files ***
include_once("lib/ini.setting.php");
include_once("ini.config.php");
include_once("ini.dbstring.php");
include_once("ini.functions.php");

sec_session_start();

include_once("mod.login.php");
include_once("mod.order.php");
include_once("mod.optional.php");
include_once("mod.client.php");
include_once("ctrl.order.php");
include_once("ctrl.client.php");
include_once("ctrl.login.php");

// check user  authentication
checkSession($_SESSION['sess_user_id']);
checkOrderSession($_SESSION['sess_order_type'],$_SESSION['sess_client']);

$sta = getStatus($db);
$rf = getRf($db);
$os = getOS($db);
$app = getApp($db);
$yr = getYear($db);
?>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <link href="<?php echo CSS; ?>import.css" type="text/css" rel="stylesheet"/>
    <script src="<?php echo JS; ?>jquery.min.js"></script>
    <title>Order List</title>
</head>
<body>
<div class="bodyWrapper">
    <?php include_once("inc.header.php"); ?>
    <div class="ctnLeft">
        <?php include_once("inc.search.php"); ?>
    </div>
    <div class="ctnRight">
        <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="POST">
            <p class="paddingBtm20" style="float:left;width:100%;">
                <select class="txt" name="month" id="month">
                    <?php
                    for ($i = 1; $i <= 12; $i++) {
                        if (isset($_POST['month'])) {
                            if ($i == $_POST['month']) {
                                $selected = "selected=selected";
                            }
                            echo "<option value='" . $i . "' $selected>" . $i . "月度</option>";
                        } else {
                            echo "<option value='" . $i . "'>" . $i . "月度</option>";
                        }
                        $selected = "";
                    }
                    ?>
                </select>
                <select class="txt" name="year">
                    <?php
                    $syr = $yr[0]['year_start'];
                    $eyr = $yr[0]['year_end'];

                    for($i = 0; $i <= ($eyr - $syr); $i++) {
                        if($_POST['year'] == ($syr + $i)) {
                            $selected = "selected";
                        }
                        echo "<option value='". ($syr + $i)."' ".$selected.">". ($syr + $i)."</option>";
                        $selected = "";
                    }
                    ?>
                </select>
                <input type="hidden" value="1" name="changemonth"/>
                <input type="submit" value="検索" />
            </p>
        </form>
        <div class="inner">
        <table class="tblList">
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <colgroup></colgroup>
            <tr>
                <th><?php echo $odtypelbl; ?>番号</th>
                <th><?php echo $odtypelbl; ?>日時</th>
                <th>部署</th>
                <th>登録者</th>
                <th>クライアント名</th>
                <th>得意先担当者名</th>
                <th>品名</th>
                <th><?php echo $odtypelbl; ?>内容</th>
                <th><?php echo $odtypelbl; ?>金額</th>
                <th>社内売価</th>
                <th>差益額</th>
                <th>納期予定</th>
                <th>開始時間</th>
                <th>終了時間</th>
                <th>状況</th>
                <th>編集 | 詳細</th>
            </tr>
            <?php
            if (empty($ordlist)) {
                echo "<tr><td colspan='16'>No data</td></tr>";
            } else {
                for ($i = 0; $i < count($ordlist); $i++) {
                    echo "<tr>";
                    echo "<td>" . $ordlist[$i]['order_uid'] . "</td>";
                    echo "<td>" . $ordlist[$i]['order_date'] . "</td>";
                    echo "<td>" . $ordlist[$i]['order_dept'] . "</td>";
                    echo "<td>" . $ordlist[$i]['responsible_person'] . "</td>";
                    echo "<td>" . $ordlist[$i]['company_name'] . "</td>";
                    echo "<td>" . $ordlist[$i]['client_user_name'] . "</td>";
                    echo "<td>" . $ordlist[$i]['product_name'] . "</td>";

                    $rflist = getRfById($ordlist[$i]['order_id'], $db);
                    echo "<td>";
                    if (empty($rflist)) {
                        echo "-";
                    } else {
                        for ($a = 0; $a < count($rflist); $a++) {
                            echo $rflist[$a]['rf_descp'] . "<br/>";
                        }
                    }
                    echo "</td>";

                    echo "<td>" . $ordlist[$i]['client_price'] . "</td>";
                    echo "<td>" . $ordlist[$i]['company_sell_price'] . "</td>";
                    echo "<td>" . $ordlist[$i]['margin_price'] . "</td>";

                    $applist = getAppById($ordlist[$i]['order_id'], $db);
                    echo "<td>";
                    if (empty($applist)) {
                        echo "-";
                    } else {
                        for ($b = 0; $b < count($applist); $b++) {
                            echo $applist[$b]['app_descp'] . "<br/>";
                        }
                    }
                    echo "</td>";

                    echo "<td>" . $ordlist[$i]['start_timed'] . "</td>";
                    echo "<td>" . $ordlist[$i]['end_timed'] . "</td>";
                    echo "<td>" . $ordlist[$i]['sta_descp'] . "</td>";
                    echo "<td><a target='_blank' href='" . ROOT . "order_detail.php?ordid=" . $ordlist[$i]['order_id'] . "'>編集 </a> | <a href='" . ROOT . "order_detail.php?ordid=" . $ordlist[$i]['order_id'] . "&status=detail'>詳細 </a></td>";
                    echo "</tr>";
                }
            }
            ?>
        </table>
            </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $(".tblList").delegate('td', 'mouseover mouseleave', function (e) {
            if (e.type == 'mouseover') {
                $(this).parent().addClass("hover");
                $("colgroup").eq($(this).index()).addClass("hover");
            }
            else {
                $(this).parent().removeClass("hover");
                $("colgroup").eq($(this).index()).removeClass("hover");
            }
        });
    });
</script>
</body>
</html>