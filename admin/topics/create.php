<?php include("../../path.php");
include(ROOT_PATH . "/app/controllers/topics.php");?>
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
    <script src="https://cdn.ckeditor.com/ckeditor5/41.0.0/classic/ckeditor.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Candal&family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
    <title>Admin-section - Add Topic</title>
</head>
<body>
<?php include(ROOT_PATH . "/app/includes/adminHeader.php"); ?>
<div class="admin-wrapper">

    <?php include(ROOT_PATH . "/app/includes/adminSidebar.php"); ?>

    <div class="admin-content">
        <div class="button-group">
            <a href="create.php" class="btn btn-big">Add Topic</a>
            <a href="index.php" class="btn btn-big">Manage Topics</a>
        </div>

        <div class="content">
            <h2 class="page-title">Add Topic</h2>
            <?php include(ROOT_PATH . "/app/helpers/formErrors.php"); ?>
            <form action="create.php" method="post">
                <div>
                    <label>Name</label>
                    <input type="text" name="name" value="<?php echo $name ?>" class="text-input">
                </div>
                <div>
                    <label>Description</label>
                    <textarea name="description" id="body"><?php echo $description ?></textarea>
                    <script>
                        ClassicEditor.create(document.querySelector("#body")).catch(
                            (error) => {
                                console.error(error);
                            }
                        );
                    </script>
                </div>
                <div>
                    <button type="submit" name="add-topic" class="btn btn-big">Add Topic</button>
                </div>
            </form>
        </div>

    </div>

</div>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!--<script src="https://cdn.ckeditor.com/ckeditor5/41.0.0/classic/ckeditor.js"></script>-->
<script src="../../assets/js/script.js"></script>
</body>
</html>