CREATE DATABASE Projeto;

USE Projeto;
CREATE TABLE canal(
canal_id INT primary key,
canal_nome VARCHAR(100),
canal_grupo VARCHAR(100));

SET GLOBAL local_infile = 1;

LOAD DATA INFILE "C:/Users/namisi.oliveira/Desktop/d_canal.csv"
INTO TABLE canal
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(canal_id,canal_nome,canal_grupo); # nome das colunas 

SELECT* FROM canal;

CREATE TABLE data_hospedagem(
data_id INT primary key,
data_hospedagem date,
ano INT,
mes VARCHAR(100),
nome_mes INT,
trimestre INT,
dia_semana INT,
fim_de_semana_flag INT,
feriado_flag INT,
alta_temporada_flag INT);

LOAD DATA INFILE "C:/Users/namisi.oliveira/Desktop/d_data.csv"
INTO TABLE data_hospedagem
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(data_id,data_hospedagem,ano,mes,nome_mes,trimestre,dia_semana,fim_de_semana_flag,feriado_flag,alta_temporada_flag); # nome das colunas 

SELECT* FROM data_hospedagem;

CREATE TABLE hospede(
hospede_id INT primary key,
pais VARCHAR(100),
uf VARCHAR(100),
cidade VARCHAR(100),
faixa_etaria VARCHAR(100),
segmento VARCHAR(100));

DROP TABLE hospede;

LOAD DATA INFILE "C:/Users/namisi.oliveira/Desktop/d_hospede.csv"
INTO TABLE Hospede
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(hospede_id,pais,uf,cidade,faixa_etaria,segmento); # nome das colunas 

SELECT* FROM hospede;

CREATE TABLE hotel(
hotel_id INT primary key,
nome VARCHAR(100),
cidade VARCHAR(100),
uf VARCHAR(100),
categoria_estrelas INT,
possui_spa_flag INT);

LOAD DATA INFILE "C:/Users/namisi.oliveira/Desktop/d_hotel.csv"
INTO TABLE hotel
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(hotel_id,nome,cidade,uf,categoria_estrelas,possui_spa_flag); # nome das colunas 

SELECT* FROM hotel;




