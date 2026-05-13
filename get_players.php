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

// ✅ Fetch players for this room
$sql = "SELECT p.username, p.avatar_url, p.role,
        COALESCE(
          (SELECT COUNT(*) FROM player_picks 
           WHERE username = p.username AND room_code = p.room_code AND category = 'Money'), 0
        ) AS money_score,
        COALESCE(
          (SELECT COUNT(*) FROM player_picks 
           WHERE username = p.username AND room_code = p.room_code AND category = 'Joker'), 0
        ) AS joker_score,
        COALESCE(
          (SELECT COUNT(*) FROM player_picks 
           WHERE username = p.username AND room_code = p.room_code AND category = 'Gift'), 0
        ) AS gift_score,
        COALESCE(
          (SELECT COUNT(*) FROM player_picks 
           WHERE username = p.username AND room_code = p.room_code AND category = 'Task'), 0
        ) AS task_score
        FROM players p WHERE p.room_code = ? ORDER BY p.id ASC LIMIT 100";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $room_code);
$stmt->execute();
$result = $stmt->get_result();

$players = [];
while ($row = $result->fetch_assoc()) {
  $players[] = [
    "username" => $row["username"],
    "avatar_url" => $row["avatar_url"],
    "role" => $row["role"],
    "scores" => [
      "Money" => (int)$row["money_score"],
      "Joker" => (int)$row["joker_score"],
      "Gift" => (int)$row["gift_score"],
      "Task" => (int)$row["task_score"],
    ]
  ];
}

echo json_encode([
  "success" => true,
  "players" => $players
]);

$conn->close();
?>
