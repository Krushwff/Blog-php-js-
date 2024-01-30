<?php include("path.php");
include(ROOT_PATH . "/app/controllers/users.php");
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Candal&family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
    <title>Login</title>
</head>
<body>
<?php include(ROOT_PATH . "/app/includes/header.php"); ?>

<div class="auth-content">
    <form action="login.php" method="post">
        <h2 class="form-title">Login</h2>
        <?php include(ROOT_PATH . "/app/helpers/formErrors.php"); ?>
        <div>
            <label>Username</label>
            <input type="text" name="username" value="<?php echo $username;?>" class="text-input">
        </div>
        <div>
            <label>Password</label>
            <input type="password" name="password" value="<?php echo $password;?>" class="text-input">
        </div>
        <div>
            <button type="submit" name="login-btn" class="btn btn-big">Login</button>
        </div>
        <p>Or <a href="<?php echo BASE_URL . '/register.php' ?>">Sign Un</a></p>
    </form>
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="assets/js/script.js"></script>
</body>
</html>