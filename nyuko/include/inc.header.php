<?php
$odtypelbl = orderType($_SESSION['sess_order_type']);
$clientlst = getClient($db);
?>
<div class="ctnHeader">
    <a class="ctnLogo" href="<?php echo ROOT; ?>order_list.php">RubberSoul</a>
    <ul class="lstMain paddingLft20 marginleft20">
        <li><a href="<?php echo ROOT; ?>clientnew.php">クライアント登録</a></li>
        <li><a href="<?php echo ROOT; ?>order.php"><?php echo $odtypelbl; ?>新規登録</a></li>
        <li><a href="<?php echo ROOT; ?>order_list.php"><?php echo $odtypelbl; ?>一覧</a></li>
        <li><a href="<?php echo ROOT; ?>order_history.php">過去<?php echo $odtypelbl; ?>一覧</a></li>
        <li><a href="<?php echo ROOT; ?>optional.php">オプショナル</a></li>
        <li><a href="<?php echo ROOT; ?>user.php">マスター新規登録</a></li>
    </ul>
    <ul class="lstLogout">
        <li><a href="<?php echo $_SERVER['PHP_SELF']; ?>?cmd=logout" class="btnLogout bold" href="#">Logout</a></li>
    </ul>
</div>
<div class="ctnTitle marginBtm20">
    <form method="post">
        <?php
        //$compName = getClientById($_SESSION['sess_client'], $db);
        //echo "<label style='font-size: 130% !important;font-weight:bold;'>" . $compName['company_name'] . " " . orderType($_SESSION['sess_order_type']) . "ページ</label>";
        echo "<select name='client'>";
        for ($i = 0; $i < count($clientlst); $i++) {
            if ($clientlst[$i]['client_id'] == $_SESSION['sess_client']) {
                $selected = "selected";
            }
            echo "<option value='" . $clientlst[$i]['client_id'] . "' " . $selected . ">" . $clientlst[$i]['company_name'] . "</option>";
            $selected = "";
        }
        echo "</select>";

        echo "<select name='otype'>";
        echo ($_SESSION['sess_order_type'] == 1)?"<option value='1' selected>発注</option>":"<option value='1'>発注</option>";
        echo ($_SESSION['sess_order_type'] == 2)?"<option value='2' selected>受注</option>":"<option value='2'>受注</option>";
        echo "</select>";
        ?>
        <input type="hidden" value="<?php echo $_SERVER['PHP_SELF']; ?>" name="page" />
        <input type="submit" value="移動する" name="clientChange" />
    </form>
</div>
