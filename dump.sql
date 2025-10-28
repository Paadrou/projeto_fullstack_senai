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

INSERT INTO lgs (categoria, horas_trabalhadas, linhas_codigo, bugs_corrigidos, id_user, descricao) VALUES 
('Desenvolvimento de Gameplay', 22, 1850, 2, 1, 'Implementação de novas mecânicas de combate e ajustes no sistema de física para melhorar a fluidez dos movimentos.'),
('Arte e Design', 30, 45, 0, 1, 'Criação de novos conceitos visuais e polimento das texturas do ambiente, garantindo uma estética mais consistente com o tema do jogo.'),
('Correção de Bugs', 8, 90, 7, 1, 'Correção de falhas críticas relacionadas à IA dos inimigos e otimização de scripts duplicados que causavam travamentos.'),
('Otimização', 16, 450, 1, 1, 'Aprimoramento do desempenho em áreas com múltiplos NPCs, reduzindo o tempo de carregamento e melhorando a taxa de quadros por segundo.'),
('Desenvolvimento de UI/UX', 12, 680, 3, 1, 'Refatoração da interface principal, melhorando a navegação e tornando o menu de opções mais intuitivo para o jogador.'),
('Sonoplastia', 10, 5, 0, 1, 'Mixagem e equalização dos efeitos sonoros de ambiente, além de pequenas melhorias nas trilhas dinâmicas do jogo.'),
('Roteiro e Narrativa', 18, 10, 0, 1, 'Revisão de diálogos e ajustes na progressão narrativa para garantir uma melhor imersão e coerência entre os capítulos.'),
('Desenvolvimento de Gameplay', 40, 2500, 4, 1, 'Implementação de novo sistema de progressão de habilidades e ajustes no comportamento dos chefes para aumentar a dificuldade.'),
('Correção de Bugs', 5, 55, 5, 1, 'Correção de falhas em eventos aleatórios e pequenos glitches de colisão em algumas áreas do mapa.'),
('Arte e Design', 25, 30, 1, 1, 'Criação de novos ícones de inventário e revisão da iluminação em interiores para maior contraste e legibilidade.'),
('Desenvolvimento de Gameplay', 35, 2100, 3, 1, 'Ajustes no sistema de inventário e balanceamento de armas para manter a experiência de combate mais justa e desafiadora.'),
('Otimização', 20, 600, 2, 1, 'Melhoria do desempenho do sistema de partículas e atualização da engine para versão mais estável.'),
('Correção de Bugs', 12, 150, 11, 1, 'Eliminação de bugs no sistema de salvamento e ajustes em triggers que causavam quedas inesperadas.'),
('Desenvolvimento de UI/UX', 9, 450, 2, 1, 'Aprimoramento do layout de inventário e adição de feedback visual para ações importantes do jogador.'),
('Sonoplastia', 7, 0, 0, 1, 'Criação de novos efeitos de som para armas e melhorias na mixagem geral do jogo.'),
('Arte e Design', 33, 60, 0, 1, 'Aprimoramento das animações de personagens secundários e novos efeitos visuais para habilidades especiais.'),
('Roteiro e Narrativa', 24, 15, 0, 1, 'Expansão do arco narrativo principal e revisão de falas para torná-las mais naturais e coesas.'),
('Desenvolvimento de Gameplay', 28, 1950, 1, 1, 'Implementação de um novo sistema de física de objetos e testes de colisão com múltiplas superfícies.'),
('Correção de Bugs', 6, 75, 6, 1, 'Correção de falhas em scripts de spawn de inimigos e ajuste em erros de interface após atualizações.'),
('Otimização', 25, 800, 3, 1, 'Reestruturação do carregamento de assets para reduzir uso de memória e melhorar o desempenho em dispositivos mais fracos.');

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