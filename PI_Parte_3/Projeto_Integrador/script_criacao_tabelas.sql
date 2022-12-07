create database portaria;

use portaria;

create table cadastro_controlador(
id INT not null auto_increment,
nome varchar(45) not null,
sobrenome varchar(100) not null,
email varchar(45) not null unique,
telefone varchar(20) not null unique,
turno varchar(10) not null,
primary key(id)
);

create table login_portaria(
id int not null auto_increment,
login varchar(10) not null unique,
senha varchar(10) not null,
cadastro_controaldor_id int,
primary key(id),
FOREIGN KEY(cadastro_controaldor_id) REFERENCES cadastro_controlador(id)
);

create table operador_portaria(
id int not null auto_increment,
login_portaria_id int,
data_hora_login datetime,
data_hora_logout datetime,
primary key(id),
foreign key(login_portaria_id) references login_portaria(id)
);

create table cad_ajudante_motorista(
id int not null auto_increment,
nome varchar(45) not null,
sobrenome varchar(45) not null,
RG varchar(20) not null unique,
nome_empresa varchar(45) not null,
primary key(id)
);

create table cadastro_motorista(
id int not null auto_increment,
operador_portaria_id int,
nome varchar(45) not null,
sobrenome varchar(100) not null,
RG varchar(20) not null unique,
nome_transportadora varchar(100) not null,
se_ajudante varchar(3) not null,
cad_ajudante_motorista_id int,
primary key(id),
foreign key(operador_portaria_id) references operador_portaria(id),
foreign key(cad_ajudante_motorista_id) references cad_ajudante_motorista(id)
);

create table formulario(
id int not null auto_increment,
operador_portaria_id int,
cadastro_motorista_id int,
data_hora_chegada datetime,
placa_veiculo varchar(45) not null,
nome_cliente varchar(45) not null,
coleta_descarga varchar(8) not null,
se_descarga_notafiscal int(10),
primary key(id),
foreign key(operador_portaria_id) references operador_portaria(id),
foreign key(cadastro_motorista_id) references cadastro_motorista(id)
);

create table cadastro_visitante(
id int not null auto_increment,
operador_portaria_id int,
nome varchar(45) not null,
sobrenome varchar(100) not null,
RG varchar(20) not null unique,
nome_empresa varchar(45) not null,
setor varchar(45) not null,
termo_responsa_ass varchar(3),
primary key(id),
foreign key(operador_portaria_id) references operador_portaria(id)
);

create table controle_visitas(
id int not null auto_increment,
cadastro_visitante_id int,
operador_portaria_id int,
visita_para varchar(45) not null,
data_entrada datetime not null,
data_saida datetime not null,
numero_cracha decimal(10) not null,
primary key(id),
foreign key(cadastro_visitante_id) references cadastro_visitante(id),
foreign key(operador_portaria_id) references operador_portaria(id)
);

create table cadastro_funcionarios(
id int not null auto_increment,
nome varchar(45) not null,
sobrenome varchar(45) not null,
cargo varchar(45) not null,
setor varchar(45) not null,
primary key(id)
);
 

create table controle_funcionarios(
id int not null auto_increment,
operador_portaria_id int,
cadastro_funcionarios_id int,
data_entrada datetime,
data_saida datetime,
primary key(id),
foreign key(operador_portaria_id) references operador_portaria(id),
foreign key(cadastro_funcionarios_id) references cadastro_funcionarios(id)
);

create table login_expedicao(
id int not null auto_increment,
login varchar(20) not null unique,
senha varchar(10) not null,
cadastro_funcionarios_id int,
primary key(id),
foreign key(cadastro_funcionarios_id) references cadastro_funcionarios(id)
);

create table descarga(
id int not null auto_increment,
formulario_id int,
primary key(id),
foreign key(formulario_id) references formulario(id)
);

create table login_financeiro(
id int not null auto_increment,
login varchar(10) not null unique,
senha varchar(10) not null,
cadastro_funcionarios_id int,
primary key(id),
foreign key(cadastro_funcionarios_id) references cadastro_funcionarios(id)
);

create table operador_financeiro(
id int not null auto_increment,
login_financeiro_id int,
data_hora_login datetime not null,
data_hora_logout datetime not null,
primary key(id),
foreign key(login_financeiro_id) references login_financeiro(id)
);

create table coleta(
id int not null auto_increment,
formulario_id int,
operador_financeiro_id int,
nota_fiscal_coleta decimal(11) not null,
primary key(id),
foreign key(formulario_id) references formulario(id),
foreign key(operador_financeiro_id) references operador_financeiro(id)
);

create table operador_expedicao(
id int not null auto_increment,
login_expedicao_id int,
coleta_id int,
descarga_id int,
data_saida_veiculo datetime not null,
primary key(id),
foreign key(login_expedicao_id) references login_expedicao(id),
foreign key(descarga_id) references descarga(id),
foreign key(coleta_id) references coleta(id)
);








 










