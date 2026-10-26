<?php
require __DIR__ . '/database.php';
$conn = gamehub_db();

$room_code = $_GET['room_code'] ?? '';

if (empty($room_code)) {
  echo json_encode(["success" => false, "error" => "Missing room code."]);
  exit;
}

// ✅ Fetch players for this room
$sql = "SELECT username, avatar_url, role FROM players WHERE room_code = ? ORDER BY id ASC LIMIT 100";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $room_code);
$stmt->execute();
$result = $stmt->get_result();



$players = [];
while ($row = $result->fetch_assoc()) {


  $players[] = [
    "username"   => $row["username"],
    "avatar_url" => $row["avatar_url"],
    "role"       => $row["role"]
  ];
}

echo json_encode([
  "success" => true,
  "players" => $players
]);

$conn->close();
?>
