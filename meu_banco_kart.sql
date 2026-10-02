CREATE DATABASE kart_gt_bd;
USE kart_gt_bd;

CREATE TABLE baterias(
id_bateria INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
valor DECIMAL (8, 2) NOT NULL,
duracao_minutos INT NOT NULL
);

CREATE TABLE pilotos(
id_piloto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
cpf VARCHAR (14) UNIQUE NOT NULL,
telefone VARCHAR (20),
data_nascimneto DATE NOT NULL
);

CREATE TABLE karts(
id_kart INT AUTO_INCREMENT PRIMARY KEY,
numero INT NOT NULL UNIQUE,
categoria VARCHAR(50) NOT NULL,
potencia_hp VARCHAR (20)
);

CREATE TABLE reservas(
id_reserva INT AUTO_INCREMENT PRIMARY KEY,
id_piloto INT NOT NULL,
id_bateria INT NOT NULL,
id_kart INT,
data_corrida DATE DEFAULT (CURRENT_DATE),
status VARCHAR(20) DEFAULT 'Confirmada',
FOREIGN KEY (id_piloto) REFERENCES pilotos(id_piloto),
FOREIGN KEY (id_bateria) REFERENCES baterias(id_bateria),
FOREIGN KEY (id_kart) REFERENCES karts(id_kart)
);