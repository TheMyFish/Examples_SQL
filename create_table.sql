select count(*) as qt_clientes from cliente
select * from nota
select * from cliente
select * from produto
select * from item 

insert into produto values (1,'papel','A')
insert into nota values (4,2,'2009/01/15','ANA')		
insert into nota values (2,1,'2009/01/','ANA')

insert into cliente values (4,'FERNANDA','ANA')

insert into item values (4,1,10,100)

SELECT NOW();

-- resposta 01
select cliente.clinome,sum(item.valor) from cliente
join nota on cliente.clicod = nota.clicod
join item on nota.nf = item.nf
where nota.date between '2009-01-01' and '2009-01-31'
group by cliente.clinome

-- resposta 02
select count(*) as qt_cliente from cliente

-- resposta 03



select cliente.clinome,item.valor from cliente
join nota on cliente.clicod = nota.clicod
join item on nota.nf = item.nf
where nota.date between '2009-01-01' and '2009-01-31'
order by item.valor desc

ALTER TABLE nota
ADD CONSTRAINT fk_idcliente FOREIGN KEY (clicod)
REFERENCES cliente(clicod);

ALTER TABLE item
ADD CONSTRAINT fk_idproduto FOREIGN KEY (prodcod) 
REFERENCES produto(prodcod);

ALTER TABLE item
ADD CONSTRAINT fk_idnf FOREIGN KEY (nf) 
REFERENCES nota(nf);

ALTER TABLE item
ADD UNIQUE (nf);

ALTER TABLE nota
ADD UNIQUE (nf);


ALTER TABLE nota DROP CONSTRAINT clicod_pkey
