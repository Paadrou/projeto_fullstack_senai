CREATE DATABASE senai;

USE senai;

CREATE TABLE usuario(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT,
    email VARCHAR(255),
    senha VARCHAR(255)
);

CREATE TABLE lgs(
	id INT PRIMARY KEY AUTO_INCREMENT,
    categoria TEXT,
    horas_trabalhadas INT,
    linha_codigo INT,
    bugs_corrigidos INT
);

INSERT INTO lgs(categoria, horas_trabalhadas, linha_codigo, bugs_corrigidos) VALUE
('progamação', 10, 465, 12),
('progamação', 122, 12, 67),
('progamação', 6, 67, 924);

SELECT * FROM lgs;

INSERT INTO usuario(nome, idade, email, senha) VALUES
('Ronaldo', 67, 'mangos@tufos.com', 'ronaldo123')