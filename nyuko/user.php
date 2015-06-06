<?php
// *** include require setting files ***
include_once("lib/ini.setting.php");
include_once("ini.config.php");
include_once("ini.dbstring.php");
include_once("ini.functions.php");

sec_session_start();

include_once("mod.order.php");
include_once("mod.login.php");
include_once("mod.optional.php");
include_once("mod.admin.php");
include_once("mod.client.php");
include_once("ctrl.admin.php");
include_once("ctrl.login.php");

// check user authentication
checkSession($_SESSION['sess_user_id']);
checkSession($_SESSION['sess_order_type']);
checkSession($_SESSION['sess_client']);


?>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <link href="<?php echo CSS; ?>import.css" type="text/css" rel="stylesheet"/>
    <script src="<?php echo JS; ?>jquery.min.js"></script>
    <script src="<?php echo JS; ?>datepickr.js"></script>
    <script src="<?php echo JS; ?>jquery.timepicker.min.js"></script>
    <title>Order List</title>
    <script>
        function deleteFunction() {
            confirm("Are you sure you want to delete this record ?");
        }
    </script>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
<div class="bodyWrapper">
    <?php include_once("inc.header.php"); ?>
    <div class="ctnLeft">
        <form action="#" method="post">
            <table class="tblForm">
                <tr>
                    <td>
                        <label class="lbl">ログイン名</label>
                        <input type="text" name="login_name" class="txt" placeholder="ログイン名"/>
                        <span class="error"><?php echo $login_name_error; ?></span>
                    </td>
                    <td>
                        <label class="lbl">ユーザー名</label>
                        <input type="text" name="user_name" class="txt" placeholder="ユーザー名"/>
                        <span class="error"><?php echo $user_name_error; ?></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="lbl">パスワード</label>
                        <input type="password" name="user_pass" class="txt" placeholder="パスワード"/>
                        <span class="error"><?php echo $user_password_error; ?></span>
                    </td>
                    <td>
                        <label class="lbl">メール</label>
                        <input type="email" name="user_mail" class="txt" placeholder="メール"/>
                        <span class="error"><?php echo $user_mail_error; ?></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="user_add" value="登録">

                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="ctnRight">
        <table class="tblList">
            <tr>
                <th>ログイン名</th>
                <th>ユーザー名</th>
                <th>メール</th>
                <th>削除</th>
            </tr>
            <?php
            $userlist = getUser($db);

            if (empty($userlist)) {
                echo "<tr><td colspan='3'>No data</td></tr>";
            } else {
                foreach ($userlist as $usr_list) {
                    echo "<tr>";
                    echo "<td>" . $usr_list['user_id'] . "</td>";
                    echo "<td>" . $usr_list['user_name'] . "</td>";
                    echo "<td>" . $usr_list['email'] . "</td>";
                    echo "<td><a href=" . ROOT . "user.php?uid=" . $usr_list['user_id'] . " onclick='javascript:confirm('Are you sure you want to delete this record ?');'>削除</a></td>";
                    echo "</tr>";
                }
            }
            ?>
        </table>
        <?php
        ?>
    </div>
</div>
</div>
</body>
</html>