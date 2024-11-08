CREATE DATABASE bd_atvformativa;

CREATE TABLE Universidade (
    id_uni INTEGER PRIMARY KEY auto_increment,
    nome VARCHAR(255) not null,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);

CREATE TABLE Estudante (
    id_estudante INTEGER PRIMARY KEY auto_increment,
    nome VARCHAR(255) not null,
    telefone VARCHAR(20),
    rua VARCHAR(255),
    cep VARCHAR(255),
    bairro VARCHAR(255),
    id_uni INTEGER,
    FOREIGN KEY (id_uni) REFERENCES Universidade(id_uni)
);
-- ---------------------------------------------------------
INSERT INTO Universidade (nome, telefone, endereco) VALUES 
	('Universidade Estadual Paulista', '15-1234-5678', 'Rua das Universidades, 100 - Itapetininga'),
	('Universidade Federal de São Paulo', '15-2345-6789', 'Avenida dos Estudantes, 200 - Itapetininga'),
	('Universidade de Itapetininga', '15-3456-7890', 'Rua Central, 50 - Itapetininga'),
	('Centro Universitário de Itapetininga', '15-4567-8901', 'Praça Universitária, 10 - Itapetininga'),
	('Instituto Tecnológico de Itapetininga', '15-5678-9012', 'Avenida do Saber, 300 - Itapetininga');

INSERT INTO Estudante (nome, telefone, rua, cep, bairro, id_uni) VALUES
	('Caio', '15-1111-2222', 'Rua A', '18200-000', 'Centro', 1),
	('Fellipe', '15-2222-3333', 'Rua B', '18200-001', 'Centro', 2),
	('Julio', '15-3333-4444', 'Rua C', '18200-002', 'Centro', 3),
	('Nicolle', '15-4444-5555', 'Rua D', '18200-003', 'Centro', 4),
	('Rudrian', '15-5555-6666', 'Rua E', '18200-004', 'Centro', 5);
    
-- -------------------------------------------------------
    
-- Consultar todas as universidades
SELECT * FROM Universidade;

-- Consultar todos os estudantes
SELECT * FROM Estudante;

-- Alterar o nome do primeiro estudante
UPDATE Estudante
SET nome = 'Edson'
WHERE id_estudante = 1;

-- Alterar o nome da terceira universidade
UPDATE Universidade
SET nome = 'Universidade Ultra Itapetininga'
WHERE id_uni = 3;

-- Excluir o quinto estudante
DELETE FROM Estudante
WHERE id_estudante = 5;

-- Listar Universidades com as Informações dos Estudantes (JOIN)
SELECT Universidade.id_uni, Universidade.nome AS nome_universidade, Universidade.telefone AS telefone_universidade, 
       Universidade.endereco, Estudante.id_estudante, Estudante.nome AS nome_estudante, 
       Estudante.telefone AS telefone_estudante, Estudante.rua, Estudante.cep, Estudante.bairro
FROM Universidade
LEFT JOIN Estudante ON Universidade.id_uni = Estudante.id_uni;

-- Criar uma VIEW com o JOIN anterior
CREATE VIEW vw_UniversidadeEstudante AS
SELECT Universidade.id_uni, Universidade.nome AS nome_universidade, Universidade.telefone AS telefone_universidade, 
       Universidade.endereco, Estudante.id_estudante, Estudante.nome AS nome_estudante, 
       Estudante.telefone AS telefone_estudante, Estudante.rua, Estudante.cep, Estudante.bairro
FROM Universidade
LEFT JOIN Estudante ON Universidade.id_uni = Estudante.id_uni;


select * from vw_UniversidadeEstudante; 



