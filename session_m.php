<?php
require 'connection.php';
$conn = Connect();

session_start();

$user_check = $_SESSION['login_user1'];

// Check if the session variable is set
if(!isset($user_check)) {
    // Redirect if not logged in
    header('Location: managerlogin.php');
    exit(); // Ensure that no further code is executed
}

// SQL Query To Fetch Complete Information Of User
$query = "SELECT username FROM MANAGER WHERE username = '$user_check'";
$ses_sql = mysqli_query($conn, $query);

// Check for query execution error
if(!$ses_sql) {
    die("Query failed: " . mysqli_error($conn));
}

// Check if a row is returned
if(mysqli_num_rows($ses_sql) == 1) {
    $row = mysqli_fetch_assoc($ses_sql);
    $login_session = $row['username'];
} else {
    // Handle case where no matching user is found
    echo "User not found.";
}

?>
