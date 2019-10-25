INSERT INTO fornecedor (CNPJ, identificacao, bairro, uf, cep, cidade, logradouro, numero)
VALUES ('0200300300402','master canetas','centro','ba','45000000','vitoria da conquista','rua do triunfo','888');

INSERT INTO fornecedor (CNPJ, identificacao, bairro, uf, cep, cidade, logradouro, numero)
VALUES ('4432296300122','limpabem serviços','zabele','ba','45243222','vitoria da conquista','rua N','13');

INSERT INTO fornecedor (CNPJ, identificacao, bairro, uf, cep, cidade, logradouro, numero)
VALUES ('8182283980012','brasil copiadora','brasil','ba','45000000','vitoria da conquista','av. maceio','356');

INSERT INTO fornecedor (CNPJ, identificacao, bairro, uf, cep, cidade, logradouro, numero)
VALUES ('7869786944553','max moveis','centro','ba','45250000','boa nova','rua bento alexandre messeder','10');

INSERT INTO fornecedor (CNPJ, identificacao, bairro, uf, cep, cidade, logradouro, numero)
VALUES ('8475928613000','multipaper papelaria','candeias','ba','45028275','vitoria da conquista','av. franklin ferraz','80');

INSERT INTO fornecedor (CNPJ, identificacao, bairro, uf, cep, cidade, logradouro, numero)
VALUES ('1342423100010','abílio escritório','cruzeiro','sp','23000120','taubaté','av. contorno','1123');

INSERT INTO fornecedor (CNPJ, identificacao, bairro, uf, cep, cidade, logradouro, numero)
VALUES ('1323013400110','teclab laboratório','centro','ba','45000234','anagé','praça da bandeira','15');

INSERT INTO fornecedor (CNPJ, identificacao, bairro, uf, cep, cidade, logradouro, numero)
VALUES ('3342231120001','resolveTI serviços','centro','ba','45000000','vitoria da conquista','av. vivaldo mendes','122');

INSERT INTO fornecedor (CNPJ, identificacao, bairro, uf, cep, cidade, logradouro, numero)
VALUES ('9988778890909','tecno empresarial','brasil','ba','45000000','vitoria da conquista','av. macaúbas','345');

INSERT INTO fornecedor (CNPJ, identificacao, bairro, uf, cep, cidade, logradouro, numero)
VALUES ('7675322122215','buffet da ostentação','centro','ba','45000000','vitoria da conquista','praça da bandeira','445');

INSERT INTO produto_servico (codPS, nomePS, tipo, valorPS, naturezaPS, tamanho, modelo, cor)
VALUES ('C1382A','Caneta azul','Produto','0.50','produto escritorio','1','1382','azul');

INSERT INTO produto_servico (codPS, nomePS, tipo, valorPS, naturezaPS, tamanho, modelo, cor)
VALUES ('C1382P','Caneta preta','Produto','0.50','produto escritorio','1','1382','preta');

INSERT INTO produto_servico (codPS, nomePS, tipo, valorPS, naturezaPS, tamanho, modelo, cor)
VALUES ('LIMP004','Serviço de limpeza','Servico','189.00','serviço geral','1','null','null');

INSERT INTO produto_servico (codPS, nomePS, tipo, valorPS, naturezaPS, tamanho, modelo, cor)
VALUES ('COP1120','Serviço de cópias/impressão','Servico','0.10','material escritorio','1','null','null');

INSERT INTO produto_servico (codPS, nomePS, tipo, valorPS, naturezaPS, tamanho, modelo, cor)
VALUES ('MANPCS','Serviço de manutenção de PCs','Servico','54.00','serviço geral','1','null','null');

INSERT INTO produto_servico (codPS, nomePS, tipo, valorPS, naturezaPS, tamanho, modelo, cor)
VALUES ('CAD3342P','Cadeira de escritório','Produto','376.00','produto escritorio','1','3342','preta');

INSERT INTO produto_servico (codPS, nomePS, tipo, valorPS, naturezaPS, tamanho, modelo, cor)
VALUES ('MES3432M','Mesa de escritorio','Produto','403.00','produto escritorio','160','3432','marrom');

INSERT INTO produto_servico (codPS, nomePS, tipo, valorPS, naturezaPS, tamanho, modelo, cor)
VALUES ('BFT500','Serviço de buffet para 500 pessoas','Servico','4200.00','serviço geral','500','null','null');

INSERT INTO produto_servico (codPS, nomePS, tipo, valorPS, naturezaPS, tamanho, modelo, cor)
VALUES ('LAB455521','Tubo de ensaio','Produto','3.00','produto de laboratório','1','455521','null');

INSERT INTO produto_servico (codPS, nomePS, tipo, valorPS, naturezaPS, tamanho, modelo, cor)
VALUES ('LAB47865','Microscópio simples','Produto','829.00','produto de laboratório','1','47865','prata');

INSERT INTO produto_servico (codPS, nomePS, tipo, valorPS, naturezaPS, tamanho, modelo, cor)
VALUES ('PC824211','Computador para laboratório','Produto','1000.00','produto de laboratório','1','824211','preto');

INSERT INTO setor(idSetor,login,senha,nome,ramal)
values ('CMP','compras','compras7712','Compras',7712);

INSERT INTO setor(idSetor,login,senha,nome,ramal)
values ('CSI','sistemas','sistemas7713','Coordenação BSI',7713);

INSERT INTO setor(idSetor,login,senha,nome,ramal)
values ('CPX','copex','copex7745','Copex',7745);

INSERT INTO setor(idSetor,login,senha,nome,ramal)
values ('CRS','cores','cores7786','Cores',7786);

INSERT INTO setor(idSetor,login,senha,nome,ramal)
values ('AMX','almoxari','almox7723','Almoxarifado',7723);

INSERT INTO setor(idSetor,login,senha,nome,ramal)
values ('CTN','cantina','cantina7709','Cantina',7709);

INSERT INTO setor(idSetor,login,senha,nome,ramal)
values ('DEN','ensino','ensino7779','Dept Ensino',7779);

INSERT INTO setor(idSetor,login,senha,nome,ramal)
values ('MAN','manutenc','manu7722','Manutenção',7722);

INSERT INTO setor(idSetor,login,senha,nome,ramal)
values ('DPL','planejam','planej7764','Depto planejamento',7764);

INSERT INTO setor(idSetor,login,senha,nome,ramal)
values ('DIR','direcao','direcao7737','Direção',7737);

INSERT INTO setor(idSetor,login,senha,nome,ramal)
values ('QIM','quimica','quimica7788','Coordenação química',7788);

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values(01010101,'marcio vitor de souza','marcio01','mvitor@ifba.br','gerente','CMP');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (02020202,'aline moraes drummond',	'aline02','aline@ifba.br','gerente','CSI');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (03030303,'leonardo santana cruz','leonardo03','leonardo@ifba.br',	'gerente','CPX');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (04040404,'ivete maria de luz','ivete04','ivete@ifba.br','gerente','CRS');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (05050505,'washington pereira carmo','washington05','washington@ifba.br','gerente',	'AMX');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (06060606,'carlos marron ashansu','carlos06','carlos@ifba.br','gerente','CTN');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (07070707,'humberto marley paixão',	'humberto07','humberto@ifba.br','gerente','DEN');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (08080808,'clecio de jesus','clecio08','clecio@ifba.br','gerente','MAN');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (09090909,'claudia dias leite',	'claudia09','claudia@ifba.br','gerente','DPL');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (10101010,'sheila carvalho melo','sheila10','sheila@ifba.br','gerente','DIR');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (11121314,'felipe jesus marinho','felipe11','felipe@ifba.br','supervisor','DEN');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (15161718,'andressa abraão café','andressa15','andressa@ifba.br','gerente','QIM');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (19202122,'larissa torres cruz', 'larissa19','larissa@ifba.br','secretaria','CMP');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (23242526,'miguel gomes pio filho','miguel23','miguel@ifba.br','auxiliar', 'CPX');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (27282930,'luzia mira castilhano','luzia27','luzia@ifba.br','atendente','CPX');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (31323334,'mara luz cruz','mara31','mara@ifba.br','secretaria','DIR');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (35363738,'fabricio carmo padilha','fabricio35','fabricio@ifba.br','advogado','DIR');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (39404142,'milena alves lopes','milena39','milena@ifba.br','auxiliar', 'AMX');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (43444546,'murilo miranda sá','murilo43','murilo@ifba.br','atendente','CTN');

INSERT INTO servidor (SIAPE, nome, senha, email, cargo, setor_alocado)
values (47484950,'armando de souza filinto','armando47','armando@ifba.br','auxiliar', 'MAN');

insert into solicitacao (numero_solicitacao, data_entrega_prevista, data_solicitacao, doc_solicitacao, status, pedido_descricao, SIAPE_Solicitante)
values (6632012, '2012-08-15',	'2012-05-28',	11137627,	'Entregue',	'800 canetas azuis e pretas',	07070707);

insert into solicitacao (numero_solicitacao, data_entrega_prevista, data_solicitacao, doc_solicitacao, status, pedido_descricao, SIAPE_Solicitante)
values (4232013,	'2013-04-26',	'2013-04-12',	13893992,	'Cancelado',	'30 cadeiras'	,04040404);

insert into solicitacao (numero_solicitacao, data_entrega_prevista, data_solicitacao, doc_solicitacao, status, pedido_descricao, SIAPE_Solicitante)
values (6222013,	'2013-12-23',	'2013-06-01',	23234244,	'Entregue',	'01 buffet',	10101010);

insert into solicitacao (numero_solicitacao, data_entrega_prevista, data_solicitacao, doc_solicitacao, status, pedido_descricao, SIAPE_Solicitante)
values (8322013,	'2013-09-18',	'2013-08-22',	82374274,	'Entregue',	'30 limpezas',	08080808);

insert into solicitacao (numero_solicitacao, data_entrega_prevista, data_solicitacao, doc_solicitacao, status, pedido_descricao, SIAPE_Solicitante)
values (2342014,	'2014-03-11',	'2014-01-25',	45998825,	'Entregue',	'43 formatações de computadores',	02020202);

insert into solicitacao (numero_solicitacao, data_entrega_prevista, data_solicitacao, doc_solicitacao, status, pedido_descricao, SIAPE_Solicitante)
values (3322014,	'2014-02-25',	'2014-01-27',	19749733,	'Entregue',	'5000 impressões ou xerox',	02020202);

insert into solicitacao (numero_solicitacao, data_entrega_prevista, data_solicitacao, doc_solicitacao, status, pedido_descricao, SIAPE_Solicitante)
values (3442014,	'2014-06-30',	'2014-05-13',	99248742,	'Entregue',	'14 mesas',	03030303);

insert into solicitacao (numero_solicitacao, data_entrega_prevista, data_solicitacao, doc_solicitacao, status, pedido_descricao, SIAPE_Solicitante)
values (4452014,	'2014-09-02',	'2014-08-18',	78234244,	'Cancelado',	'1000 tubos de ensaio',	15161718);

insert into solicitacao (numero_solicitacao, data_entrega_prevista, data_solicitacao, doc_solicitacao, status, pedido_descricao, SIAPE_Solicitante)
values (4732014,	'2014-09-14',	'2014-09-05',	28349072,	'Cancelado',	'13 microscópios',	15161718);

insert into solicitacao (numero_solicitacao, data_entrega_prevista, data_solicitacao, doc_solicitacao, status, pedido_descricao, SIAPE_Solicitante)
values (5332014,	'2014-12-11',	'2014-11-22',	14875033,	'Solicitado',	'80 computadores',	02020202);

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7734432234','0200300300402');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7730323454','4432296300122');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7785463232','4432296300122');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7734218163','8182283980012');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7734332285','7869786944553');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7734335446','7869786944553');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7788453545','8475928613000');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('11954453223','1342423100010');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7734211234','1323013400110');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7734211235','1323013400110');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7799455432','3342231120001');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7722321965','9988778890909');

INSERT INTO telefone (telefone, CNPJ)
VALUES ('7734233247','7675322122215');

insert into tel_servidor(SIAPE,telefone)
values(01010101, 7799453892);

insert into tel_servidor(SIAPE,telefone)
values(02020202,	7788143443);

insert into tel_servidor(SIAPE,telefone)
values(03030303,	7756433245);

insert into tel_servidor(SIAPE,telefone)
values(03030303,	7188654767);

insert into tel_servidor(SIAPE,telefone)
values(04040404,	7732399232);

insert into tel_servidor(SIAPE,telefone)
values(05050505,	7791197838);

insert into tel_servidor(SIAPE,telefone)
values(06060606,	7188367482);

insert into tel_servidor(SIAPE,telefone)
values(07070707,	7193274922);

insert into tel_servidor(SIAPE,telefone)
values(08080808,	7734973839);

insert into tel_servidor(SIAPE,telefone)
values(08080808,	7788362999);

insert into tel_servidor(SIAPE,telefone)
values(09090909,	7792358399);

insert into tel_servidor(SIAPE,telefone)
values(09090909,	7798377382);

insert into tel_servidor(SIAPE,telefone)
values(10101010,	7399454738);

insert into tel_servidor(SIAPE,telefone)
values(10101010,	7193900202);

insert into tel_servidor(SIAPE,telefone)
values(10101010,	7799477399);

insert into pregao (numero_processo, status, observacao, data_abertura, data_vencimento, idSetor)
values(2012008,	'Concluído', '','2012-07-09',	'2012-08-10',	'DEN');

insert into pregao (numero_processo, status, observacao, data_abertura, data_vencimento, idSetor)
values(2013445,	'Cancelado','cancelado por não ter tempo hábil','2013-08-10','2013-08-15','CRS');

insert into pregao (numero_processo, status, observacao, data_abertura, data_vencimento, idSetor)
values(20130028,	'Concluído','',	'2013-09-09',	'2013-12-31',	'DIR');

insert into pregao (numero_processo, status, observacao, data_abertura, data_vencimento, idSetor)
values(20130054,	'Concluido','',		'2013-08-30',	'2013-09-15',	'MAN');

insert into pregao (numero_processo, status, observacao, data_abertura, data_vencimento, idSetor)
values(20140023,	'Concluido','',		'2014-02-05',	'2014-03-11',	'CSI');

insert into pregao (numero_processo, status, observacao, data_abertura, data_vencimento, idSetor)
values(20140123,	'Concluido','',	'2014-05-15',	'2014-06-20',	'CPX');

insert into pregao (numero_processo, status, observacao, data_abertura, data_vencimento, idSetor)
values(20148883,	'Aberto','','2014-11-30',	'2015-06-30',	'CSI');

insert into itens_solicitacao (codPS, numero_solicitacao, quant, numero_processo)
values('C1382A',	6632012,	400,	2012008);

insert into itens_solicitacao (codPS, numero_solicitacao, quant, numero_processo)
values('C1382P',	6632012,	400,	2012008);

insert into itens_solicitacao (codPS, numero_solicitacao, quant, numero_processo)
values('BFT500',	6222013,	1,	20130028);

insert into itens_solicitacao (codPS, numero_solicitacao, quant, numero_processo)
values('CAD3342P',	4232013,	30,	2013445);

insert into itens_solicitacao (codPS, numero_solicitacao, quant, numero_processo)
values('LIMP004',	8322013,	30,	20130054);

insert into itens_solicitacao (codPS, numero_solicitacao, quant, numero_processo)
values('COP1120',	2342014,	43,	20140023);

insert into itens_solicitacao (codPS, numero_solicitacao, quant, numero_processo)
values('MANPCS',	3322014,	5000,	20140023);

insert into itens_solicitacao (codPS, numero_solicitacao, quant, numero_processo)
values('MES3432M',	3442014,	14,	20140123);

insert into itens_solicitacao (codPS, numero_solicitacao, quant, numero_processo)
values('LAB455521',	4452014,	1000,	null);

insert into itens_solicitacao (codPS, numero_solicitacao, quant, numero_processo)
values('LAB47865',	4732014,	13,	null);

insert into itens_solicitacao (codPS, numero_solicitacao, quant, numero_processo)
values('PC824211',	5332014,	80,	20148883);

insert into participa (CNPJ, numero_processo, status, data_participacao)
values('0200300300402',	2012008,	'Ganhador',	'2013-07-10');

insert into participa (CNPJ, numero_processo, status, data_participacao)
values('8475928613000',	2012008,	'Perdedor',	'2013-07-22');

insert into participa (CNPJ, numero_processo, status, data_participacao)
values('1342423100010',	2012008,	'perdedor',	'2013-07-24');

insert into participa (CNPJ, numero_processo, status, data_participacao)
values('7675322122215',	20130028,	'Ganhador',	'2013-09-15');

insert into participa (CNPJ, numero_processo, status, data_participacao)
values('4432296300122',	20130054,	'Ganhador',	'2013-08-30');

insert into participa (CNPJ, numero_processo, status, data_participacao)
values('8182283980012',	20140023,	'Perdedor',	'2014-02-07');

insert into participa (CNPJ, numero_processo, status, data_participacao)
values('8475928613000',	20140023,	'Ganhador',	'2014-02-10');

insert into participa (CNPJ, numero_processo, status, data_participacao)
values('3342231120001',	20140023,	'Ganhador',	'2014-02-08');

insert into participa (CNPJ, numero_processo, status, data_participacao)
values('9988778890909',	20140023,	'Perdedor',	'2014-02-07');

insert into participa (CNPJ, numero_processo, status, data_participacao)
values('7869786944553',	20140123,	'Ganhador',	'2014-05-20');

insert into participa (CNPJ, numero_processo, status, data_participacao)
values('1342423100010',	20140123,	'Perdedor',	'2014-05-23');

insert into entrega (CNPJ, item_solicitado, cod_solicitacao, data_entregue, preco, quant) 
values('0200300300402',	'C1382A',	6632012,	'2013-08-20',	176,	400);

insert into entrega (CNPJ, item_solicitado, cod_solicitacao, data_entregue, preco, quant)
values('0200300300402',	'C1382P',	6632012,	'2013-08-20',	176,	400);

insert into entrega (CNPJ, item_solicitado, cod_solicitacao, data_entregue, preco, quant)
values('7675322122215',	'BFT500',	6222013,	'2013-12-23',	4200,	1);

insert into entrega (CNPJ, item_solicitado, cod_solicitacao, data_entregue, preco, quant)
values('4432296300122',	'LIMP004',	8322013,	'2013-09-10',	5670,	30);

insert into entrega (CNPJ, item_solicitado, cod_solicitacao, data_entregue, preco, quant)
values('8475928613000',	'COP1120',	2342014,	'2013-03-02',	500,	5000);

insert into entrega (CNPJ, item_solicitado, cod_solicitacao, data_entregue, preco, quant)
values('3342231120001',	'MANPCS',	3322014,	'2013-03-20',	2322,	43);

insert into entrega (CNPJ, item_solicitado, cod_solicitacao, data_entregue, preco, quant)
values('7869786944553',	'MES3432M',	3442014,	'2014-06-15',	6000,	14);

select * from tel_servidor;