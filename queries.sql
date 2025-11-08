
-- Top AI devices by intelligence
SELECT name, ai_level
FROM devices_2040
ORDER BY ai_level DESC;

-- Rooms with high stress readings
SELECT b.timestamp, d.name, b.stress_index
FROM bio_inputs b
JOIN devices_2040 d ON b.device_id = d.device_id
WHERE b.stress_index > 70
ORDER BY b.timestamp DESC;

-- AI actions triggered by high stress
SELECT a.action, a.reason, b.stress_index
FROM ai_decisions a
JOIN bio_inputs b ON a.device_id = b.device_id
WHERE b.stress_index > 70;

-- Average temperature per room
SELECT room, AVG(temperature) AS avg_temp
FROM environment_states
GROUP BY room;
