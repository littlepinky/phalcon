<?php
// *** include require setting files ***
include_once("../lib/ini.setting.php");
include_once("ini.config.php");
include_once("ini.dbstring.php");
include_once("ini.functions.php");

sec_session_start();

include_once("mod.masterlogin.php");
include_once("ctrl.masterlogin.php");

// create master user.....................//
//function insertUser($login_name, $user_name, $user_mail, $user_password, $user_salt, $mysqli)
//{
//
//    $query = "INSERT INTO master_tbl (user_id, user_name, department_name, email, password, salt, create_date, delete_flag)";
//    $query .= "VALUES ('" . $login_name . "', '" . $user_name . "', '', '" . $user_mail . "', '" . $user_password . "', '" . $user_salt . "', NOW(), '0');";
//    echo $query;
//
//    if ($mysqli->query($query)) {
//        return true;
//    }
//    return false;
//}
//
//
//$user_salt = hash('sha512', rand(0, 1));
//$hashed = hash('sha512', 'admin');
//$user_password = hash('sha512', $hashed . $user_salt);
//
//    if (!insertUser("admin", "admin", "admin@gmail.com", $user_password, $user_salt, $db)) {
//        echo "fail to create user";
//        exit;
//    } else {
//        echo "<script>alert('User successfully Created')</script>";
//    }

?>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <link href="<?php echo CSS; ?>import.css" type="text/css" rel="stylesheet"/>
    <script src="<?php echo JS; ?>jquery.min.js"></script>
    <title>Login</title>
</head>
<body>
<div class="wrapper alignCenter">
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" class="login_form">
        <?php
        if (isset($_GET["err"]) && $_GET["err"] == 1) {
            echo "<span style='color:red;'>Incorrect username and password!</span>";
        }
        ?>
        <a class="ctnLogo2 marginBtm20 marginTop20">RubberSoul</a>

        <p class="ctnDescp">入稿システム</p>

        <p class="ctnDescp sizeFontSmall">Progress Management System</p>

        <input class="txt fullWidth marginTop20" name="login_id" type="text" placeholder="Login ID"/>
        <input class="txt fullWidth" name="password" type="password" placeholder="Password"/>
        <input type="hidden" name="cmd" value="login"/>
        <input type="submit" name="submit" class="btn marginTop20" value="Login"/>

    </form>
    <br><br>
    When you forgot the password you can reset the password by clicking <a href="password_edit.php"><b>Here</b></a>.
</div>
</body>
</html>