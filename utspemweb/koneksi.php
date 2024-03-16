<?php 
    $host = "localhost";
    $user = "root";
    $pass = "";
    $db = "landing_page";

    $koneksi = mysqli_connect($host, $user, $pass, $db);
    if(!$koneksi){
        die("Gagal Terkoneksi");
    }
?>