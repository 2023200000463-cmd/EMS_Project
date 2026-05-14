<?php

$conn = mysqli_connect(
    "localhost",
    "root",
    "",
    "Employee_Management_DB"
);

if(!$conn){
    die("Connection Failed");
}

?>