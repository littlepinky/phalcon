<?php
//for input page
if (isset($_POST['input_var'])) {
    $input_var = $_POST['input_var'];

    //validation
    if (isset($_POST['rece_facts'])) {
        $rece_facts = $_POST['rece_facts'];
        if (strlen($rece_facts) == 0) {
            $rece_error = "Please enter receipt facts description";
            return false;
        }
    } elseif (isset($_POST['application'])) {
        $application = $_POST['application'];
        if (strlen($application) == 0) {
            $application_error = "Please enter application description";
            return false;
        }
    } elseif (isset($_POST['os'])) {
        $os = $_POST['os'];
        if (strlen($os) == 0) {
            $os_error = "Please enter os description";
            return false;
        }
    }else {
        $status = $_POST['status'];
        if (strlen($status) == 0) {
            $status_error = "Please specify status description";
            return false;
        }
    }

    if (isset($rece_facts) || isset($application) || isset($os) || isset($status) || isset($os)) {
        switch ($input_var) {

            case "app":
                if (insertOpt("application_tbl", $application, $db)) {
                    echo "<script>alert('Successfully inserted')</script>";
                    echo '<script>window.location.href= "optional.php";</script>';
                }
                break;

            case "status":
                if (insertOpt("status_tbl", $status, $db)) {
                    echo "<script>alert('Successfully inserted')</script>";
                    echo '<script>window.location.href= "optional.php";</script>';
                }
                break;

            case "receipt":
                if (insertOpt("receiptfacts_tbl", $rece_facts, $db)) {
                    echo "<script>alert('Successfully inserted')</script>";
                    echo '<script>window.location.href= "optional.php";</script>';
                }
                break;

            case "os":
                if (insertOpt("os_tbl", $os, $db)) {
                    echo "<script>alert('Successfully inserted')</script>";
                    echo '<script>window.location.href= "optional.php";</script>';
                }
                break;
            default:
                exit;
        }
    }
}

if (isset($_POST['year_input'])) {
    $data['start_year'] = $_POST['start_year'];
    $data['end_year'] = $_POST['end_year'];

    if (checkData("year_tbl", $db) < 1) {
        if (insertYear($data, $db)) {
            echo "<script>alert('Successfully inserted')</script>";
            echo '<script>window.location.href= "optional.php";</script>';
        } else {
            header("location: " . ROOT . "error.php");
            exit;
        }
    } else {
        if (updateYear($data, $db)) {
            echo "<script>alert('Successfully inserted')</script>";
            echo '<script>window.location.href= "optional.php";</script>';
        } else {
            header("location: " . ROOT . "error.php");
            exit;
        }
    }
}