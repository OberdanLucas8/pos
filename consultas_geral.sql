1. Quais solicitações de determinado setor estão em aberto? 

SELECT sol.numero_solicitacao, se.nome
FROM solicitacao AS sol
INNER JOIN servidor AS ser
  ON sol.SIAPE_Solicitante = ser.SIAPE
INNER JOIN setor AS se
  ON se.idSetor = ser.setor_alocado
WHERE sol.status = 'Solicitado'
   AND se.nome = 'Coordenação BSI';

db.solicitacao.aggregate([
    {$lookup:{from:"servidor", localField:"id_siape", foreignField:"_id", as: "servidor"}},
    {$unwind:"$servidor"},
    {$unwind:"$servidor.setor"},
    {$match:{$and: [{"servidor.setor.setor_id": "csi"}, {"status": "solicitado"}]}},
    {$project: {"numero_solicitacao": 1, "pedido_descricao": 1, "status": 1, "_id": 0}}
]);
---------------------------------------------------------------------------------------------------------------------------------------------
2.	Quais as solicitações entregues no ano de 2014?

SELECT *
FROM ENTREGA 
WHERE DATA_ENTREGUE BETWEEN '2014-01-01' AND '2014-12-31';

db.solicitacao.aggregate([
    {$unwind:"$itens_solicitacao"},
    {$unwind:"$itens_solicitacao.entrega"},
    {$project:{ano:{$year:"$itens_solicitacao.entrega.data_entrega"}, numero_solicitacao:1}},
    {$match:{"ano":{$eq:2014}}}
]);
---------------------------------------------------------------------------------------------------------------------------------------------
3.	Quais os ganhadores dos Pregões nos anos de 2013 e 2014?

SELECT a.identificacao
FROM participa as b
INNER JOIN fornecedor as a
  on a.CNPJ = b.CNPJ
WHERE status="Ganhador" and data_participacao  BETWEEN '2013-01-01' AND '2014-12-31';

db.pregao.aggregate([
    {$unwind:"$participa"},
    {$lookup:{from:"fornecedor", localField:"participa.fornecedor_id", foreignField:"_id", as: "nome"}},
    {$unwind:"$nome"},
    {$project:{ano:{$year:"$participa.data_participacao"}, "participa.status":1, "nome.identificacao":1}},
    {$match:{$and:[{"participa.status":"ganhador"}, {ano:{$in:[2013, 2014]}}]}}
]);
---------------------------------------------------------------------------------------------------------------------------------------------
4.	Quais os pregões que foram concluídos e quais foram cancelados?

SELECT NUMERO_PROCESSO 
FROM PREGAO 
WHERE status="concluido" OR status="cancelado"; 

db.pregao.find({status:{$in:["concluido", "cancelado"]}}, {numero_processo:1, status:1});
---------------------------------------------------------------------------------------------------------------------------------------------
5.	Qual a data de entrega do Produto ao almoxarifado?

SELECT b.nomePS, a.data_entregue
FROM entrega as a 
INNER JOIN produto_servico as b
  on a.item_solicitado = b.codPS
WHERE nomePS = 'Serviço de buffet para 500 pessoas';

var valor = db.produto_servico.find(
	{"nomeps": "servico de buffet para 500 pessoas"}, {"_id":1 }).next();
db.solicitacao.find(
	{"itens_solicitacao.entrega.item_solicitado": valor._id},
	{"itens_solicitacao.entrega.data_entrega": 1}
);
---------------------------------------------------------------------------------------------------------------------------------------------
6.	Quais pregões estão em aberto?

select numero_processo, status from pregao where status="aberto";

db.pregao.find(
{status:"aberto"}, {_id:1, status:1}
);
---------------------------------------------------------------------------------------------------------------------------------------------
7.	Quais os gerentes e seus setores fizeram solicitações?

SELECT serv.nome, seto.nome
FROM solicitacao AS sol
INNER JOIN servidor AS serv
  ON sol.SIAPE_Solicitante = serv.SIAPE
INNER JOIN setor AS seto
  ON seto.idSetor = serv.setor_alocado
WHERE serv.cargo = 'gerente';

db.solicitacao.aggregate([
    {$lookup:{from:"servidor", localField:"id_siape", foreignField:"_id", as: "servidor"}},
    {$unwind:"$servidor"}, 
    {$match:{"servidor.cargo": "gerente"}},
    {$project: {"servidor.nome": 1, "servidor.setor.nome_setor": 1, "_id": 0}}
]);
---------------------------------------------------------------------------------------------------------------------------------------------
8.	Quais pregões um determinado fornecedor participou, e os seus respectivos resultados?

SELECT preg.numero_processo, preg.status
FROM participa as preg
INNER JOIN fornecedor as forn
  ON forn.CNPJ = preg.CNPJ
WHERE identificacao = 'multipaper papelaria';

var valor = db.fornecedor.find({ "identificacao": "multipaper papelaria"}, { "_id": 1 }).next();
db.pregao.aggregate([
    {$project:{"participa.fornecedor_id":1, "participa.status":1}},
    {$unwind:"$participa"},
    {$match:{"participa.fornecedor_id":valor._id}}
]);
---------------------------------------------------------------------------------------------------------------------------------------------
9.	Quais os produtos ou serviços foram licitados por um determinado pregão?

SELECT prose.nomePS, prose.codPS
FROM produto_servico as prose
INNER JOIN itens_solicitacao as sol
  ON sol.codPS = prose.codPS
WHERE numero_processo="2012008";

db.solicitacao.aggregate([
    { $unwind: "$itens_solicitacao" },
    { $unwind: "$itens_solicitacao.entrega" },
    { $match:  { "itens_solicitacao.pregao_id": "2012008" } },
    { $lookup: {from:"produto_servico", localField:"itens_solicitacao.ps_id", foreignField:"_id", as: "nome"}},
    { $unwind: "$nome"},
    { $project: { "itens_solicitacao.ps_id": 1 , "nome.nomeps":1} }
]);
---------------------------------------------------------------------------------------------------------------------------------------------
10.	Consultar as solicitações que vieram de um determinado setor?

SELECT a.numero_solicitacao
FROM solicitacao as a
INNER JOIN servidor as b 
  on a.SIAPE_Solicitante = b.SIAPE
WHERE b.setor_alocado="CSI";

db.solicitacao.aggregate([
    {$lookup:{from:"servidor", localField:"id_siape", foreignField:"_id", as: "setores"}},
    {$unwind:"$setores"},
    {$match:{"setores.setor.setor_id":"csi"}},
    {$project:{numero_solicitacao:1, _id:0}}
]);