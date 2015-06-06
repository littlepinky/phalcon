<?php
if (isset($_POST['submit'])) {
    $client_com_name = $_POST['comname'];
    $client_user_name = $_POST['c_username'];
    $address = $_POST['add'];

    if (strlen($client_com_name) == 0)
        $name_error = "Please enter your company name";

    if (strlen($client_user_name) == 0) {
        $user_name_error = "Please enter your user name";
    }

    if (strlen($address) == 0) {
        $add_error = "Please specify your address";

    }
    if (strlen($client_com_name) != 0 && strlen($client_user_name) != 0 && strlen($address) != 0) {
        if (insertClient($client_com_name, $client_user_name, $address, $db)) {
            header("location: " . ROOT . "clientnew.php");
            exit;
        }
    }
}

if (isset($_POST['continue'])) {
    $_SESSION['sess_order_type'] = $_POST['order_type'];
    $_SESSION['sess_client'] = $_POST['client'];
    header('Location: ' . ROOT . "order.php");
    session_write_close();
}

if (isset($_GET['cid'])) {
    if (deleteClient($_GET['cid'], $db)) {
        header("location:" . ROOT . "clientnew.php");
        exit;
    }else {
        header("location: " . ROOT . "error.html");
        exit;
    }
}

if(isset($_POST['clientChange'])) {
    $_SESSION['sess_order_type'] = $_POST['otype'];
    $_SESSION['sess_client'] = $_POST['client'];

    header('location: ' . $_POST['page']);
    exit;
}