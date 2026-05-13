<?php
header('Content-Type: application/json');

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

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $roomCode = $_POST['room_code'];
    $username = $_POST['username'];
    $role = $_POST['role'];

    // Check if room table exists
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
        
        // Create the room automatically
        $stmt = $conn->prepare("INSERT INTO rooms (room_code, created_by) VALUES (?, ?)");
        $stmt->bind_param("ss", $roomCode, $username);
        $stmt->execute();
    } else {
        // Check if room exists
        $check = $conn->prepare("SELECT * FROM rooms WHERE room_code = ?");
        $check->bind_param("s", $roomCode);
        $check->execute();
        $result = $check->get_result();

        if ($result->num_rows === 0) {
            // Room doesn't exist, create it
            $stmt = $conn->prepare("INSERT INTO rooms (room_code, created_by) VALUES (?, ?)");
            $stmt->bind_param("ss", $roomCode, $username);
            
            if (!$stmt->execute()) {
                echo json_encode([
                    "success" => false,
                    "message" => "Failed to create room: " . $conn->error
                ]);
                exit;
            }
        }
    }

    // Check if players table exists
    $tableExists = false;
    $result = $conn->query("SHOW TABLES LIKE 'players'");
    if ($result && $result->num_rows > 0) {
        $tableExists = true;
    }
    
    if (!$tableExists) {
        // Create players table if it doesn't exist
        $createTable = "CREATE TABLE `players` (
            `id` int(11) NOT NULL AUTO_INCREMENT,
            `room_code` varchar(10) NOT NULL,
            `username` varchar(50) NOT NULL,
            `avatar_url` text NOT NULL,
            `role` enum('teacher','student') NOT NULL,
            `joined_at` timestamp NOT NULL DEFAULT current_timestamp(),
            PRIMARY KEY (`id`),
            KEY `room_code` (`room_code`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;";
        
        if (!$conn->query($createTable)) {
            echo json_encode([
                "success" => false,
                "message" => "Failed to create players table: " . $conn->error
            ]);
            exit;
        }
    }
    
    // Save player into players table
    $stmt = $conn->prepare("INSERT INTO players (room_code, username, avatar_url, role) VALUES (?, ?, ?, ?)");
    $avatar = $_POST['avatar_url'] ?? '';
    $stmt->bind_param("ssss", $roomCode, $username, $avatar, $role);

    if ($stmt->execute()) {
        echo json_encode([
            "success" => true,
            "message" => "Joined successfully!",
            "room_code" => $roomCode,
            "role" => $role
        ]);
    } else {
        echo json_encode([
            "success" => false,
            "message" => "Failed to join."
        ]);
    }
}
?>
