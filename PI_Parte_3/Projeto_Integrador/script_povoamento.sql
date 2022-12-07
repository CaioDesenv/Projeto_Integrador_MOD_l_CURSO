use portaria;

insert into cadastro_controlador(nome,sobrenome,email,telefone,turno)
values	('Alcides','Moreira','moreira@email.com',11999866897,'Noite'),
		('Adelmo','Ferreira','a.ferreira@hotmail.com',11787895422,'Noite'),
		('Dirceu','Alves','alves_254@gmail.com',19457689122,'Dia'),
        ('Vinicius','Lopes','timão_554@hotmail.com',11445524257,'Dia');

insert into login_portaria(login,senha,cadastro_controaldor_id)
values		('alci123','senha123','1'),
			('adel456','senha456','2'),
            ('dirc789','senha789','3'),
            ('vini321','senha321','4');

insert into operador_portaria(login_portaria_id,data_hora_login,data_hora_logout)
values		('1','2022-10-10 18:05:21','2022-10-11 05:54:02'),
			('3','2022-10-11 06:02:36','2022-10-11 17:45:54'),
            ('2','2022-10-11 18:01:08','2022-10-12 05:55:12'),
            ('4','2022-10-12 06:01:44','2022-10-12 17:52:50'),
            ('1','2022-10-12 18:07:11','2022-10-13 05:50:24'),
            ('3','2022-10-13 05:55:01','2022-10-13 17:58:02'),
            ('2','2022-10-13 17:59:50','2022-10-14 05:54:22'),
            ('4','2022-10-14 06:02:30','2022-10-14 18:05:34');


insert into cadastro_visitante(operador_portaria_id,nome,sobrenome,RG,nome_empresa,setor,termo_responsa_ass)
values 		('3','Paulo','Takahama','15.122.740-8','Itibam','Adm','Sim'),
			('3','Jefeson','Santana','44.049.742-5','J-Santana','Obras','Sim'),
            ('3','Lucas','Furtunato','24.941.429-6','R-Plasticos','Vendas','Sim'),
            ('4','João','Fernando','32.135.080-7','TuboMais','Logistica','Sim'),
            ('4','Juliana','Beatriz','12.200.147-1','Gravapar','Financeiro','Sim'),
            ('4','Flavio','Suzano','52.365.452-8','Tecnochiller','Manutenção','Sim');
            
select * from cadastro_motorista;
select * from cad_ajudante_motorista;

insert into cad_ajudante_motorista(nome,sobrenome,RG,nome_empresa)
values 		('Rodrigo','Garcia','12.457.966-4','Efitros Transp'),
			('Eduardo','Barbosa','40.654.214-5','Trans Santos'),
            ('Davi','Mendez','63.332.658-9','Tubo-Azul');
            
            
insert into cadastro_motorista(operador_portaria_id,nome,sobrenome,RG,nome_transportadora,se_ajudante,cad_ajudante_motorista_id)
values		#('3','Claudinei','Ricardo','10.254.514-7','Emanuplaz','Nao',null);
			('3','Helio','souza','52.445.000-9','Efitros Transp','Sim','1'),
            ('3','Joao','Domingues','44.698.7890-4','Japi','Nao',null),
            ('4','Davinilson','Jacob','41.555.744-6','Trans Santos','Sim','2'),
            ('4','Pedro','Ferreira','70.874.896.6','Tubo-Azul','Sim','3'),
            ('4','Fernando','Dalmazio','66.654.8-8','Multicolor','Nao',null);
            

insert into controle_visitas(cadastro_visitante_id,operador_portaria_id,visita_para,data_entrada,data_saida,numero_cracha)
values 		('37','3','Ricardo Kuno','2022-10-11 09:32:15','2022-10-11 11:47:02','05'),
			('38','3','Wagner Rosa','2022-10-11 10:30:24','2022-10-11 13:12:36','12'),
            ('39','3','Henrique Takashi','2022-10-11 14:22:11','2022-10-11 16:55:12','08'),
            ('40','4','Gustavo Munhoz','2022-10-12 08:55:22','2022-10-12 12:17:00','03'),
            ('41','4','Caroline Castanho','2022-10-12 09:25:12','2022-10-12 11:32:24','02'),
            ('42','4','Fulvio Silva','2022-10-12 09:30:11','2022-10-12 16:35:22','22');
            


insert into formulario(operador_portaria_id, cadastro_motorista_id,
data_hora_chegada,placa_veiculo,nome_cliente,coleta_descarga,
se_descarga_notafiscal)

values		(4,6,'2022-10-12 12:59:02','CPZ-5E22','Multicolor','Descarga',000234),
			(4,2,'2022-10-12 14:20:11','XYA-6Z22','Efitros Transp','Coleta',null),
            (4,3,'2022-10-12 15:32:15','FMZ-8L88','Japi','Descarga',00245),
            (3,1,'2022-10-13 08:10:00','DMZ-4K56','Emanuplaz','Descarga',00124),
            (3,1,'2022-10-13 08:11:29','DMZ-4K56','Emanuplaz','Coleta',null),
            (3,6,'2022-10-13 09:35:42','YHR-8P55','Multicolor','Descarga',000224),
            (3,5,'2022-10-13 10:35:55','KJH-2277','Tbu-Azul','Coleta',null);
            
            
insert into cadastro_funcionarios(nome,sobrenome,cargo,setor)
values 		('Olavio','Octavios','Assistente de vendas','Financeiro'),
			('Karina','Potter','Assistente Fiscal','Financeiro'),
            ('Gustavo','Rodrigues','Encarregado','Expedição'),
            ('Mateus','Marcuco','Assistente de logistica','Expedição'),
            ('Adriana','Aguiar','Encarregado','RH'),
            ('Marcos','Pontoco','Encarregado','Vendas'),
            ('João','Pereira','Mecânico','Manutenção'),
            ('Fulvio','Juan','Encarregado','Manutenção'),
            ('Juan','Mairion','Ajudante geral','Produção'),
            ('Lucas','Martins','Empilhaderistas','Produção'),
            ('Igor','Luan','Operador-2','Produção'),
            ('Mariano','Cartes','Encarregado','Produção');
            

insert into login_financeiro(login,senha,cadastro_funcionarios_id)
values		('Olavio123','senha123','1'),
			('Karina123','senha123','2');
            

insert into operador_financeiro(login_financeiro_id,data_hora_login,
data_hora_logout)
values 		('1','2022-10-12 08:00:03','2022-10-12 17:10:12'),
			('2','2022-10-13 08:05:12','2022-10-13 17:02:02');

insert into coleta(formulario_id,operador_financeiro_id,nota_fiscal_coleta)
VALUES 		('2','1','000111'),
			('5','2','00022'),
            ('7','2','02022');
            
insert into descarga(formulario_id)
values 		('1'),
			('3'),
            ('4'),
            ('6');
            

insert into login_expedicao(login,senha,cadastro_funcionarios_id)
values 		('gustavo123','senha123','3'),
			('mateus123','senha123','4');

insert into operador_expedicao(login_expedicao_id,coleta_id,descarga_id,data_saida_veiculo)
values		('2','1',null,'2022-10-12 16:14:21'),
			('2','2',null,'2022-10-13 09:37:22'),
            ('2','3',null,'2022-10-13 13:45:10'),
            ('1',null,'1','2022-10-12 15:21:14'),
            ('2',null,'2','2022-10-12 17:04:06'),
            ('2',null,'3','2022-10-13 10:48:25'),
            ('2',null,'4','2022-10-13 11:25:14');


insert into controle_funcionarios(operador_portaria_id,cadastro_funcionarios_id,data_entrada,data_saida)
values 		('2','1','2022-10-11 07:32:36','2022-10-11 18:05:01'),
			('2','2','2022-10-11 08:05:10','2022-10-11 18:00:30'),
			('2','3','2022-10-11 07:30:25','2022-10-11 18:22:10'),
            ('2','4','2022-10-11 07:35:21','2022-10-11 18:05:19'),
            ('2','5','2022-10-11 06:45:11','2022-10-11 17:02:01'),
            ('2','6','2022-10-11 08:12:14','2022-10-11 17:21:00'),
            ('2','7','2022-10-11 06:55:12','2022-10-11 17:15:14'),
            ('2','8','2022-10-11 08:11:20','2022-10-11 17:10:11'),
            ('2','9','2022-10-11 05:42:11','2022-10-11 14:22:11'),
            ('2','10','2022-10-11 05:48:00','2022-10-11 14:35:11'),
            ('2','11','2022-10-11 05:55:01','2022-10-11 14:55:21'),
            ('2','12','2022-10-11 05:39:25','2022-10-11 15:12:14'),
            
            ('6','1','2022-10-13 07:32:36','2022-10-13 18:05:01'),
			('6','2','2022-10-13 08:05:10','2022-10-13 18:00:30'),
			('6','3','2022-10-13 07:30:25','2022-10-13 18:22:10'),
            ('6','4','2022-10-13 07:35:21','2022-10-13 18:05:19'),
            ('6','5','2022-10-13 06:45:11','2022-10-13 17:02:01'),
            ('6','6','2022-10-13 08:12:14','2022-10-13 17:21:00'),
            ('6','7','2022-10-13 06:55:12','2022-10-13 17:15:14'),
            ('6','8','2022-10-13 08:11:20','2022-10-13 17:10:11'),
            ('6','9','2022-10-13 05:42:11','2022-10-13 14:22:11'),
            ('6','10','2022-10-13 05:48:00','2022-10-13 14:35:11'),
            ('6','11','2022-10-13 05:55:01','2022-10-13 14:55:21'),
            ('6','12','2022-10-13 05:39:25','2022-10-13 15:12:14'),
            
            ('4','1','2022-10-12 07:32:36','2022-10-12 18:05:01'),
			('4','2','2022-10-12 08:05:10','2022-10-12 18:00:30'),
			('4','3','2022-10-12 07:30:25','2022-10-12 18:22:10'),
            ('4','4','2022-10-12 07:35:21','2022-10-12 18:05:19'),
            ('4','5','2022-10-12 06:45:11','2022-10-12 17:02:01'),
            ('4','6','2022-10-12 08:12:14','2022-10-12 17:21:00'),
            ('4','7','2022-10-12 06:55:12','2022-10-12 17:15:14'),
            ('4','8','2022-10-12 08:11:20','2022-10-12 17:10:11'),
            ('4','9','2022-10-12 05:42:11','2022-10-12 14:22:11'),
            ('4','10','2022-10-12 05:48:00','2022-10-12 14:35:11'),
            ('4','11','2022-10-12 05:55:01','2022-10-12 14:55:21'),
            ('4','12','2022-10-12 05:39:25','2022-10-12 15:12:14'),

			('8','1','2022-10-14 07:32:36','2022-10-14 18:05:01'),
			('8','2','2022-10-14 08:05:10','2022-10-14 18:00:30'),
			('8','3','2022-10-14 07:30:25','2022-10-14 18:22:10'),
            ('8','4','2022-10-14 07:35:21','2022-10-14 18:05:19'),
            ('8','5','2022-10-14 06:45:11','2022-10-14 17:02:01'),
            ('8','6','2022-10-14 08:12:14','2022-10-14 17:21:00'),
            ('8','7','2022-10-14 06:55:12','2022-10-14 17:15:14'),
            ('8','8','2022-10-14 08:11:20','2022-10-14 17:10:11'),
            ('8','9','2022-10-14 05:42:11','2022-10-14 14:22:11'),
            ('8','10','2022-10-14 05:48:00','2022-10-14 14:35:11'),
            ('8','11','2022-10-14 05:55:01','2022-10-14 14:55:21'),
            ('8','12','2022-10-14 05:39:25','2022-10-14 15:12:14');




            
            

             
            

