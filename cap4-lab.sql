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

alter table album (add primary key (codigo_album));

create table gravadora (
    codigo_gravadora    integer not null,
    nome_gravadora      varchar(60) null,
    endereco            varchar(60) null,
    telefone            varchar(20) null,    
    contato             varchar(20) null,
    url_site            varchar(80) null
);

alter table gravadora (add primary key (codigo_gravadora));

create table item_album (
    codigo_musica       integer not null,
    codigo_album        integer not null,
    numero_faixa        integer not null
);

alter table item_album (add primary key (codigo_album, codigo_musica));

create table musica (
    codigo_musica       integer not null,
    nome_musica         varchar(60) null,
    duracao             decima(6,2) null
);