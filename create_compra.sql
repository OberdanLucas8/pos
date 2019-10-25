-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE TABLE Solicitacao (
numero_solicitacao Integer PRIMARY KEY,
data_entrega_prevista TIMESTAMP,
data_solicitacao TIMESTAMP,
doc_solicitacao BLOB,
status ENUM('Solicitado','Cancelado','Entregue'),
pedido_descricao BLOB,
SIAPE_Solicitante Integer
);

CREATE TABLE Produto_Servico (
codPS char (10) PRIMARY KEY,
nomePS Varchar (50),
tipo ENUM('Produto','Servico'),
valorPS DECIMAL (6,2 ),
naturezaPS Varchar (30),
tamanho float,
modelo Varchar (20),
cor Varchar (10)
);

CREATE TABLE Setor (
idSetor char (8) PRIMARY KEY,
login char (8),
senha Varchar (20),
nome Varchar (20),
Observacao BLOB,
ramal Varchar (10),
idGerente Integer
);

CREATE TABLE Servidor (
SIAPE Integer PRIMARY KEY,
nome Varchar (50),
senha Varchar (20),
email Varchar (30),
cargo Varchar (30),
setor_alocado char (8),
FOREIGN KEY(setor_alocado) REFERENCES Setor (idSetor)
);

CREATE TABLE telefone (
telefone char (11),
CNPJ char (13),
PRIMARY KEY(telefone,CNPJ)
);

CREATE TABLE Itens_Solicitacao (
codPS char (10),
numero_solicitacao Integer,
quant int,
numero_processo Integer,
PRIMARY KEY(codPS,numero_solicitacao),
FOREIGN KEY(codPS) REFERENCES Produto_Servico (codPS),
FOREIGN KEY(numero_solicitacao) REFERENCES Solicitacao (numero_solicitacao)
);

CREATE TABLE Fornecedor (
CNPJ char (13) PRIMARY KEY,
identificacao Varchar (20),
bairro Varchar (30),
uf Varchar (2),
cep char (8),
cidade Varchar (20),
logradouro Varchar (30),
numero char (6)
);

CREATE TABLE Entrega (
CNPJ char (13),
item_solicitado char (10),
cod_solicitacao Integer,
data_entregue TIMESTAMP,
preco DECIMAL (6,2 ),
quant int,
PRIMARY KEY(CNPJ,item_solicitado,cod_solicitacao),
FOREIGN KEY(CNPJ) REFERENCES Fornecedor (CNPJ),
FOREIGN KEY(cod_solicitacao) REFERENCES Itens_Solicitacao (numero_solicitacao)
);

CREATE TABLE Pregao (
numero_processo Integer PRIMARY KEY,
status ENUM ('Aberto','Concluido','Cancelado'),
observacao BLOB,
data_abertura TIMESTAMP,
data_vencimento TIMESTAMP,
idSetor char (8),
FOREIGN KEY(idSetor) REFERENCES Setor (idSetor)
);

CREATE TABLE email (
email Varchar (30),
CNPJ char (13),
PRIMARY KEY(email,CNPJ),
FOREIGN KEY(CNPJ) REFERENCES Fornecedor (CNPJ)
);

CREATE TABLE participa (
CNPJ char (13),
numero_processo Integer,
status ENUM('Aberto', 'Ganhador', 'Perdedor'),
data_participacao TIMESTAMP,
PRIMARY KEY(CNPJ,numero_processo),
FOREIGN KEY(CNPJ) REFERENCES Fornecedor (CNPJ),
FOREIGN KEY(numero_processo) REFERENCES Pregao (numero_processo)
);

CREATE TABLE Tel_servidor (
telefone char (11),
SIAPE Integer,
PRIMARY KEY(telefone,SIAPE),
FOREIGN KEY(SIAPE) REFERENCES Servidor (SIAPE)
);

ALTER TABLE Entrega ADD FOREIGN KEY(item_solicitado) REFERENCES Itens_Solicitacao (codPS);
ALTER TABLE Solicitacao ADD FOREIGN KEY(SIAPE_Solicitante) REFERENCES Servidor (SIAPE);
ALTER TABLE Setor ADD FOREIGN KEY(idGerente) REFERENCES Servidor (SIAPE);
ALTER TABLE telefone ADD FOREIGN KEY(CNPJ) REFERENCES Fornecedor (CNPJ);
ALTER TABLE Itens_Solicitacao ADD FOREIGN KEY(numero_processo) REFERENCES Pregao (numero_processo);
