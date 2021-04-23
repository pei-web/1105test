<?php
    session_start();
    require("issueModel.php");

    $user=mysqli_real_escape_string($conn,$_POST['username']);
    // $result = getUserpwd($user);
    // $rs=mysqli_fetch_assoc($result);


    if(isset($user)) {
        $result = getUserpwd($user);
        $rs=mysqli_fetch_assoc($result);
        // echo $rs['Password'];
        if(empty($rs['Password'])) {
            $msg = "查無此帳號!"."<br /><a href='register.php'>點我註冊</a>";
        } else {
            $msg = "你的密碼是:".$rs['Password']; 
        }
        header("Location: forgetPwd.php?m=$msg");
    } else {
        $msg = "搜尋無效";
        header("Location: forgetPwd.php?m=$msg");
    }
?>