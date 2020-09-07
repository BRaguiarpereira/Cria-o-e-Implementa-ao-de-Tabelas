create database BD_TESTEbrian_aguiar_pereira;

CREATE TABLE TIPOCLIENTE
  (COD_TIPOCLIENTE int(2)      not null,
   DESCR_TIPOCLIENTE varChar(14) not null,
   Primary Key(COD_TIPOCLIENTE))
   Engine=InnoDB;
   
insert into tipocliente values
(12,"ansioso"),
(13,"bravo");
   
CREATE TABLE CLIENTE
  (COD_CLIENTE int(2)      not null,
   NOME_CLIENTE varChar(40) not null,
   CPF_CLIENTE varchar(11),
   CGC_CLIENTE int(8),
   DDD_CLIENTE int(2),
   COD_TIPOCLIENTE int(2),
   TEL_CLIENTE varchar(11),
   ENDERECO_CLIENTE varchar(50),
   Primary Key(COD_CLIENTE),
   FOREIGN KEY (COD_TIPOCLIENTE) REFERENCES TIPOCLIENTE(COD_TIPOCLIENTE)
   )
   Engine=InnoDB;
  
  drop table cliente;
				

   


insert into cliente values
(2,"joao santos","48952522814",45457878,55,12,"11968705178","alameda naoaraguaia"),
(3,"julia santos","78952524814",75457878,55,12,"11928705178","rua silva"),
(4,"gean santos","48952524214",15457878,55,12,"11528705178","rua silva"),
(5,"natalia santos","98952524821",75457821,55,12,"11928705123","rua lopes"),
(6,"brayan santos","12352524814",32157878,55,12,"11912305178","rua palmeiras");

select COD_CLIENTE,NOME_CLIENTE,CPF_CLIENTE,CGC_CLIENTE,DDD_CLIENTE,COD_TIPOCLIENTE,TEL_CLIENTE,ENDERECO_CLIENTE FROM cliente;
   
   	
   
