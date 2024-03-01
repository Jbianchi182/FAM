create table usuario(
id_user number(10),
nickname varchar2(20),
email varchar2(100),
senha varchar2(20),
nome varchar2(100),
n_telefone number(10),
data_nasc date,
endereco varchar2(100),
id_categoria number(8));

create table categoria(
id_categoria number(8),
nome_categoria varchar2(20));

create table telefone(
id_telefone number(8),
ddi number(4),
ddd number(4),
telefone number(10));

create table telefone_user(
id_user number(10),
id_telefone number(8));

create table endereco(
id_endereco number(8),
pais varchar2(20),
estado varchar2(20),
cidade varchar2(50),
bairro varchar2(50),
logradouro varchar2(100),
numero_res number(8),
complemento varchar2(10),
cep number(10));

create table endereco_user(
id_user number(10),
id_endereco number(8));

create table moeda(
id_moeda number(10),
nome varchar2(50),
descricao varchar2(100),
valor_nominal number(10,2),
valor_mercado number(10,2),
id_emissao number(8),
id_raridade number(8));

create table usuario_moeda(
id_moeda number(10),
id_user number(10));

create table raridade(
id_raridade number(8),
classificacao varchar2(10));

create table emissoes(
id_emissao number(8),
epoca varchar2(20),
ano_emissao date,
n_emissoes number(10));

create table local_fabricacao(
id_fabricacao number(4),
nome_local varchar2(50));

create table local_emissao(
id_emissao number(8),
id_fabricacao number(4));

create table tema(
id_tema number(8),
data_comemorativa varchar2(5),
img_tema varchar2(50),
carimbo varchar2(50));

create table emissao_tema(
id_tema number(8),
id_emissao number(8));

create table esp_tec(
id_tec number(8),
formato varchar2(20),
espessura number(8,3),
peso number(8,3),
diametro number(8,3));

create table emissao_tec(
id_tec number(8),
id_emissao number(8));


alter table usuario
add constraint pk_id_user primary key (id_user);

alter table categoria
add constraint pk_id_categoria primary key (id_categoria);

alter table telefone
add constraint pk_id_telefone primary key (id_telefone);

alter table telefone_user
add constraint pk_id_telefone_user primary key (id_telefone, id_user);

alter table endereco
add constraint pk_id_endereco primary key (id_endereco);

alter table endereco_user
add constraint pk_id_endereco_user primary key (id_endereco, id_user);

alter table moeda
add constraint pk_id_moeda primary key (id_moeda);

alter table usuario_moeda
add constraint pk_id_usuario_moeda primary key (id_user, id_moeda);

alter table raridade
add constraint pk_id_raridade primary key (id_raridade);

alter table emissoes
add constraint pk_id_emissao primary key (id_emissao);

alter table local_fabricacao
add constraint pk_id_fabricacao primary key (id_fabricacao);

alter table local_emissao
add constraint pk_id_local_emissao primary key (id_emissao, id_fabricacao);

alter table tema
add constraint pk_id_tema primary key (id_tema);

alter table emissao_tema
add constraint pk_id_emissao_tema primary key (id_emissao, id_tema);

alter table esp_tec
add constraint pk_id_tec primary key (id_tec);

alter table emissao_tec
add constraint pk_id_emissao_tec primary key (id_emissao, id_tec);

alter table usuario
add constraint fk_id_categoria foreign key (id_categoria) references categoria (id_categoria);

alter table moeda
add constraint fk_id_emissao foreign key (id_emissao) references emissoes (id_emissao);

alter table moeda
add constraint fk_id_raridade foreign key (id_raridade) references raridade (id_raridade);
