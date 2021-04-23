<?php
    session_start();

    if (isset($_GET['m'])){
        $msg="<font color='red'>" . $_GET['m'] . "</font>";
    } else {
        $msg="Good morning!";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>註冊</title>
    <link rel="stylesheet" type="text/css" href="regiP.css">
</head>
<body>
    <div class="prompt">
        <?php echo $msg;?>
    </div>
    <div class="new">
        <h2>Create NEW</h2>
        <form method="POST" action="regiControl.php">
        <div class="newinput">
            <img src="use1.png" id="usericon" alt="usericon" width="40" height="40">
            &nbsp;
            <input type="text" id="newuser" name="newuser" placeholder="輸入申請帳號"><br />
            <br />
            <img src="pwd1.png" id="pwdicon" alt="pwdicon" width="40" height="40">
            &nbsp;
            <input type="password" name="newpwd" placeholder="輸入密碼" pattern=".{6,}"><br />
            <br />
            <img src="pwd1.png" id="pwdicon" alt="pwdicon" width="40" height="40">
            &nbsp;
            <input type="password" name="checkpwd" placeholder="再次輸入密碼"><br />
            <p>(輸入密碼至少為6字以上)</p>
            <br />
        </div>
        <br />
        <div class="subBtn">
            <input type="submit" class="newBtn newBtn1" value="Submit">
        </div>
        </form>
        
        <!-- <a href="">回登入頁面</a> -->
    </div>
</body>
</html>