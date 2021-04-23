<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登入</title>
    <link rel="stylesheet" type="text/css" href="signIn.css">
</head>
<body>
    <div class="block">
        <div class="introduce">
            <p>Welcome Back<br />Sign in</p>
        </div>
        <div class="input">
            <form>
                <label>帳號:</label>
                <input type="text" id="username" name="username" placeholder="Enter username">
                <label>密碼:</label>
                <input type="password" name="signpwd" placeholder="Enter passsword"><br />
                <br />
                <div class="forget">
                    <a href="forgetPwd.php" class="forpwd">忘記密碼?</a>
                </div>
                <div class="btn">
                    <a href="register.php" class="button">SIGN UP</a>
                    <input type="submit" value="LOGIN" id="log">
                </div>
            </form>
        </div>
    </div>
</body>
</html>