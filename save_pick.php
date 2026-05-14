<?php
header('Content-Type: application/json');

$servername = "localhost";
$username = "u331876870_gamehub";
$password = "7262143@Sana";
$dbname = "u331876870_gamehub";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  echo json_encode([
    "success" => false,
    "message" => "DB connection failed"
  ]);
  exit;
}

$room_code = $_POST['room_code'] ?? '';
$username = $_POST['username'] ?? '';
$box_number = $_POST['box_number'] ?? '';
$category = $_POST['category'] ?? '';
$avatar_url = $_POST['avatar_url'] ?? '';

if (!$room_code || !$username || !$box_number) {
  echo json_encode([
    "success" => false,
    "message" => "Missing required fields"
  ]);
  exit;
}

/*
  OPTIONAL SAFETY:
  prevent same box double pick
*/
$check = $conn->prepare("SELECT id FROM player_picks WHERE room_code=? AND box_number=?");
$check->bind_param("si", $room_code, $box_number);
$check->execute();
$res = $check->get_result();

if ($res->num_rows > 0) {
  echo json_encode([
    "success" => false,
    "message" => "Box already picked"
  ]);
  exit;
}

/*
  Insert pick
*/
$stmt = $conn->prepare("
  INSERT INTO player_picks (room_code, username, box_number, category)
  VALUES (?, ?, ?, ?)
");

$stmt->bind_param("ssis", $room_code, $username, $box_number, $category);

if ($stmt->execute()) {
  echo json_encode([
    "success" => true,
    "message" => "Pick saved successfully"
  ]);
} else {
  echo json_encode([
    "success" => false,
    "message" => "Insert failed"
  ]);
}

$conn->close();
?>
