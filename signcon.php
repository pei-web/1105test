<?php
    require("issueModel.php");
    $uname=mysqli_real_escape_string($conn,$_POST['username']);
    $upwd=mysqli_real_escape_string($conn,$_POST['signpwd']);

    
?>