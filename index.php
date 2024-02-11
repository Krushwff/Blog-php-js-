<?php include("path.php");
include(ROOT_PATH . "/app/controllers/topics.php");

$posts = array();
$postsTitle = 'Recent Posts';

if (isset($_POST['search-term'])){
    $postsTitle = "You searched for'" .$_POST['search-term'] . "'";
    $posts = searchPosts($_POST['search-term']);
}else{
    $posts = getPublishedPosts();
}

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
    <title>Blog</title>
</head>
<body>

<?php include(ROOT_PATH . "/app/includes/header.php"); ?>
<?php include(ROOT_PATH . "/app/includes/messages.php"); ?>


<div class="page-wrapper">
    <!--    SLAIDER-->
    <div class="post-slider">
        <h1 class="slider-title">Trending Post</h1>
        <i class="fas fa-chevron-left prev"></i>
        <i class="fas fa-chevron-right next"></i>
        <div class="post-wrapper">

            <?php foreach ($posts as $post): ?>
            <div class="post">
            <img src="<?php echo BASE_URL . '/assets/images/' . $post['image'];?>" alt="" class="slider-image">
            <div class="post-info">
                <h4><a href="single.php"><?php echo $post['title'];?></a></h4>
                <i class="far fa-user"> <?php echo $post['username'];?></i>
                &nbsp;
                <i class="far fa-calendar"> <?php echo date('F j, Y', strtotime($post['created_at']));?></i>
            </div>
        </div>
            <?php endforeach;?>



        </div>
    </div>
<!--    CONTENT-->
<div class="content clearfix">
    <!--    MAIN CONTENT-->
    <div class="main-content">
        <h1 class="recent-post-title"><?php echo $postsTitle ?></h1>
        <?php foreach ($posts as $post): ?>
            <div class="post clearfix">
                <img src="<?php echo BASE_URL . '/assets/images/' . $post['image'];?>" alt="" class="post-image">
                <div class="post-preview">
                    <h2><a href="single.php"><?php echo $post['title'];?></a></h2>
                    <i class="far fa-user"> <?php echo $post['username'];?></i>
                    &nbsp;
                    <i class="far fa-calendar"> <?php echo date('F j, Y', strtotime($post['created_at']));?></i>
                    <p class="preview-text">
                        <?php echo html_entity_decode(substr($post['body'], 0, 150) . '...') ?>
                    </p>
                    <a href="single.php" class="btn read-more">Read More</a>
                </div>
            </div>
        <?php endforeach;?>

    </div>
<!--    SIDEBAR-->
    <div class="sidebar">
<div class="section search">
    <h2 class="section-title">Search</h2>
    <form action="index.php" method="post">
        <input type="text" name="search-term" class="text-input" placeholder="Search...">
    </form>
</div>

        <div class="section topics">
            <h2 class="section-title">Topics</h2>
            <ul>
                <?php foreach ($topics as $key => $topic): ?>
                <li><a href="#"><?php echo $topic['name']; ?></a></li>
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