<?php

function getusermail($usermail, $mysqli)
{

    $query = "SELECT * FROM user_tbl WHERE email='" . $usermail . "'";

    if ($stmt = $mysqli->query($query)) {
        if ($stmt->num_rows > 0) {
            while ($result = $stmt->fetch_assoc()) {
                $data[] = $result;
            }
        } else {
            $data = "";
        }
    }
    return $data;
}

function update_psw($newpsw, $salt, $hemail, $mysqli)
{
    $query = "UPDATE `user_tbl` SET `password` = '" . $newpsw . "', `salt` = '" . $salt . "' WHERE `user_tbl`.`email` = '" . $hemail . "'";
    if ($mysqli->query($query)) {
        return true;
    }

    return false;
}

function insertUser($login_name, $user_name, $user_mail, $user_password, $user_salt, $mysqli)
{

    $query = "INSERT INTO user_tbl (user_id, user_name, department_name, email, password, salt, create_date, delete_flag)";
    $query .= "VALUES ('" . $login_name . "', '" . $user_name . "', '', '" . $user_mail . "', '" . $user_password . "', '" . $user_salt . "', NOW(), '0');";


    if ($mysqli->query($query)) {
        return true;
    }
    return false;
}

function getUser($mysqli)
{
    $query = "SELECT user_id,user_name,email FROM user_tbl WHERE delete_flag=0";

    if ($stmt = $mysqli->query($query)) {
        if ($stmt->num_rows > 0) {
            while ($result = $stmt->fetch_assoc()) {
                $data[] = $result;
            }
        } else {
            $data = "";
        }
    }
    return $data;
}
function deleteuser($uid,$mysqli)
    {


    $query = "DELETE FROM user_tbl WHERE user_id ='" . $uid."'";

      if ($mysqli->query($query)) {
        return true;
    }
    return false;
}


