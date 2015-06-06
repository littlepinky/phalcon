<?php
include_once("ini.dbstring.php");
include_once("mod.admin.php");

//for password edit
$status_error = '';
$rece_error = '';
$application_error = '';

if (isset($_POST['add'])) {
    $user_email = $_POST['email'];
    $_SESSION['sess_user_email'] = $_POST['email'];

    $result = getusermail($user_email, $db);
    foreach ($result as $row) {
        $psw = $row['password'];
        $seed = str_split($psw);

        shuffle($seed);

        $rand = '';
        foreach (array_rand($seed, 8) as $k)
            $rand .= $seed[$k];
    }
    $to = $user_email;
    $subject = "Security Code";
    $message = "You can access our site by using the following code:" . "<br>";
    $message .= $rand . "<br>";
    $message .= '<a href="http://atu-japan.co.jp/nyuko/password_reset.php?e=' . $_SESSION['sess_user_email'] . '">Click here to change your new password</a>';

    ini_set("SMTP", "localhost");
    ini_set("sendmail_from", "info@saj.ir");
    $headers = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=utf8' . "\r\n";
    $headers .= 'From: Rubbersoul' . "\r\n";
    if (mail($to, "password reset", $message, $headers)) {
        echo '<script type="text/javascript">';
        echo 'alert("Your security code has been sent to your email!");';
        echo 'window.location.href= "index.php";';
        echo '</script>';
    }
}

//for password reset
if (isset($_POST['savepsw'])) {
    $hidden = $_POST['hidden'];
    $newpsw = $_POST['newpsw'];


    $salt = hash('sha512', rand(0, 1));
    $hashed = hash('sha512', $newpsw);
    $new_pass = hash('sha512', $hashed . $salt);

    if (!update_psw($new_pass, $salt, $hidden, $db)) {
        echo "fail to reset password";
        exit;
    } else {
        echo "<script>alert('Your password successfully updated')</script>";
    }
}

if (isset($_POST['user_add'])) {

    $login_name = $_POST['login_name'];
    $user_name = $_POST['user_name'];
    $user_password = $_POST['user_pass'];
    $user_mail = $_POST['user_mail'];

    if (strlen($login_name) == 0) {
        $login_name_error = "Please enter your login name";
    }
    if (strlen($user_name) == 0) {
        $user_name_error = "Please enter your user name";
    }

    if (strlen($user_password) == 0) {
        $user_password_error = "Please specify your password";

    }

    if (strlen($user_mail) == 0) {
        $user_mail_error = "Please specify email address";

    }

    $user_salt = hash('sha512', rand(0, 1));
    $hashed = hash('sha512', $user_password);
    $user_password = hash('sha512', $hashed . $user_salt);
    if (strlen($login_name) != 0 && strlen($user_name) != 0 && strlen($user_password) != 0 && strlen($user_mail) != 0) {
        if (!insertUser($login_name, $user_name, $user_mail, $user_password, $user_salt, $db)) {
            echo "fail to create user";
            exit;
        } else {
            echo "<script>alert('User successfully Created')</script>";
        }
    }
}

if (isset($_GET['uid'])) {
    if (deleteuser($_GET['uid'], $db)) {
        header("location:" . ROOT . "user.php");
        exit;
    }else {
        header("location: " . ROOT . "error.html");
        exit;
    }
}

