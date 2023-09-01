create table autor(
	codigo_autor        integer not null,
    nome_autor          varchar(60) null
);

alter table autor (add primary key (codigo_autor));

create table album(
    codigo_album        integer not null,
    codigo_gravadora    integer null,
    nome_album          varchar(60) null,
    preco_venda         decimal(16,2) null,
    data_lancamento     date null,
    album_indicado      integer null
);

alter table album add primary key (codigo_album);

create table gravadora (
    codigo_gravadora    integer not null,
    nome_gravadora      varchar(60) null,
    endereco            varchar(60) null,
    telefone            varchar(20) null,    
    contato             varchar(20) null,
    url_site            varchar(80) null
);

alter table gravadora add primary key (codigo_gravadora);

create table item_album (
    codigo_musica       integer not null,
    codigo_album        integer not null,
    numero_faixa        integer not null
);

alter table item_album add primary key (codigo_album, codigo_musica);

create table musica (
    codigo_musica       integer not null,
    nome_musica         varchar(60) null,
    duracao             decimal(6,2) null
);

alter table musica add primary key (codigo_musica);

create table musica_autor (
    codigo_musica       integer not null, 
    codigo_autor        integer not null
);

alter table musica_autor add primary key (codigo_musica, codigo_autor);

create table album_categoria (
    codigo_categoria integer not null,
    menor_preco decimal(14,2) not null,
    maior_preco decimal(14,2) not null
);

alter table album
    add foreign key (codigo_gravadora)
    references gravadora;

alter table album 
    add constraint album_album 
    foreign key (album_indicado) 
    references album;

alter table item_album 
    add foreign key (codigo_musica) 
    references musica;

alter table item_album 
    add foreign key (codigo_album) 
    references album;

alter table musica_autor 
    add foreign key (codigo_autor) 
    references autor;

alter table musica 
    add foreign key (codigo_musica) 
    references musica;