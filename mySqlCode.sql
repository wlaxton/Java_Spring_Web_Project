CREATE DATABASE IF NOT EXISTS login_register;

CREATE TABLE users (user_id INT AUTO_INCREMENT, user_name VARCHAR(20), user_password VARCHAR(20), PRIMARY KEY(user_id));
CREATE TABLE user_address (address_id INT AUTO_INCREMENT, street1 VARCHAR(20), street2 VARCHAR(20), city VARCHAR(20), state VARCHAR(20), zip VARCHAR(20), PRIMARY KEY(address_id));


INSERT INTO users(user_id, user_name, user_password) VALUES (1, 'laxton3', 'passwords');

INSERT INTO user_address(address_id, street1, street2, city, state, zip) VALUES (1, '123main str', '123main rd', 'St. Louis', 'Missouri', '63129')