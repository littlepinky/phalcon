<form action="order_list.php" method="post">
    <table class="tblSearch">
        <tr>
            <td><span class="lbl"><?php echo $odtypelbl; ?>日</span>
                <input type="text" class="txt" id="startdate" name="startdate" value="<?php echo isset($_POST['startdate'])?$_POST['startdate']:''; ?>"/>

            </td>
            <?php
            if($_SESSION['sess_order_type']==1)
            {
            ?>
            <td>
                <span class="lbl"><?php echo $odtypelbl; ?>者</span>
                <input type="text" class="txt" name="received_name" id="received_name" value="<?php echo isset($_POST['received_name'])?$_POST['received_name']:''; ?>"/>
            </td>
            <?php } ?>

            <td>
                <span class="lbl"><?php echo $odtypelbl; ?>内容</span>
                <?php
                echo '<select name="facts" class="txt">';
                echo '<option value=0 >-</option>';
                for ($d = 0; $d < count($rf); $d++) {
                    if($rf[$d]['rf_id'] == $_POST['facts']) {
                        $selected = "selected";
                    }
                    echo '<option value="' . $rf[$d]['rf_id'] . '" '.$selected.'>' . $rf[$d]['rf_descp'] . '</option>';
                    $selected = "";
                }
                echo '</select> ';
                ?>
            </td>
            <td>
                <span class="lbl"><?php echo $odtypelbl; ?>番号</span>
                <input type="text" class="txt" id="received_no" name="received_no" values="<?php echo isset($_POST['received_no'])?$_POST['received_no']:''; ?>"/>
            </td>
            <td colspan="2">
                <span class="lbl">状況</span>
                <select name="selStatus">
                    <?php
                    for($i = 0; $i < count($sta); $i++) {
                        if($sta[$i]['sta_id'] == $_POST['selStatus']) {
                            $selected = "selected";
                        }
                        echo "<option value='".$sta[$i]['sta_id']."' ".$selected.">".$sta[$i]['sta_descp']."</option>";
                        $selected = "";
                    }
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="5"><input type="submit" value="検索" id="search" name="search"/></td>
        </tr>
    </table>
</form>