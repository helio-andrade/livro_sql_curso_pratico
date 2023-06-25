create table album (
	codigo_album integer not null,
    codigo_gravadora integer null,
    nome_album varchar(60) null,
    preco_venda decimal(16,2) null,
    data_lancamento date default current_date,
    album_indicado integer null, 
    primary key (codigo_album),
    foreign key (codigo_gravadora) 
    references gravadora (codigo_gravadora),
    check (preco_venda > 0)
);
