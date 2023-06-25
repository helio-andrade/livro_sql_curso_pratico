create table autor(
	codigo_autor integer not null,
    nome_autor varchar(60) null
);

alter table autor (add primary key (codigo_autor));

create table album(
    codigo_album integer not null,
    codigo_gravadora integer null,
    nome_album varchar(60) null,
    preco_venda decimal(16,2) null,
    data_lancamento date null,
    album_indicado integer null
);

alter table album (add primary key (codigo_album));