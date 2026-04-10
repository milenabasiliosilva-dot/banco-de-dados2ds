CREATE TABLE produto (
    cod_produto INTEGER PRIMARY KEY AUTOINCREMENT,
    valor DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL
);

CREATE TABLE farmacia (
    id_farmacia INTEGER PRIMARY KEY AUTOINCREMENT,
    cnpj TEXT UNIQUE NOT NULL,
    nome TEXT NOT NULL,
    telefone TEXT,
    id_produto INT,
    FOREIGN KEY (id_produto) REFERENCES produto (cod_produto)
);

CREATE TABLE farmaceutico (
    id_farmaceutico INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    rg TEXT UNIQUE NOT NULL,
    id_farmacia INT,
    FOREIGN KEY (id_farmacia) REFERENCES farmacia (id_farmacia)
);
