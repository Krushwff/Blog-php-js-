<?php include("../../path.php");
include(ROOT_PATH . "/app/controllers/users.php");?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" crossorigin="anonymous">
    <link rel="stylesheet" href="../../assets/css/style.css">
    <link rel="stylesheet" href="../../assets/css/admin.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Candal&family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
    <title>Admin-section - Manage Users</title>
</head>
<body>
<?php include(ROOT_PATH . "/app/includes/adminHeader.php"); ?>
<div class="admin-wrapper">

    <?php include(ROOT_PATH . "/app/includes/adminSidebar.php"); ?>

    <div class="admin-content">
        <div class="button-group">
            <a href="create.php" class="btn btn-big">Add User</a>
            <a href="index.php" class="btn btn-big">Manage Users</a>
        </div>

        <div class="content">
            <h2 class="page-title">Manage Users</h2>
            <?php include(ROOT_PATH . "/app/includes/messages.php"); ?>
            <table>
                <thead>
                <th>SN</th>
                <th>Username</th>
                <th>Role</th>
                <th colspan="2">Action</th>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Krayushkin</td>
                    <td>admin</td>
                    <td><a href="#" class="edit">edit</a></td>
                    <td><a href="#" class="delete">delete</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Ivanov</td>
                    <td>Author</td>
                    <td><a href="#" class="edit">edit</a></td>
                    <td><a href="#" class="delete">delete</a></td>
                </tr>
                </tbody>
            </table>
        </div>

    </div>

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="../../assets/js/script.js"></script>
</body>
</html>