<?php
    require("issueModel.php");

    $name=mysqli_real_escape_string($conn,$_POST['newuser']);
    $password=mysqli_real_escape_string($conn,$_POST['newpwd']);
    $check=mysqli_real_escape_string($conn,$_POST['checkpwd']);
    if($password === $check) {
        if(isset($name,$password)) {
            register($name, $password);
            $msg="Register success!";
            header("Location:sighIn.php?");
        } else {
            $msg="Register Fail!";
            // header("Location: signIn.php");
        }
    } else {
        $msg="密碼不符合!請重新輸入一次";
        header("Location: register.php?m=$msg"); 
    }    
?>