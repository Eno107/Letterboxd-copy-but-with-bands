<?php
include('db_connect.php');

$searchQuery = mysqli_real_escape_string($conn, $_GET['query']);

$stmt = mysqli_prepare($conn, "SELECT * FROM album WHERE name LIKE CONCAT('%', ?, '%') LIMIT 5");
mysqli_stmt_bind_param($stmt, 's', $searchQuery);
mysqli_stmt_execute($stmt);

$result = mysqli_stmt_get_result($stmt);


$albums = [];
while ($row = mysqli_fetch_assoc($result)) {
    $albums[] = $row;
}


header('Content-Type: application/json');
echo json_encode($albums);
