<?php
$servername = "sql300.infinityfree.com";
$username = "if0_39858511";
$password = "ccccAgVUGgQcpNI";
$dbname = "if0_39858511_treasure_hunt";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die(json_encode(["success" => false, "error" => "DB connection failed."]));
}

$room_code = $_GET['room_code'] ?? '';

if (empty($room_code)) {
  echo json_encode(["success" => false, "error" => "Missing room code."]);
  exit;
}

// ✅ Fetch picks for this room
$sql = "SELECT p.username, p.box_number, p.category, pl.avatar_url 
        FROM player_picks p 
        LEFT JOIN players pl ON p.username = pl.username AND p.room_code = pl.room_code 
        WHERE p.room_code = ? 
        ORDER BY p.id ASC";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $room_code);
$stmt->execute();
$result = $stmt->get_result();

$picks = [];
while ($row = $result->fetch_assoc()) {
  $picks[] = [
    "username" => $row["username"],
    "box_number" => $row["box_number"],
    "category" => $row["category"],
    "avatar_url" => $row["avatar_url"]
  ];
}

echo json_encode([
  "success" => true,
  "picks" => $picks
]);

$conn->close();
?>
