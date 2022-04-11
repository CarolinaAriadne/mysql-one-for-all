DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;


CREATE TABLE SpotifyClone.dados_usuario(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR (50) NOT NULL,
    idade_usuario INT NOT NULL(3)
) engine = InnoDB;

CREATE TABLE SpotifyClone.plano(
    usuario_id INT,
    id_plano INT PRIMARY KEY AUTO_INCREMENT,
    nome_plano VARCHAR (20) NOT NULL,
    valor_plano FLOAT NOT NULL,
    data_assinatura VARCHAR (20),
    FOREIGN KEY (usario_id) REFERENCES dados_usuario (usuario_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artista(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR (50) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_album VARCHAR (50) NOT NULL,
    ano_lancamento INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.musicas(
id_musica INT PRIMARY KEY AUTO_INCREMENT,
nome_musica VARCHAR (50) NOT NULL,
duracao_segundos INT NOT NULL
) 

CREATE TABLE SpotifyClone.historico_reproducoes(
    usuario_id INT NOT NULL,
    nome_musica VARCHAR (50) NOT NULL,
    data_reproducao VARCHAR (20) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES dados_usuario (usuario_id),
    FOREIGN KEY (nome_musica) REFERENCES musicas (nome_musica)
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuario_segue_artistas(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES dados_usuario (usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
)  engine = InnoDB;

INSERT INTO SpotifyClone.dados_usuario (nome_usuario,idade_usuario) VALUES
('Thati', 23),
('Cintia', 35),
('Bill', 20),
('Roger',45),
('Norman',58),
('Patrick', 33),
('Vivian', 26),
('Carol', 19),
('Angelina', 42),
('Paul', 46);

INSERT INTO SpotifyClone.plano (usuario_id, nome_plano, data_assinatura, valor_plano) VALUES
(1, 'gratuito', '2019-10-20', 0),
(2, 'familiar','2017-12-30', 7,99 ),
(3,'universitário', '2019-06-05', 5,99),
(4,'pessoal', '2020-05-13', 6,99),
(5,'pessoal', '2017-02-17', 6,99),
(6,'familiar', '2017-01-06', 7,99),
(7,'universitário', '2018-01-05', 5,99),
(8, 'universitário', '2018-02-14', 5,99),
(9,'familiar', '2018-04-29', 7,99),
(10,'familiar', '2017-01-17', 7,99);

INSERT INTO SpotifyClone.artista(nome_artista) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon'),
('Tyle Isle'),
('Fog');

INSERT INTO SpotifyClone.album (nome_album, ano_lancamento, artista_id,) VALUES
('Envious', 1990, 1),
('Exuberant', 1993, 1),
('Hallowed Steam', 1995, 2),
('Incandescent', 1998, 3),
('Temporary Culture',2001,4 ),
('Library of liberty', 2003,4),
('Chained Down', 2007, 5),
('Cabinet of fools', 2012, 5),
('No guarantees', 2015, 5),
('Apparatus', 6);








-- INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados A'),
--   ('exemplo de dados 2', 'exemplo de dados B'),
--   ('exemplo de dados 3', 'exemplo de dados C');

-- INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados X'),
--   ('exemplo de dados 2', 'exemplo de dados Y');