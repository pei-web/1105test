<?php
    session_start();

    if (isset($_GET['m'])){
        $msg="<font color='#d64f4a'>" . $_GET['m'] . "</font>";
    } else {
        $msg="Hello!";
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>忘記密碼</title>
    <link rel="stylesheet" type="text/css" href="pwdP.css">
</head>
<body>
    <div class="content">
        <div class="password">
            <?php echo $msg; ?>
        </div>
        <h2>請輸入欲查詢之帳號</h2>
        <div class="input">
            <form method="POST" action="forgetCon.php">
                <label>Account:</label>
                <input type="text" id="username" name="username" placeholder="Your username">
                <input type="submit" value="查詢">
            </form>
        </div>
    </div>
</body>
</html>