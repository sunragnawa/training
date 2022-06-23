<?php

function dbconnect(){

    $hostname = "192.168.56.11"
    $usernamedb = "root";
    $passworddb = "root";
    $dbname = "cogip";

    $conn = mysqli_connect($hostname, $usernamedb, $passworddb, $dbname) or die ("unable to connect");
    return $conn;
}
?>
