<?php

require 'database.php';

$user = $message = $userError = $messageError = $isSuccess = "";

// check if form submitted
if(isset($_POST['submit'])) {

        $user = checkInput($_POST['user']);
        $message = checkInput($_POST['message']);
        $isSuccess = true;

    date_default_timezone_set('Etc/GMT-3');
    $time = date("M,d,Y h:i:s A");

    if($isSuccess)
    {
        $db = Database::connect();
        $statement = $db->prepare("INSERT INTO shouts (user,message,time) values(?, ?, ?)");
        $statement->execute(array($user,$message,$time));
        Database::disconnect();
        header("Location: index.php");
    }



        if (empty($user)) {
            $userError = 'This field can not be empty';
            $isSuccess = false;
        }
        if (empty($message)) {
            $messageError = 'This field can not be empty';
            $isSuccess = false;
        }

    }


// check Data in form
function checkInput($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GithubTest</title>
    <script src="https://kit.fontawesome.com/4bea204677.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Thambi+2:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>

<body>
<section class="contact" id="contact">
    <div class="container py-5 mt-0" style="background-color: gainsboro">
        <div id="shouts" class="">
            <ul>
                <?php
                $db = Database::connect();
                $statement = $db->query('SELECT shouts.id, shouts.user, shouts.message, shouts.time
                                                      FROM   shouts
                                                      ORDER BY shouts.id DESC'
                );
                while ($shout = $statement->fetch())
                {
                    echo '<li style=" list-style-type: none;"><span><b>' . $shout['user'] . '</b></span> &nbsp &nbsp' . $shout['time'] . '<br>' . $shout['message'] . '</li>';
                }
                Database::disconnect();
                ?>
            </ul>
            <hr>
        </div>
        <form role="form" action="index.php" method="post" class="my-4">
            <div class="form-group col-md-6">
                <h3>Оставить комментарий</h3><br>
                <label for="name">Ваше имя </label>
                <input type="text" class="form-control" id="name" name="user" required placeholder="Ваше имя" style="background-color: white">
                <span><?php echo $userError; ?></span>

            </div>
            <div class="form-group col-md-6">
                <label for="comment">Ваш комментарий </label>
                <textarea id="comment" type="text"  rows="5" class="form-control" name="message" required placeholder="Ваш комментарий"></textarea>
                <span><?php echo $messageError; ?></span>
            </div>
            <div class="text-center col-md-6">
                <button type="submit" name="submit" class="btn btn-success float-right">Отправить</button>
            </div>
        </form>
    </div>
</section>


<script src="jquery.js"></script>
<script src="bootstrap.min.js"></script>
</body>

</html>