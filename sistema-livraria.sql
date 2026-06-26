-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) UNIQUE
);

-- Criação da tabela Compras
CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClienteID INTEGER NOT NULL,
    NomeLivro VARCHAR(150) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

SELECT * FROM Clientes; 


-- Inserindo clientes
INSERT INTO Clientes (nomeCliente, emailCliente)
VALUES 
    ('Ana Silva', 'ana.silva@email.com'),
    ('Carlos Souza', 'carlos.souza@email.com'),
    ('Mariana Oliveira', 'mariana.oliveira@email.com'),
    ('João Pereira', 'joao.pereira@email.com');

-- Inserindo compras
INSERT INTO Compras (ClienteID, NomeLivro)
VALUES 
    (1, 'Dom Casmurro'),
    (2, 'O Pequeno Príncipe'),
    (1, '1984'),
    (3, 'A Revolução dos Bichos'),
    (4, 'Memórias Póstumas de Brás Cubas');


-- Inserindo clientes
INSERT INTO Clientes (nomeCliente, emailCliente)
VALUES 
    ('Ana Silva', 'ana.silva@email.com'),
    ('Carlos Souza', 'carlos.souza@email.com'),
    ('Mariana Oliveira', 'mariana.oliveira@email.com'),
    ('João Pereira', 'joao.pereira@email.com');

-- Inserindo compras
INSERT INTO Compras (ClienteID, NomeLivro)
VALUES 
    (1, 'Dom Casmurro'),
    (2, 'O Pequeno Príncipe'),
    (1, '1984'),
    (3, 'A Revolução dos Bichos'),
    (4, 'Memórias Póstumas de Brás Cubas');

