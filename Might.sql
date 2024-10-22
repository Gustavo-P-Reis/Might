CREATE DATABASE SteamCloneDB;
GO

USE SteamCloneDB;
GO

-- Usuários
CREATE TABLE Usuario (
    IdUsuario INT IDENTITY PRIMARY KEY NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(500) NOT NULL UNIQUE,
    Senha VARCHAR(7) NOT NULL,
    DataCadastro DATETIME NOT NULL DEFAULT GETDATE()
);


CREATE TABLE Categoria (
    IdCategoria INT IDENTITY PRIMARY KEY NOT NULL,
    Teme VARCHAR(100) NOT NULL
);

-- Jogos
CREATE TABLE Jogo (
    IdJogo INT IDENTITY PRIMARY KEY NOT NULL,
    Jogo VARCHAR(200) NOT NULL,
    Descriçao TEXT NOT NULL,
    Desenvolvedor VARCHAR(100) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    DataLancamento DATE NOT NULL
);


CREATE TABLE JogoCategoria (
    IdJogoCategoria INT IDENTITY PRIMARY KEY NOT NULL,
    IdJogo INT NOT NULL FOREIGN KEY REFERENCES Jogo(IdJogo),
    IdCategoria INT NOT NULL FOREIGN KEY REFERENCES Categoria(IdCategoria)
);

-- Compras
CREATE TABLE Compra (
    IdCompra INT IDENTITY PRIMARY KEY NOT NULL,
    IdUsuario INT NOT NULL FOREIGN KEY REFERENCES Usuario(IdUsuario),
    IdJogo INT NOT NULL FOREIGN KEY REFERENCES Jogo(IdJogo),
    DataCompra DATETIME NOT NULL DEFAULT GETDATE(),
    PrecoPago DECIMAL(10, 2) NOT NULL
);

-- usuários
INSERT INTO Usuario (Nome, Email, Senha)
VALUES 
('Matheus Silva', 'matheus.silva@exemplo.com', 'senha12'),
('Lucas Pereira', 'lucas.pereira@exemplo.com', 'senha23'),
('Ana Souza', 'ana.souza@exemplo.com', 'senha34'),
('Carlos Oliveira', 'carlos.oliveira@exemplo.com', 'senha45'),
('Mariana Lima', 'mariana.lima@exemplo.com', 'senha56');

-- temas dos jogos
INSERT INTO Categoria (Teme)
VALUES 
('Ação'), 
('Aventura'), 
('RPG'), 
('Simulação'), 
('Estratégia'), 
('Puzzle'), 
('Tiro em Primeira Pessoa'), 
('Horror'), 
('Esporte');

--  jogos do Might
INSERT INTO Jogo (Jogo, Descriçao, Desenvolvedor, Preco, DataLancamento)
VALUES 
('Cyber Battle', 'Um jogo de ação frenético no futuro', 'FutureGames', 59.99, '2023-03-15'),
('Fantasy Quest', 'Um RPG mágico em um mundo de fantasia', 'Magic Studios', 49.99, '2023-05-10'),
('Space Simulator', 'Simulador de exploração espacial realista', 'GalaxySoft', 39.99, '2022-11-22'),
CREATE DATABASE SteamCloneDB;
GO

USE SteamCloneDB;
GO

-- Usuários
CREATE TABLE Usuario (
    IdUsuario INT IDENTITY PRIMARY KEY NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(500) NOT NULL UNIQUE,
    Senha VARCHAR(7) NOT NULL,
    DataCadastro DATETIME NOT NULL DEFAULT GETDATE()
);


CREATE TABLE Categoria (
    IdCategoria INT IDENTITY PRIMARY KEY NOT NULL,
    Teme VARCHAR(100) NOT NULL
);

-- Jogos
CREATE TABLE Jogo (
    IdJogo INT IDENTITY PRIMARY KEY NOT NULL,
    Jogo VARCHAR(200) NOT NULL,
    Descriçao TEXT NOT NULL,
    Desenvolvedor VARCHAR(100) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    DataLancamento DATE NOT NULL
);


CREATE TABLE JogoCategoria (
    IdJogoCategoria INT IDENTITY PRIMARY KEY NOT NULL,
    IdJogo INT NOT NULL FOREIGN KEY REFERENCES Jogo(IdJogo),
    IdCategoria INT NOT NULL FOREIGN KEY REFERENCES Categoria(IdCategoria)
);

-- Compras
CREATE TABLE Compra (
    IdCompra INT IDENTITY PRIMARY KEY NOT NULL,
    IdUsuario INT NOT NULL FOREIGN KEY REFERENCES Usuario(IdUsuario),
    IdJogo INT NOT NULL FOREIGN KEY REFERENCES Jogo(IdJogo),
    DataCompra DATETIME NOT NULL DEFAULT GETDATE(),
    PrecoPago DECIMAL(10, 2) NOT NULL
);

-- usuários
INSERT INTO Usuario (Nome, Email, Senha)
VALUES 
('Matheus Silva', 'matheus.silva@exemplo.com', 'senha12'),
('Lucas Pereira', 'lucas.pereira@exemplo.com', 'senha23'),
('Ana Souza', 'ana.souza@exemplo.com', 'senha34'),
('Carlos Oliveira', 'carlos.oliveira@exemplo.com', 'senha45'),
('Mariana Lima', 'mariana.lima@exemplo.com', 'senha56');

-- temas dos jogos
INSERT INTO Categoria (Teme)
VALUES 
('Ação'), 
('Aventura'), 
('RPG'), 
('Simulação'), 
('Estratégia'), 
('Puzzle'), 
('Tiro em Primeira Pessoa'), 
('Horror'), 
('Esporte');

--  jogos do Might
INSERT INTO Jogo (Jogo, Descriçao, Desenvolvedor, Preco, DataLancamento)
VALUES 
('Cyber Battle', 'Um jogo de ação frenético no futuro', 'FutureGames', 59.99, '2023-03-15'),
('Fantasy Quest', 'Um RPG mágico em um mundo de fantasia', 'Magic Studios', 49.99, '2023-05-10'),
('Space Simulator', 'Simulador de exploração espacial realista', 'GalaxySoft', 39.99, '2022-11-22'),
('Puzzle Mania', 'Desafie sua mente com quebra-cabeças incríveis', 'BrainGames', 29.99, '2023-01-10'),
('Zombie Shooter', 'Sobreviva em um mundo pós-apocalíptico cheio de zumbis', 'KillerGames', 49.99, '2023-08-20'),
('Sports Champion', 'Competição em vários esportes', 'GameSport', 39.99, '2023-07-15'),
('Horror House', 'Uma experiência aterrorizante em uma casa assombrada', 'SpookyDev', 44.99, '2024-01-05');

-- jogo e as categorias
INSERT INTO JogoCategoria (IdJogo, IdCategoria)
VALUES 
(1, 1), 
(2, 3),  
(3, 4),  
(4, 5),  
(5, 2),  
(6, 3),  
(7, 1);  

--  compras
INSERT INTO Compra (IdUsuario, IdJogo, PrecoPago)
VALUES 
(1, 2, 49.99), 
(2, 1, 29.99), 
(3, 5, 49.99),  
(4, 7, 44.99),  
(1, 3, 39.99);  

-- os dados inseridos
SELECT * FROM Usuario;
SELECT * FROM Categoria;
SELECT * FROM Jogo;
SELECT * FROM JogoCategoria;
SELECT * FROM Compra;