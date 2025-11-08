
-- Devices table
CREATE TABLE devices_2040 (
    device_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    ai_level INTEGER NOT NULL,
    room TEXT NOT NULL,
    status TEXT NOT NULL
);

-- Biometric inputs table
CREATE TABLE bio_inputs (
    bio_id INTEGER PRIMARY KEY,
    device_id INTEGER,
    heart_rate INTEGER,
    stress_index INTEGER,
    neural_sync REAL,
    timestamp DATETIME,
    FOREIGN KEY (device_id) REFERENCES devices_2040(device_id)
);

-- Environment states table
CREATE TABLE environment_states (
    state_id INTEGER PRIMARY KEY,
    room TEXT,
    light_level INTEGER,
    temperature REAL,
    hologram_mode TEXT,
    timestamp DATETIME
);

-- AI decisions table
CREATE TABLE ai_decisions (
    decision_id INTEGER PRIMARY KEY,
    device_id INTEGER,
    action TEXT,
    reason TEXT,
    timestamp DATETIME,
    FOREIGN KEY (device_id) REFERENCES devices_2040(device_id)
);
