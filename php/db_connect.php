<?php
$conn = mysqli_connect('localhost', 'pizzaTest', 'test1234', 'orpheus');

//checking connection
if (!$conn) {
    echo 'Connection error: ' . mysqli_connect_error();
}