<?php
    session_start();
    require("issueModel.php");

    $ID=mysqli_real_escape_string($conn,$_POST['id']);
    $mod=mysqli_real_escape_string($conn,$_POST['modname']);
    $type=mysqli_real_escape_string($conn,$_POST['modType']);
    $connect=mysqli_real_escape_string($conn,$_POST['modConn']);
    $device=mysqli_real_escape_string($conn,$_POST['device']);
    $status=mysqli_real_escape_string($conn,$_POST['status']);
    $Ifunct=mysqli_real_escape_string($conn,$_POST['issueFun']);
    $Ifunct2=mysqli_real_escape_string($conn,$_POST['issueFun2']);
    $Ifunct3=mysqli_real_escape_string($conn,$_POST['issueFun3']);
    $Ides=mysqli_real_escape_string($conn,$_POST['description']);
    $failR=mysqli_real_escape_string($conn,$_POST['fRate']);

    // echo "ID為".$ID . "model為".$mod ."modtype為". $type ."Connnection為". $connect ."Device為".$device."status為". $status ."Function為". $Ifunct ."Function2為". $Ifunct2 ."Function3為". $Ifunct3 ."description為". $Ides . "失敗率為".$failR;

    if($ID > 0) {
        updateIssue($ID,$mod,$type,$connect,$device,$status,$Ifunct,$Ifunct2,$Ifunct3,$Ides,$failR);
        $msg="Issue edit sucessfully!";
    }
    else {
        $msg="There are something wrong!!!";
    }
    header("Location: listIssue.php?m=$msg");
?>