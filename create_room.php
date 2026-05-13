<?php
$servername = "sql300.infinityfree.com";
$username = "if0_39858511";
$password = "ccccAgVUGgQcpNI";
$dbname = "if0_39858511_treasure_hunt";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    echo json_encode([
        "success" => false,
        "message" => "DB connection failed: " . $conn->connect_error
    ]);
    exit;
}

// Check if rooms table exists
$tableExists = false;
$result = $conn->query("SHOW TABLES LIKE 'rooms'");
if ($result && $result->num_rows > 0) {
    $tableExists = true;
}

if (!$tableExists) {
    // Create rooms table if it doesn't exist
    $createTable = "CREATE TABLE `rooms` (
        `room_code` varchar(10) NOT NULL,
        `created_by` varchar(50) NOT NULL,
        `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
        PRIMARY KEY (`room_code`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;";
    
    if (!$conn->query($createTable)) {
        echo json_encode([
            "success" => false,
            "message" => "Failed to create rooms table: " . $conn->error
        ]);
        exit;
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $created_by = $_POST['username'];

    // Generate a unique 6-char room code
    $roomCode = strtoupper(substr(md5(uniqid()), 0, 6));

    // Insert room
    $stmt = $conn->prepare("INSERT INTO rooms (room_code, created_by) VALUES (?, ?)");
    $stmt->bind_param("ss", $roomCode, $created_by);

    if ($stmt->execute()) {
        echo json_encode([
            "success" => true,
            "message" => "✅ Room created successfully!",
            "room_code" => $roomCode
        ]);
    } else {
        echo json_encode([
            "success" => false,
            "message" => "❌ Failed to create room. Please try again."
        ]);
    }
}
?>
