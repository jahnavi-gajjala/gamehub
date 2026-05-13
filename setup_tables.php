<?php
$servername = "sql300.infinityfree.com";
$username = "if0_39858511";
$password = "ccccAgVUGgQcpNI";
$dbname = "if0_39858511_treasure_hunt";

// Connect to the database
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if player_picks table exists
$tableExists = false;
$result = $conn->query("SHOW TABLES LIKE 'player_picks'");
if ($result && $result->num_rows > 0) {
    $tableExists = true;
}

// If table doesn't exist, create it
if (!$tableExists) {
    // Read SQL file
    $sql = file_get_contents('player_picks.sql');
    
    // Execute SQL
    if ($conn->multi_query($sql)) {
        echo "player_picks table created successfully";
    } else {
        echo "Error creating player_picks table: " . $conn->error;
    }
}

// Close the connection
$conn->close();

// Redirect to the game page
header("Location: treasurehunt.html");
exit();
?>
