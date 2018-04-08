<?php

include "config.php";

?>
<html>
    <head>
        <title>Like Unlike using jQuery,AJAX, and PHP</title>
        <link href="style.css" type="text/css" rel="stylesheet" />
        <script src="jquery-3.3.1.js" type="text/javascript"></script>

        <script src="script.js" type="text/javascript"></script>

    </head>
    <body>
	
        <div class="content">

            <?php
                $userid = 5;
                $query = "SELECT * FROM posts";
                $result = mysqli_query($con,$query);
                while($row = mysqli_fetch_array($result)){
                    $postid = $row['id'];
                    $title = $row['title'];
                    $content = $row['content'];
                    $type = -1;

                    // Checking user status
                    $status_query = "SELECT count(*) as cntStatus,type FROM like_unlike WHERE userid=".$userid." and postid=".$postid;
                    $status_result = mysqli_query($con,$status_query);
                    $status_row = mysqli_fetch_array($status_result);
                    $count_status = $status_row['cntStatus'];
                    if($count_status > 0){
                        $type = $status_row['type'];
                    }

                    // Count post total likes and unlikes
                    $like_query = "SELECT COUNT(*) AS cntLikes FROM like_unlike WHERE type=1 and postid=".$postid;
                    $like_result = mysqli_query($con,$like_query);
                    $like_row = mysqli_fetch_array($like_result);
                    $total_likes = $like_row['cntLikes'];

                    $unlike_query = "SELECT COUNT(*) AS cntUnlikes FROM like_unlike WHERE type=0 and postid=".$postid;
                    $unlike_result = mysqli_query($con,$unlike_query);
                    $unlike_row = mysqli_fetch_array($unlike_result);
                    $total_unlikes = $unlike_row['cntUnlikes'];

            ?>
                    <div class="post">
                        <h1><?php echo $title; ?></h1>
                        <div class="post-text">
                            <?php echo $content; ?>
                        </div>
                        <div class="post-action">

                        <img src="images/up.png" alt="up" height="20" width="20">    <input type="button" value="Like" id="like_<?php echo $postid; ?>" class="like" style="<?php if($type == 1){ echo "color: #ffa449;"; } ?>" />&nbsp;(<span id="likes_<?php echo $postid; ?>"><?php echo $total_likes; ?></span>)&nbsp;

                        <img src="images/down.png" alt="down" height="20" width="20">    <input type="button" value="Unlike" id="unlike_<?php echo $postid; ?>" class="unlike" style="<?php if($type == 0){ echo "color: #ffa449;"; } ?>" />&nbsp;(<span id="unlikes_<?php echo $postid; ?>"><?php echo $total_unlikes; ?></span>)

                        </div>
                    </div>
            <?php
                }
            ?>

        </div>
    </body>
</html>
