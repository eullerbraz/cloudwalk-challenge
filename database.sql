DROP DATABASE IF EXISTS cloudwalk_challenge;

CREATE DATABASE cloudwalk_challenge;

CREATE TABLE cloudwalk_challenge.clientes(
	user_id INT AUTO_INCREMENT PRIMARY KEY,
    cnpj VARCHAR(20),
    nome_do_cliente VARCHAR(255)
);

CREATE TABLE cloudwalk_challenge.status(
	user_id INT,
    status VARCHAR(50),
    data_horario_do_status TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, status),
    FOREIGN KEY (user_id)
		REFERENCES clientes(user_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);