CREATE TABLE TB_CLIENTES (
    CPF VARCHAR2(11),
    NOME VARCHAR2(100),
    ENDERECO1 VARCHAR2(150),
    ENDERECO2 VARCHAR2(150),
    BAIRRO VARCHAR2(50),
    CIDADE VARCHAR2(50),
    ESTADO VARCHAR2(2),
    CEP VARCHAR2(8),
    IDADE INT,
    SEXO VARCHAR2(1),
    LIMITE_CREDITO FLOAT,
    VOLUME_COMPRA FLOAT,
    PRIMEIRA_COMPRA NUMBER(1)
);

CREATE TABLE TABELA_DE_VENDEDORES (
    MATRICULA VARCHAR2(5),
    NOME VARCHAR2(100),
    PERCENTUAL_COMISSAO FLOAT
);

ALTER TABLE TABELA_DE_VENDEDORES ADD CONSTRAINT PK_TABELA_DE_VENDEDORES PRIMARY KEY (MATRICULA);

CREATE TABLE TB_PRODUTOS (
    PRODUTO VARCHAR2(20),
    NOME VARCHAR2(150),
    EMBALAGEM VARCHAR2(50),
    TAMANHO VARCHAR2(50),
    SABOR VARCHAR2(50),
    PRECO_LISTA FLOAT
);

INSERT INTO TB_PRODUTOS (
    PRODUTO,
    NOME,
    EMBALAGEM,
    TAMANHO,
    SABOR,
    PRECO_LISTA
)
VALUES (
    '1040107',
    'Light - 350 ml - Melancia',
    'Lata',
    '350 ml',
    'Melancia',
    4.56
);

SELECT * FROM TB_PRODUTOS;

INSERT INTO TABELA_DE_VENDEDORES (
    MATRICULA,
    NOME,
    PERCENTUAL_COMISSAO
) VALUES (
    '00233',
    'Jos� Geraldo da Fonseca',
    0.10
);

SELECT * FROM TABELA_DE_VENDEDORES;

INSERT INTO TB_PRODUTOS (
    PRODUTO,
    NOME,
    EMBALAGEM,
    TAMANHO,
    SABOR,
    PRECO_LISTA
) VALUES (
    '1037797',
    'Clean - 2 Litros - Laranja',
    'PET',
    '2 Litros',
    'Laranja',
    16.01
);

INSERT INTO TB_PRODUTOS (
    PRODUTO,
    NOME,
    EMBALAGEM,
    TAMANHO,
    SABOR,
    PRECO_LISTA
) VALUES (
    '1000889',
    'Sabor da Montanha - 700 ml - Uva',
    'Garrafa',
    '700 ml',
    'Uva',
    6.31
);

INSERT INTO TB_PRODUTOS (
    PRODUTO,
    NOME,
    EMBALAGEM,
    TAMANHO,
    SABOR,
    PRECO_LISTA
) VALUES (
    '1004327',
    'Videira do Campo - 1,5 Litros - Melancia',
    'PET',
    '1,5 Litros',
    'Melancia',
    19.51
);

SELECT * FROM TB_PRODUTOS;

INSERT INTO TABELA_DE_VENDEDORES (
    MATRICULA,
    NOME,
    PERCENTUAL_COMISSAO
) VALUES (
    '00235',
    'M�rcio Almeida Silva',
    0.08
);

INSERT INTO TABELA_DE_VENDEDORES (
    MATRICULA,
    NOME,
    PERCENTUAL_COMISSAO
) VALUES (
    '00236',
    'Cl�udia Morais',
    0.08
);

SELECT * FROM TABELA_DE_VENDEDORES;

INSERT INTO TB_PRODUTOS (
    PRODUTO,
    NOME,
    EMBALAGEM,
    TAMANHO,
    SABOR,
    PRECO_LISTA
)
VALUES (
    '544931',
    'Frescor do Ver�o - 350 ml - Lim�o',
    'PET',
    '350 ml',
    'Lim�o',
    3.20
);

INSERT INTO TB_PRODUTOS (
    PRODUTO,
    NOME,
    EMBALAGEM,
    TAMANHO,
    SABOR,
    PRECO_LISTA
)
VALUES (
    '1078680',
    'Frescor do Ver�o - 470 ml - Manga',
    'Lata',
    '470 ml',
    'Manga',
    5.18
);

SELECT * FROM TB_PRODUTOS;

UPDATE TB_PRODUTOS
    SET
        EMBALAGEM = 'Lata',
        PRECO_LISTA = 2.46
    WHERE
        PRODUTO = '544931';

UPDATE TB_PRODUTOS
    SET
        EMBALAGEM = 'Garrafa'
    WHERE
        PRODUTO = '1078680';

SELECT * FROM TB_PRODUTOS;

UPDATE TABELA_DE_VENDEDORES
    SET
        PERCENTUAL_COMISSAO = 0.11
    WHERE
        MATRICULA = '00236';
        
UPDATE TABELA_DE_VENDEDORES
    SET
        NOME = 'Jos� Geraldo da Fonseca Junior'
    WHERE
        MATRICULA = '00233';

SELECT * FROM TABELA_DE_VENDEDORES;

DELETE FROM TB_PRODUTOS
    WHERE PRODUTO = '1078680';

SELECT * FROM TB_PRODUTOS;

DELETE FROM TABELA_DE_VENDEDORES
    WHERE MATRICULA = '00233';

SELECT * FROM TABELA_DE_VENDEDORES;

ALTER TABLE TB_PRODUTOS ADD CONSTRAINT PK_TB_PRODUTOS PRIMARY KEY (PRODUTO);

INSERT INTO TB_PRODUTOS (
    PRODUTO,
    NOME,
    EMBALAGEM,
    TAMANHO,
    SABOR,
    PRECO_LISTA
)
VALUES (
    '1078680',
    'Frescor do Ver�o - 470 ml - Manga',
    'Lata',
    '470 ml',
    'Manga',
    5.18
);

UPDATE TB_PRODUTOS
    SET
        EMBALAGEM = 'Garrafa'
    WHERE
        PRODUTO = '1078680';

ALTER TABLE TB_CLIENTES ADD CONSTRAINT PK_TB_CLIENTES PRIMARY KEY (CPF);

ALTER TABLE TB_CLIENTES ADD DATA_NASCIMENTO DATE;

INSERT INTO TB_CLIENTES (
    CPF,
    NOME,
    ENDERECO1,
    ENDERECO2,
    BAIRRO,
    CIDADE,
    ESTADO,
    CEP,
    IDADE,
    SEXO,
    LIMITE_CREDITO,
    VOLUME_COMPRA,
    PRIMEIRA_COMPRA,
    DATA_NASCIMENTO
) VALUES (
    '00388934505',
    'Jo�o da Silva',
    'Rua Projetada A, 10',
    NULL,
    'VILA ROMAN',
    'TR�S RIOS',
    'RJ',
    '22222222',
    53,
    'M',
    20000.00,
    2000.00,
    0,
    TO_DATE('12/10/1965', 'DD/MM/YYYY')
);

ALTER TABLE TABELA_DE_VENDEDORES ADD DATA_ADMISSAO DATE;

ALTER TABLE TABELA_DE_VENDEDORES ADD DE_FERIAS NUMBER(1);

DELETE FROM TABELA_DE_VENDEDORES;

INSERT INTO TABELA_DE_VENDEDORES (
    MATRICULA,
    NOME,
    PERCENTUAL_COMISSAO,
    DATA_ADMISSAO,
    DE_FERIAS
) VALUES (
    '00235',
    'M�rcio Almeida Silva',
    0.08,
    TO_DATE('15/08/2014','DD/MM/YYYY'),
    0
);

INSERT INTO TABELA_DE_VENDEDORES (
    MATRICULA,
    NOME,
    PERCENTUAL_COMISSAO,
    DATA_ADMISSAO,
    DE_FERIAS
) VALUES (
    '00236',
    'Cl�udia Morais',
    0.08,
    TO_DATE('17/09/2013','DD/MM/YYYY'),
    1
);

INSERT INTO TABELA_DE_VENDEDORES (
    MATRICULA,
    NOME,
    PERCENTUAL_COMISSAO,
    DATA_ADMISSAO,
    DE_FERIAS
) VALUES (
    '00237',
    'Roberta Martins',
    0.11,
    TO_DATE('18/03/2017','DD/MM/YYYY'),
    1
);

INSERT INTO TABELA_DE_VENDEDORES (
    MATRICULA,
    NOME,
    PERCENTUAL_COMISSAO,
    DATA_ADMISSAO,
    DE_FERIAS
) VALUES (
    '00238',
    'P�ricles Alves',
    0.11,
    TO_DATE('21/08/2016','DD/MM/YYYY'),
    0
);

SELECT * FROM TABELA_DE_VENDEDORES;


-- REESTRUTURA��O DAS TABELAS DE CLIENTES E PRODUTOS
DROP TABLE TB_CLIENTES;

DROP TABLE TB_PRODUTOS;

CREATE TABLE TB_CLIENTES
(CPF VARCHAR(11),
NOME VARCHAR(100),
ENDERECO1 VARCHAR(150),
ENDERECO2 VARCHAR(150),
BAIRRO VARCHAR(50),
CIDADE VARCHAR(50),
ESTADO VARCHAR(2),
CEP VARCHAR(8),
IDADE INT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA NUMBER(1));

ALTER TABLE TB_CLIENTES ADD CONSTRAINT PK_TB_CLIENTES PRIMARY KEY (CPF);

ALTER TABLE TB_CLIENTES ADD DATA_NASCIMENTO DATE;

CREATE TABLE TB_PRODUTOS
(PRODUTO VARCHAR (20) ,
NOME VARCHAR (150) ,
EMBALAGEM VARCHAR (50) ,
TAMANHO VARCHAR (50) ,
SABOR VARCHAR (50) ,
PRECO_LISTA FLOAT);

ALTER TABLE TB_PRODUTOS ADD CONSTRAINT PK_TB_PRODUTOS 
PRIMARY KEY (PRODUTO);

INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','','�gua Santa','Rio de Janeiro','RJ','22000000',TO_DATE('2000-02-12','YYYY-MM-DD'),18,'M',100000,200000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('2600586709','C�sar Teixeira','Rua Conde de Bonfim','','Tijuca','Rio de Janeiro','RJ','22020001',TO_DATE('2000-03-12','YYYY-MM-DD'),18,'M',120000,220000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('95939180787','F�bio Carvalho','R. dos Jacarand�s da Pen�nsula','','Barra da Tijuca','Rio de Janeiro','RJ','22002020',TO_DATE('1992-01-05','YYYY-MM-DD'),16,'M',90000,180000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('9283760794','Edson Meilelles','R. Pinto de Azevedo','','Cidade Nova','Rio de Janeiro','RJ','22002002',TO_DATE('1995-10-07','YYYY-MM-DD'),22,'M',150000,250000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('7771579779','Marcelo Mattos','R. Eduardo Lu�s Lopes','','Br�s','S�o Paulo','SP','88202912',TO_DATE('1992-03-25','YYYY-MM-DD'),25,'M',120000,200000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('5576228758','Petra Oliveira','R. Ben�cio de Abreu','','Lapa','S�o Paulo','SP','88192029',TO_DATE('1995-11-14','YYYY-MM-DD'),22,'F',70000,160000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('8502682733','Valdeci da Silva','R. Srg. �dison de Oliveira','','Jardins','S�o Paulo','SP','82122020',TO_DATE('1995-10-07','YYYY-MM-DD'),22,'M',110000,190000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('1471156710','�rica Carvalho','R. Iriquitia','','Jardins','S�o Paulo','SP','80012212',TO_DATE('1990-09-01','YYYY-MM-DD'),27,'F',170000,245000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('3623344710','Marcos Nougeuira','Av. Pastor Martin Luther King Junior','','Inhauma','Rio de Janeiro','RJ','22002012',TO_DATE('1995-01-13','YYYY-MM-DD'),23,'M',110000,220000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('50534475787','Abel Silva ','Rua Humait�','','Humait�','Rio de Janeiro','RJ','22000212',TO_DATE('1995-09-11','YYYY-MM-DD'),22,'M',170000,260000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('5840119709','Gabriel Araujo','R. Manuel de Oliveira','','Santo Amaro','S�o Paulo','SP','80010221',TO_DATE('1985-03-16','YYYY-MM-DD'),32,'M',140000,210000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('94387575700','Walber Lontra','R. Cel. Almeida','','Piedade','Rio de Janeiro','RJ','22000201',TO_DATE('1989-06-20','YYYY-MM-DD'),28,'M',60000,120000,1);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('8719655770','Carlos Eduardo','Av. Gen. Guedes da Fontoura','','Jardins','S�o Paulo','SP','81192002',TO_DATE('1983-12-20','YYYY-MM-DD'),34,'M',200000,240000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('5648641702','Paulo C�sar Mattos','Rua H�lio Beltr�o','','Tijuca','Rio de Janeiro','RJ','21002020',TO_DATE('1991-08-30','YYYY-MM-DD'),26,'M',120000,220000,0);
INSERT INTO TB_CLIENTES (CPF,NOME,ENDERECO1,ENDERECO2,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA) VALUES ('492472718','Eduardo Jorge','R. Volta Grande','','Tijuca','Rio de Janeiro','RJ','22012002',TO_DATE('1994-07-19','YYYY-MM-DD'),23,'M',75000,95000,1);

INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1040107','Light - 350 ml - Mel�ncia','Lata','350 ml','Mel�ncia',4.555);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1037797','Clean - 2 Litros - Laranja','PET','2 Litros','Laranja',16.008);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1000889','Sabor da Montanha - 700 ml - Uva','Garrafa','700 ml','Uva',6.309);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1004327','Videira do Campo - 1,5 Litros - Mel�ncia','PET','1,5 Litros','Mel�ncia',19.51);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1088126','Linha Citros - 1 Litro - Lim�o','PET','1 Litro','Lim�o',7.004);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('544931','Frescor do Ver�o - 350 ml - Lim�o','Lata','350 ml','Lim�o',2.4595);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1078680','Frescor do Ver�o - 470 ml - Manga','Garrafa','470 ml','Manga',5.1795);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1042712','Linha Citros - 700 ml - Lim�o','Garrafa','700 ml','Lim�o',4.904);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('788975','Peda�os de Frutas - 1,5 Litros - Ma�a','PET','1,5 Litros','Ma�a',18.011);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1002767','Videira do Campo - 700 ml - Cereja/Ma�a','Garrafa','700 ml','Cereja/Ma�a',8.41);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('231776','Festival de Sabores - 700 ml - A�ai','Garrafa','700 ml','A�ai',13.312);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('479745','Clean - 470 ml - Laranja','Garrafa','470 ml','Laranja',3.768);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1051518','Frescor do Ver�o - 470 ml - Lim�o','Garrafa','470 ml','Lim�o',3.2995);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1101035','Linha Refrescante - 1 Litro - Morango/Lim�o','PET','1 Litro','Morango/Lim�o',9.0105);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('229900','Peda�os de Frutas - 350 ml - Ma�a','Lata','350 ml','Ma�a',4.211);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1086543','Linha Refrescante - 1 Litro - Manga','PET','1 Litro','Manga',11.0105);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('695594','Festival de Sabores - 1,5 Litros - A�ai','PET','1,5 Litros','A�ai',28.512);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('838819','Clean - 1,5 Litros - Laranja','PET','1,5 Litros','Laranja',12.008);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('326779','Linha Refrescante - 1,5 Litros - Manga','PET','1,5 Litros','Manga',16.5105);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('520380','Peda�os de Frutas - 1 Litro - Ma�a','PET','1 Litro','Ma�a',12.011);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1041119','Linha Citros - 700 ml - Lima/Lim�o','Garrafa','700 ml','Lima/Lim�o',4.904);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('243083','Festival de Sabores - 1,5 Litros - Maracuj�','PET','1,5 Litros','Maracuj�',10.512);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('394479','Sabor da Montanha - 700 ml - Cereja','Garrafa','700 ml','Cereja',8.409);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('746596','Light - 1,5 Litros - Mel�ncia','PET','1,5 Litros','Mel�ncia',19.505);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('773912','Clean - 1 Litro - Laranja','PET','1 Litro','Laranja',8.008);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('826490','Linha Refrescante - 700 ml - Morango/Lim�o','Garrafa','700 ml','Morango/Lim�o',6.3105);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('723457','Festival de Sabores - 700 ml - Maracuj�','Garrafa','700 ml','Maracuj�',4.912);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('812829','Clean - 350 ml - Laranja','Lata','350 ml','Laranja',2.808);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('290478','Videira do Campo - 350 ml - Mel�ncia','Lata','350 ml','Mel�ncia',4.56);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('783663','Sabor da Montanha - 700 ml - Morango','Garrafa','700 ml','Morango',7.709);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('235653','Frescor do Ver�o - 350 ml - Manga','Lata','350 ml','Manga',3.8595);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1002334','Linha Citros - 1 Litro - Lima/Lim�o','PET','1 Litro','Lima/Lim�o',7.004);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1013793','Videira do Campo - 2 Litros - Cereja/Ma�a','PET','2 Litros','Cereja/Ma�a',24.01);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1096818','Linha Refrescante - 700 ml - Manga','Garrafa','700 ml','Manga',7.7105);
INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES ('1022450','Festival de Sabores - 2 Litros - A�ai','PET','2 Litros','A�ai',38.012);
-- FIM DA REESTRUTURA��O DAS TABELAS DE CLIENTES E PRODUTOS

SELECT * FROM TB_PRODUTOS WHERE SABOR='Lim�o';

UPDATE TB_PRODUTOS SET SABOR='Limonada' WHERE SABOR='Lim�o';

SELECT * FROM TB_PRODUTOS WHERE SABOR='Limonada';

SELECT * FROM TABELA_DE_VENDEDORES WHERE NOME='Cl�udia Morais';

SELECT * FROM TABELA_DE_VENDEDORES WHERE PERCENTUAL_COMISSAO > 0.1;

SELECT * FROM TB_CLIENTES WHERE IDADE > 20 AND IDADE < 30;

SELECT * FROM TB_CLIENTES WHERE DATA_NASCIMENTO >= TO_DATE('01/01/1994','DD/MM/YYYY') AND DATA_NASCIMENTO <= TO_DATE('31/12/1994','DD/MM/YYYY');

SELECT * FROM TB_CLIENTES WHERE DATA_NASCIMENTO > TO_DATE('01/01/1990','DD/MM/YY');

SELECT * FROM TB_CLIENTES WHERE DATA_NASCIMENTO = TO_DATE('07/10/95', 'DD/MM/YY');

SELECT * FROM TB_CLIENTES WHERE TO_CHAR(DATA_NASCIMENTO,'MM/YYYY') = '10/1995';

SELECT * FROM TABELA_DE_VENDEDORES WHERE TO_CHAR(DATA_ADMISSAO, 'YYYY') >= '2016';

SELECT * FROM TB_CLIENTES WHERE SEXO = 'M' AND IDADE >= 16 AND (BAIRRO = 'Santo Amaro' OR BAIRRO = 'Humait�');

SELECT * FROM TABELA_DE_VENDEDORES WHERE DE_FERIAS = 1 AND TO_CHAR(DATA_ADMISSAO, 'YYYY') < '2016';