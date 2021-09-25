-- Implementação com as relaçoões

CREATE DATABASE ecommerce;

DROP TABLE IF EXISTS "clientes";
CREATE TABLE "clientes"(
  cpf varchar(11) primary key not null unique,
  nome varchar (150)
);

DROP TABLE IF EXISTS "vendedores";
CREATE TABLE "vendedores" (
  cpf varchar(11) primary key not null unique,
  nome varchar(150)
);

DROP TABLE IF EXISTS "pedidos";
CREATE TABLE "pedidos" (
  id serial primary key,
  valor int not null,
  cliente_cpf varchar(11) not null references clientes(cpf),
  vendedor_cpf varchar(11) not null references vendedores(cpf)
);

DROP TABLE IF EXISTS "categorias";
CREATE TABLE "categorias" (
  id serial primary key,
  nome varchar(50) not null
);

DROP TABLE IF EXISTS "produtos";
CREATE TABLE "produtos" (
  id serial primary key,
  nome varchar(100) not null,
  descricao text not null,
  preco int not null,
  quantidade_em_estoque int not null,
  categoria_id int not null references categorias(id)
);

DROP TABLE IF EXISTS "items_de_pedido";
CREATE TABLE "items_de_pedido" (
  id serial primary key,
  pedido_id int not null references pedidos(id),
  quantidade int not null,
  produto_id int not null references produtos(id)
);

-- Alimentar as tabelas com as informações
-- CATEGORIAS
INSERT INTO categorias (nome) 
VALUES ('frutas'), ('verduras'), ('massas'), ('bebidas'), ('utilidades');

-- PRODUTOS
INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Mamão',
  'Rico em vitamina A, potássio e vitamina C',
  300,
  123,
  1
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Maça',
  'Fonte de potássio e fibras.',
  90,
  34,
  1
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Cebola',
  'Rico em quercetina, antocianinas, vitaminas do complexo B, C.',
  50,
  76,
  2
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Abacate',
  'NÃO CONTÉM GLÚTEN.',
  150,
  64,
  1
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Tomate',
  'Rico em vitaminas A, B e C.',
  125,
  88,
  2
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Acelga',
  'NÃO CONTÉM GLÚTEN.',
  235,
  13,
  2
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Macarrão parafuso',
  'Sêmola de trigo enriquecida com ferro e ácido fólico, ovos e corantes naturais',
  690,
  5,
  3
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Massa para lasanha',
  'Uma reunião de família precisa ter comida boa e muita alegria.',
  875,
  19,
  3
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Refrigerante coca cola lata',
  'Sabor original',
  350,
  189,
  4
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Refrigerante Pepsi 2l',
  'NÃO CONTÉM GLÚTEN. NÃO ALCOÓLICO.',
  700,
  12,
  4
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Cerveja Heineken 600ml',
  'Heineken é uma cerveja lager Puro Malte, refrescante e de cor amarelo-dourado',
  1200,
  500,
  4
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Agua mineral sem gás',
  'Smartwater é água adicionado de sais mineirais (cálcio, potássio e magnésio) livre de sódio e com pH neutro.',
  130,
  478,
  4
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Vassoura',
  'Pigmento, matéria sintética e metal.',
  2350,
  30,
  5
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Saco para lixo',
  'Reforçado para garantir mais segurança',
  1340,
  90,
  5
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Escova dental',
  'Faça uma limpeza profunda com a tecnologia inovadora',
  1000,
  44,
  5
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Balde para lixo 50l',
  'Possui tampa e fabricado com material reciclado',
  2290,
  55,
  5
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Manga',
  'Rico em Vitamina A, potássio e vitamina C',
  198,
  176,
  1
);

INSERT INTO produtos (
  nome,
  descricao,
  preco,
  quantidade_em_estoque,
  categoria_id
) 
VALUES (
  'Uva',
  'NÃO CONTÉM GLÚTEN.',
  420,
  90,
  1
);

-- CLIENTES

INSERT INTO clientes (
  cpf,
  nome
) 
VALUES (
  '80371350042',
  'José Augusto Silva'
),
(
  '67642869061',
  'Antonio Oliveira'
),
(
  '63193310034',
  'Ana Rodrigues'
),
(
  '75670505018',
  'Maria da Conceição'
)

-- VENDEDORES

INSERT INTO vendedores (
  cpf,
  nome
) 
VALUES (
  '82539841031',
  'Rodrigo Sampaio'
),
(
  '23262546003',
  'Beatriz Souza Santos'
),
(
  '28007155023',
  'Carlos Eduardo'
)


-- 5 - vendas
-- a)

INSERT INTO pedidos (
  valor,
  cliente_cpf,
  vendedor_cpf
) VALUES (
  9650,
  '80371350042',
  '28007155023'
);

INSERT INTO items_de_pedido (
  pedido_id,
  quantidade,
  produto_id
) 
VALUES (1, 1, 1), (1, 1, 11), (1, 6, 12), (1, 1, 16), (1, 5, 3);

UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 1) WHERE id = 1;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 1) WHERE id = 11;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 6) WHERE id = 12;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 1) WHERE id = 16;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 5) WHERE id = 3;

-- b)

INSERT INTO pedidos (
  valor,
  cliente_cpf,
  vendedor_cpf
) VALUES (
  6370,
  '63193310034',
  '23262546003'
);

INSERT INTO items_de_pedido (
  pedido_id,
  quantidade,
  produto_id
) 
VALUES (2, 10, 18), (2, 3, 19), (2, 5, 1), (2, 10, 6), (2, 2, 7);

UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 10) WHERE id = 18;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 3) WHERE id = 19;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 5) WHERE id = 1;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 10) WHERE id = 6;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 2) WHERE id = 7;

-- c)

INSERT INTO pedidos (
  valor,
  cliente_cpf,
  vendedor_cpf
) VALUES (
  4120,
  '75670505018',
  '23262546003'
);

INSERT INTO items_de_pedido (
  pedido_id,
  quantidade,
  produto_id
) 
VALUES (3, 1, 14), (3, 6, 13), (3, 5, 18);

UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 1) WHERE id = 14;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 6) WHERE id = 13;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 5) WHERE id = 18;

-- d)

INSERT INTO pedidos (
  valor,
  cliente_cpf,
  vendedor_cpf
) VALUES (
  9370,
  '75670505018',
  '82539841031'
);

INSERT INTO items_de_pedido (
  pedido_id,
  quantidade,
  produto_id
) 
VALUES (4, 1, 17), (4, 6, 19), (4, 1, 8), (4, 3, 1), (4, 20, 6), (4, 2, 7);

UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 1) WHERE id = 17;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 6) WHERE id = 19;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 1) WHERE id = 8;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 3) WHERE id = 1;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 20) WHERE id = 6;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 2) WHERE id = 7;

-- e)
    
INSERT INTO pedidos (
  valor,
  cliente_cpf,
  vendedor_cpf
) VALUES (
  8229,
  '67642869061',
  '82539841031'
);

INSERT INTO items_de_pedido (
  pedido_id,
  quantidade,
  produto_id
) 
VALUES (5, 8, 19), (5, 1, 9), (5, 3, 18), (5, 8, 6), (5, 2, 12);

UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 8) WHERE id = 19;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 1) WHERE id = 9;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 3) WHERE id = 18;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 8) WHERE id = 6;
UPDATE produtos SET quantidade_em_estoque = (quantidade_em_estoque - 2) WHERE id = 12;

-- 6 - consultas
-- a)

SELECT
	produtos.nome, categorias.nome as nome_da_categoria
FROM produtos
JOIN categorias on categorias.id = produtos.categoria_id;

-- b) 

SELECT
	vendedores.nome, clientes.nome
FROM pedidos
JOIN vendedores ON vendedores.cpf = pedidos.vendedor_cpf
JOIN clientes on clientes.cpf = pedidos.cliente_cpf;

-- c) 

SELECT 
	categorias.nome, SUM(quantidade_em_estoque) AS soma_de_estoque_disponivel
FROM categorias
JOIN produtos ON produtos.categoria_id = categorias.id
GROUP BY categorias.nome;

-- d) 

SELECT
	produtos.nome, SUM(quantidade) as quantidade_vendida
FROM produtos
JOIN items_de_pedido ON items_de_pedido.produto_id = produtos.id
GROUP BY produtos.nome;
