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
    valor_plano DECIMAL NOT NULL,
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
    hora_reproducao VARCHAR (15) NOT NULL,
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

INSERT TABLE Spotify.musicas (nome_musica, duracao_segundos) VALUES
('Soul For US', 200)
('Reflections Of Magic', 163),
('Dance With Her Own', 116),
('Troubles Of My Inner Fire', 203),
('Time Fireworks', 152),
('Magic Circus', 105),
('Honey, So Do I', 207),
('Sweetie, Lets Go Wild', 139),
('She Knows', 244),
('Fantasy For Me', 100),
('Celebration Of More', 146),
('Rock His Everything', 223),
('Home Forever', 231),
('Diamond Power', 241),
('Lets Be Silly', 132),
('Thang Of Thunder', 240),
('Words Of Her Life', 185),
('Without My Streets', 176),
('Need Of The Evening', 190),
('History Of My Roses', 222),
('Without My Love', 111),
('Walking And Game', 123),
('Young And Father', 197),
('Finding My Traditions', 179),
('Walking And Man', 229),
('Hard And Time', 135),
('Honey, Im A Lone Wolf', 150),
('She Thinks I Wont Stay Tonight', 166),
('He Heard You re Bad For Me', 154),
('He Hopes We Cant Stay', 210),
('I Know Know', 117),
('Hes Walking Away', 159),
('Hes Trouble', 138),
('I Heard I Want To Bo Alone', 120),
('I Ride Alone', 151),
('Honey',79),
('You Cheated On Me', 95),
('Wouldnt It Be Nice', 213),
('Baby', 136),
('You Make Me Feel So..', 83);


INSERT INTO Spotify.historico_reproducoes (usuario_id, nome_musica, data_reproducao, hora_reproducao) VALUES
(1, 'Honey', '2020-02-28','10:45:55'),
(1, 'Walking And Man', '2020-05-02', '05:30:35'),
(1, 'Young And Father', '2020-03-06', '11:22:33'),
(1, 'Diamond Power', '2020-08-05', '08:05:17'),
(1, 'Lets Be Silly', '2020-09-14', '16:32:22'),
(2, 'I Heard I Want To Bo Alone', '2020-01-02', '07:40:33'),
(2, 'Finding My Traditions', '2020-05-16', '06:16:22'),
(2, 'Without My Love', '2020-10-09', '12:27:48'),
(2, 'Baby', '2020-09-21', '13:14:46'),
(3, 'Magic Circus', '2020-11-13', '16:55:13'),
(3, 'Dance With Her Own', '2020-12-05', '18:38:30'),
(3, 'Hard And Time', '2020-07-30', '10:00:00'),
(4, 'Reflections Of Magic', '2021-08-15', '17:10:10'),
(4,'I Ride Alone', '2021-07-10', '15:20:30'),
(4, 'Honey, Im A Lone Wolf', '2021-01-09', '01:44:33'),
(5, 'Honey, So Do I', '2020-07-03', '19:33:28'),
(5, 'Rock His Everything', '2017-02-24', '21:14:22'),
(5, 'Diamond Power', '2020-08-06', '15:23:43'),
(5, 'Soul For Us', '2020-11-10', '13:52:27'),
(6, 'Wouldnt It Be Nice', '2019-02-07', '20:33:48'),
(6, 'He Heard  Youre Bad For Me', '2017-01-24', '00:31:17'),
(6, 'He Hopes We Cant Stay', '2017-10-12', '12:35:20'),
(6, 'Walking And Game', '2018-05-29', '14:56:41'),
(7, 'Time Fireworks', '2018-05-09', '22:30:49'),
(7, 'Troubles Of My Inner Fire', '2020-07-27', '12:52:58'),
(7, 'Celebration Of More', '2018-01-16', '18:40:43'),
(8, 'Baby', '2018-03-21', '16:56:40'),
(8, 'You Make Me Feel So..', '2020-10-18', '13:38:05'),
(8, 'Hes Walking Away', '2019-05-25', '08:14:03'),
(8, 'Hes Trouble', '2021-08-15', '21:37:09'),
(9, 'Thang Of Thunder', '2021-05-24', '17:23:45'),
(9, 'Words Of Her Life', '2018-12-07', '22:48:52'),
(9, 'Sweetie, Lets Go Wild', '2021-03-14', '06:14:26'),
(9, 'She Knows', '2020-04-01', '03:36:00'),
(10, 'History Of My Roses', '2017-02-06', '08:21:34'),
(10, 'Without My Love', '2017-12-04', '05:33:43'),
(10, 'Rock His Everything', '2017-07-27', '05:24:49'),
(10, 'Home Forever', '2017-12-25', '01:03:57');


INSERT INTO Spotify.usuario_segue_artistas (usuario_id, artista_id) VALUES










-- INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados A'),
--   ('exemplo de dados 2', 'exemplo de dados B'),
--   ('exemplo de dados 3', 'exemplo de dados C');

-- INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados X'),
--   ('exemplo de dados 2', 'exemplo de dados Y');