CREATE TABLE alunos (
    meninas INT PRIMARY KEY, 
   meninos VARCHAR(100) NOT NULL,
    total_de_alunos DECIMAL(10, 2) NOT NULL,
    salas_de_aula TEXT
);
SELECT * FROM alunos; 
