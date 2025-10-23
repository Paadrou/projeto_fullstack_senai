CREATE DATABASE devhub;

USE devhub;

CREATE TABLE `user`(
    id_user INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT,
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(100)
);

CREATE TABLE lgs(
	id_lgs INT PRIMARY KEY AUTO_INCREMENT,
	categoria TEXT,
    horas_trabalhadas INT,
    linhas_codigo INT,
    bugs_corrigidos INT,
    id_user INT,
    
    FOREIGN KEY (id_user)
    REFERENCES user (id_user)
);

CREATE TABLE `like`(
id_like INT PRIMARY KEY AUTO_INCREMENT,

    id_lgs INT,
    FOREIGN KEY (id_lgs)
    REFERENCES lgs(id_lgs),
    
    id_user INT,
    FOREIGN KEY (id_user)
    REFERENCES `user`(id_user)
);

CREATE TABLE `comment` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    message VARCHAR(255),
	id_lgs INT,
    FOREIGN KEY (id_lgs)
    REFERENCES lgs(id_lgs),
    
    id_user INT,
    FOREIGN KEY (id_user)
    REFERENCES `user`(id_user)
);

INSERT INTO `user`(nome, idade, email, senha) VALUE 
('ronaldo', 67, 'chickenstars@mangos.com', '2567'),
('ronaldus', 76, 'exemplo@gmail.com', '1234'),
('jorge', 30, 'exempo@gmail.com', '1234');

INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Desenvolvimento de Gameplay', 22, 1850, 2);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Arte e Design', 30, 45, 0);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Correção de Bugs', 8, 90, 7);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Otimização', 16, 450, 1);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Desenvolvimento de UI/UX', 12, 680, 3);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Sonoplastia', 10, 5, 0);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Roteiro e Narrativa', 18, 10, 0);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Desenvolvimento de Gameplay', 40, 2500, 4);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Correção de Bugs', 5, 55, 5);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Arte e Design', 25, 30, 1);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Desenvolvimento de Gameplay', 35, 2100, 3);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Otimização', 20, 600, 2);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Correção de Bugs', 12, 150, 11);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Desenvolvimento de UI/UX', 9, 450, 2);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Sonoplastia', 7, 0, 0);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Arte e Design', 33, 60, 0);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Roteiro e Narrativa', 24, 15, 0);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Desenvolvimento de Gameplay', 28, 1950, 1);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Correção de Bugs', 6, 75, 6);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Otimização', 25, 800, 3);

INSERT INTO `comment` (message, id_lgs, id_user) VALUE 
('UAU esse video é muito tufo LOL', 1, 1),
('UAU esse video é muito tufo LOL', 1, 1),
('UAU esse video é muito tufo LOL', 1, 1),
('UAU esse video é muito tufo LOL', 1, 1);

INSERT INTO `like` (id_lgs, id_user) VALUES
(1, 1);

INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Desenvolvimento de Gameplay', 19, 1500, 2);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Arte e Design', 40, 80, 1);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Correção de Bugs', 10, 120, 9);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Desenvolvimento de UI/UX', 15, 800, 4);
INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos) VALUES ('Sonoplastia', 14, 10, 0);