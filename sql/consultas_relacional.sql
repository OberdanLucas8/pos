1. Quais solicitações de determinado setor estão em aberto? 

SELECT sol.numero_solicitacao, se.nome
FROM solicitacao AS sol
INNER JOIN servidor AS ser
  ON sol.SIAPE_Solicitante = ser.SIAPE
INNER JOIN setor AS se
  ON se.idSetor = ser.setor_alocado
WHERE sol.status = 'Solicitado'
   AND se.nome = 'Coordenação BSI';
---------------------------------------------------------------------------------------------------------------------------------------------
2.	Quais as solicitações entregues no ano de 2014?

SELECT *
FROM ENTREGA 
WHERE DATA_ENTREGUE BETWEEN '2014-01-01' AND '2014-12-31';
---------------------------------------------------------------------------------------------------------------------------------------------
3.	Quais os ganhadores dos Pregões nos anos de 2013 e 2014?

SELECT a.identificacao
FROM participa as b
INNER JOIN fornecedor as a
  on a.CNPJ = b.CNPJ
WHERE status="Ganhador" and data_participacao  BETWEEN '2013-01-01' AND '2014-12-31';
---------------------------------------------------------------------------------------------------------------------------------------------
4.	Quais os pregões que foram concluídos e quais foram cancelados?

SELECT NUMERO_PROCESSO 
FROM PREGAO 
WHERE status="concluido" OR status="cancelado"; 
---------------------------------------------------------------------------------------------------------------------------------------------
5.	Qual a data de entrega do Produto ao almoxarifado?

SELECT b.nomePS, a.data_entregue
FROM entrega as a 
INNER JOIN produto_servico as b
  on a.item_solicitado = b.codPS
WHERE nomePS = 'Serviço de buffet para 500 pessoas';
---------------------------------------------------------------------------------------------------------------------------------------------
6.	Quais pregões estão em aberto?

select numero_processo, status from pregao where status="aberto";
---------------------------------------------------------------------------------------------------------------------------------------------
7.	Quais os gerentes e seus setores fizeram solicitações?

SELECT serv.nome, seto.nome
FROM solicitacao AS sol
INNER JOIN servidor AS serv
  ON sol.SIAPE_Solicitante = serv.SIAPE
INNER JOIN setor AS seto
  ON seto.idSetor = serv.setor_alocado
WHERE serv.cargo = 'gerente';
---------------------------------------------------------------------------------------------------------------------------------------------
8.	Quais pregões um determinado fornecedor participou, e os seus respectivos resultados?

SELECT preg.numero_processo, preg.status
FROM participa as preg
INNER JOIN fornecedor as forn
  ON forn.CNPJ = preg.CNPJ
WHERE identificacao = 'multipaper papelaria';
---------------------------------------------------------------------------------------------------------------------------------------------
9.	Quais os produtos ou serviços foram licitados por um determinado pregão?

SELECT prose.nomePS, prose.codPS
FROM produto_servico as prose
INNER JOIN itens_solicitacao as sol
  ON sol.codPS = prose.codPS
WHERE numero_processo="2012008";

---------------------------------------------------------------------------------------------------------------------------------------------
10.	Consultar as solicitações que vieram de um determinado setor?

SELECT a.numero_solicitacao
FROM solicitacao as a
INNER JOIN servidor as b 
  on a.SIAPE_Solicitante = b.SIAPE
WHERE b.setor_alocado="CSI";