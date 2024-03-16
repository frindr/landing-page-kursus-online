<?php 
    include_once("koneksi.php");
    include_once("fungsi.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WEB-Lab</title>
    <link rel="stylesheet" href="<?php echo url_dasar()?>/css/style.css">
</head>

<body>
    <nav>
        <div class="wrapper">
            <div class="logo"><a href='<?php echo url_dasar()?>'>WEB-Lab</a></div>
            <div class="menu">
                <ul>
                    <li><a href="<?php echo url_dasar()?>#home">Home</a></li>
                    <li><a href="<?php echo url_dasar()?>#courses">Courses</a></li>
                    <li><a href="<?php echo url_dasar()?>#tutors">Tutors</a></li>
                    <li><a href="<?php echo url_dasar()?>#partners">Partners</a></li>
                    <li><a href="<?php echo url_dasar()?>/login.php" class="tbl-biru">Login Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="wrapper">