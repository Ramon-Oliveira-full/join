USE cine_senai_max;

SELECT * FROM alugueis join clientes ON alugueis.id_cliente = clientes.id_cliente;

SELECT * FROM alugueis join filmes ON alugueis.id_filme = filmes.id_filme;

SELECT filmes.titulo, atores.nome_ator FROM atuacoes join atores ON atuacoes.id_ator = atores.id_ator JOIN filmes ON atuacoes.id_filme = filmes.id_filme;

SELECT f.titulo, a.nome_ator FROM atuacoes atu join atores a ON atu.id_ator = a.id_ator JOIN filmes f ON atu.id_filme = f.id_filme;

SELECT cl.nome_cliente, f.titulo FROM alugueis alu JOIN clientes cl ON alu.id_cliente = cl.id_cliente join filmes f on alu.id_filme = f.id_filme order by cl.id_cliente asc;

SELECT cl.nome_cliente, f.titulo FROM alugueis alu JOIN clientes cl ON alu.id_cliente = cl.id_cliente join filmes f on alu.id_filme = f.id_filme WHERE YEAR(curdate()) - YEAR(cl.data_nascimento) >= 35 order by cl.id_cliente asc;
-- FAça uma consulta que retorne data do aluguel, nome dos filmes, nome dos atores e nome do cliente

SELECT alu.data_aluguel, f.titulo, a.nome_ator, cl.nome_cliente FROM alugueis alu JOIN clientes cl ON alu.id_cliente = cl.id_cliente join filmes f ON alu.id_filme = f.id_filme JOIN atuacoes atuar join atores a ON atuar.id_ator = a.id_ator;
-- Retorne nome dos filmes que tiveram notas acima da media
SELECT f.titulo from alugueis alu JOIN filmes f ON alu.id_filme = f.id_filme WHERE (select avg(7.9)from alugueis) < nota;

-- Mostre o nome do cliente e a quantidade de filmes alugados por ele Dica use o count() junto com o group by

SELECT CL.nome_cliente FROM alugueis alu JOIN clientes cl ON alu.id_cliente = cl .id_cliente order by ;