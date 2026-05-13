-- Create the player_picks table
CREATE TABLE `player_picks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_code` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `box_number` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `picked_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `room_code` (`room_code`),
  KEY `username` (`username`),
  CONSTRAINT `player_picks_ibfk_1` FOREIGN KEY (`room_code`) REFERENCES `rooms` (`room_code`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
