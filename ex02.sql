CREATE TABLE CARGO
  (COD_CARGO int(2)      not null,
   DESCR_CARGO varChar(30) not null,
   Primary Key(COD_CARGO))
   Engine=InnoDB;
 
 insert into cargo values
 (1,"padeiro"),
 (2,"açogueiro"),
 (3,"bombeiro"),
 (4,"policial"),
 (5,"uber"),
 (6,"leiteiro"),
 (7,"atendente");
 

CREATE TABLE DEPARTAMENTO
  (COD_DEPTO int(2)      not null,
   DESCR_DEPTO varChar(14) not null,
   Primary Key(COD_DEPTO))
   Engine=InnoDB;
   
 insert into departamento values
 (1,"administrativo"),
 (2,"RH"),
 (3,"financeiro"),
 (4,"comercial"),
 (5,"segurança"),
 (6,"vendas"),
 (7,"atendente");
   
CREATE TABLE ESTADO_CIVIL 
  (COD_ESTCIVIL int(2)      not null,
   DESCR_ESTCIVIL varChar(10) not null,
   Primary Key(COD_ESTCIVIL))
   Engine=InnoDB;
   
insert into estado_civil values
(1,"casado"),
(2,"solteiro");
   
CREATE TABLE ESCOLARIDADE 
  (COD_ESCOLARIDADE int(2)      not null,
   DESCR_ESCOLARIDADE varChar(30) not null,
   Primary Key(COD_ESCOLARIDADE))
   Engine=InnoDB;
   
insert into escolaridade values
(1,"ensino medio completo"),
(2,"ensino superior"),
(3,"cursando ensino superior");
drop table empregado;
CREATE TABLE EMPREGADO
  (COD_EMP int(2)      not null,
   NOME_EMP varChar(40) not null,
   CPF_EMP varchar(11),
   CTPS_EMP varchar(11),
   DDD_CLIENTE int(2),
   COD_CARGO int(2),
   COD_DEPTO int(2),
   COD_ESTCIVIL int(2),
   COD_ESCOLARIDADE int(2),
   TEL_EMP varchar(11),
   END_EMP varchar(50),
   SALARIO_EMP float(10),
   SEXO_EMP char(1) check (SEXO_EMP="m" or SEXO_EMP="f"),
   Primary Key(COD_EMP),
   FOREIGN KEY (COD_CARGO) REFERENCES CARGO(COD_CARGO),
   FOREIGN KEY (COD_DEPTO) REFERENCES DEPARTAMENTO(COD_DEPTO),
   FOREIGN KEY (COD_ESTCIVIL) REFERENCES ESTADO_CIVIL(COD_ESTCIVIL),
   FOREIGN KEY (COD_ESCOLARIDADE) REFERENCES ESCOLARIDADE(COD_ESCOLARIDADE)
   )
   Engine=InnoDB;

insert into empregado values
(1,"julia santos","78952524814",75457878589,55,7,1,2,3,"11928705178","rua silva",1500,"f"),
(2,"gean santos","48952524214",15457878489,55,4,5,1,1,"11528705178","rua silva luiz",7000,"m"),
(3,"natalia santos","98952524821",89457878589,55,7,1,2,3,"11928705178","rua lopes",2000,"f"),
(4,"brayan santos","12352524814",32157878786,55,3,5,1,2,"11912305178","rua palmeiras",2250,"m"),
(5,"fernanda santos","12352524814",32157878223,55,7,1,2,2,"11912305178","rua palmeiras joao",2000,"f"),
(6,"joquinha santos","12352524814",32151278784,55,6,6,1,1,"11912305178","rua diretriz",1400,"m");

select * from empregado where cod_emp = 4 ;