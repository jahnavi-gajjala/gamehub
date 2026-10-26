<?php
function gamehub_db(): mysqli {
    $host = getenv('DB_HOST') ?: 'localhost';
    $port = (int) (getenv('DB_PORT') ?: 3306);
    $user = getenv('DB_USERNAME') ?: 'root';
    $password = getenv('DB_PASSWORD') ?: '';
    $database = getenv('DB_NAME') ?: 'defaultdb';
    $conn = mysqli_init();
    mysqli_ssl_set($conn, null, null, getenv('DB_SSL_CA') ?: null, null, null);
    if (!mysqli_real_connect($conn, $host, $user, $password, $database, $port, null, MYSQLI_CLIENT_SSL)) {
        http_response_code(500);
        exit('Database connection failed.');
    }
    $conn->set_charset('utf8mb4');
    $conn->query("CREATE TABLE IF NOT EXISTS rooms (room_code VARCHAR(10) PRIMARY KEY, created_by VARCHAR(50) NOT NULL, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP)");
    $conn->query("CREATE TABLE IF NOT EXISTS players (id INT AUTO_INCREMENT PRIMARY KEY, room_code VARCHAR(10) NOT NULL, username VARCHAR(50) NOT NULL, avatar_url TEXT NOT NULL, role ENUM('teacher','student') NOT NULL, joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP)");
    $conn->query("CREATE TABLE IF NOT EXISTS player_picks (id INT AUTO_INCREMENT PRIMARY KEY, room_code VARCHAR(10) NOT NULL, username VARCHAR(50) NOT NULL, box_number INT NOT NULL, category VARCHAR(50) NOT NULL, picked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP)");
    return $conn;
}
