create database bd_formativaV2;

-- Criação da tabela Aeronave
CREATE TABLE Aeronave (
	id_nave INT PRIMARY KEY auto_increment,
    nome VARCHAR (255) NOT NULL,
    comunicador VARCHAR(255),
    destino VARCHAR(255)
);

CREATE TABLE Passageiro (
	id_pass INT PRIMARY KEY auto_increment,
    nome VARCHAR (255) NOT NULL,
    telefone VARCHAR(255),
    endereco VARCHAR(255),
    id_nave INT,
    FOREIGN KEY (id_nave) references Aeronave(id_nave)
);

INSERT INTO Aeronave(nome, comunicador, destino) VALUES
	("Airbus A320", "Comunicador Alfa", "Paris"),
	("Boeing 737", "Comunicador Beta", "Nova York"),
	("Embraer E195", "Comunicador Gama", "Londres"),
	("Airbus A380", "Comunicador Delta", "Tóquio");

INSERT INTO Passageiro(nome, telefone, endereco, id_nave) VALUES
	("Carlos Silva", "123-456-7890", "Rua A, 123", 1),
	("Maria Oliveira", "987-654-3210", "Rua B, 456", 1),
	("José Santos", "555-123-4567", "Rua C, 789", 2),
	("Ana Pereira", "444-987-6543", "Rua D, 101", 3);
    
    select * from Aeronave;
    select * from Passageiro;
    
    UPDATE Passageiro
    SET nome = "Alberto Roberto"
    WHERE id_pass = 1;
    
	UPDATE Aeronave
    SET nome = "Andromeda 90000"
    WHERE id_nave = 1;
    
    DELETE from Aeronave
    WHERE id_nave = 5;
    -- -----------------------------
    CREATE view vw_passageiros_voar AS 
	select 
    Passageiro.nome as Nome_Passageiro,
    Aeronave.nome as Nome_Aeronave,
    Aeronave.destino as Destino_Aeronave
    from
		Passageiro
    inner join
		Aeronave ON Passageiro.id_nave = aeronave.id_nave;   
        
    -- -----------------------------
