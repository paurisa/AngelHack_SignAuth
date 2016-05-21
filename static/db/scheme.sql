CREATE TABLE IF NOT EXISTS users (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(50),
	mail VARCHAR(50) UNIQUE,
	password VARCHAR(16),
	image_id INTEGER UNIQUE AUTOINCREMENT
);

CREATE TABLE IF NOT EXISTS log (
	id INTEGER,
	date_time DATETIME,
	organization VARCHAR(50),
	accepted BOOLEAN,
	PRIMARY KEY(id, date_time),
	FOREIGN KEY(id) REFERENCES users(id)
);