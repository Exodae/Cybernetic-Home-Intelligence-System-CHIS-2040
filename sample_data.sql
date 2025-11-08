
-- Sample Devices
INSERT INTO devices_2040 VALUES
(1, 'NeuroLink Hub', 'NeuralLink', 9, 'Living Room', 'active'),
(2, 'HoloDisplay XL', 'HoloDisplay', 7, 'Bedroom', 'standby'),
(3, 'BioSensor Drone', 'BioSensor', 8, 'Kitchen', 'active'),
(4, 'AI Butler', 'Drone', 10, 'Hallway', 'active');

-- Sample Biometric Logs
INSERT INTO bio_inputs VALUES
(1, 1, 72, 45, 0.85, '2040-03-12 08:00:00'),
(2, 3, 88, 75, 0.92, '2040-03-12 08:05:00'),
(3, 1, 65, 30, 0.80, '2040-03-12 09:00:00');

-- Sample Environment States
INSERT INTO environment_states VALUES
(1, 'Living Room', 80, 21.5, 'ambient', '2040-03-12 08:00:00'),
(2, 'Bedroom', 40, 19.0, 'message', '2040-03-12 08:05:00'),
(3, 'Kitchen', 90, 22.3, 'alert', '2040-03-12 08:10:00');

-- Sample AI Decisions
INSERT INTO ai_decisions VALUES
(1, 1, 'Increase neural sync', 'User stress high', '2040-03-12 08:06:00'),
(2, 2, 'Dim lights', 'User sleeping', '2040-03-12 08:10:00'),
(3, 3, 'Deploy bio-drone', 'Detect high heart rate', '2040-03-12 08:12:00');
