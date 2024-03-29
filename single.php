<?php include("path.php");
include(ROOT_PATH . "/app/controllers/posts.php");

if (isset($_GET['id'])){
    $post = selectOne('posts', ['id' => $_GET['id']]);
}

$topics = selectAll('topics');
$posts = selectAll('posts', ['published' => 1]);

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
    <script src="https://vk.com/js/api/openapi.js?169" type="text/javascript"></script>
    <title><?php echo $post['title'];?> | Test-Blog</title>
</head>
<body>

<?php include(ROOT_PATH . "/app/includes/header.php"); ?>
<div class="page-wrapper">

    <!--    CONTENT-->
    <div class="content clearfix">
        <!--    MAIN CONTENT-->
        <div class="main-content-wrapper">
        <div class="main-content single">
            <h1 class="post-title"><?php echo $post['title'];?></h1>
            <div class="post-content">
                <?php echo html_entity_decode($post['body']);?>
            </div>
        </div>
        </div>
        <!--    SIDEBAR-->
        <div class="sidebar single">

            <div class="section popular">
                <h2 class="section-title">Popular Post</h2>
<?php foreach ($posts as $p): ?>
    <div class="post clearfix">
        <img src="<?php echo BASE_URL . '/assets/images/' . $p['image'] ?> " alt="">
        <a href="single.php?id=" class="title">
            <h4><?php echo $p['title'] ?></h4></a>
    </div>
                <?php endforeach;?>



            </div>
            <div class="section topics">
                <h2 class="section-title">Topics</h2>
                <ul>
                    <?php foreach ($topics as $key => $topic): ?>
                        <li><a href="<?php echo BASE_URL . '/index.php?t_id=' . $topic['id'] . '&name=' . $topic['name']  ?>"><?php echo $topic['name']; ?></a></li>
                    <?php endforeach; ?>
                </ul>
            </div>

        </div>
    </div>
</div>

<?php include(ROOT_PATH . "/app/includes/footer.php"); ?>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="assets/js/script.js"></script>
</body>
</html>