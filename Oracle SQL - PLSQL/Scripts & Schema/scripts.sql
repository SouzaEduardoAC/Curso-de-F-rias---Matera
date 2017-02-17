			CREATE TABLE time (
	  id_time NUMBER NOT NULL,
	  nome VARCHAR2(400)
	  );
	  
	CREATE TABLE jogador (
	  id_jogador NUMBER NOT NULL,
	  nome VARCHAR2(400) NOT NULL,
	  dt_nascimento DATE NOT NULL,
	  salario NUMBER(18,2),
	  id_time NUMBER NOT NULL
	  );
	  
	CREATE TABLE tecnico (
	  id_tecnico NUMBER NOT NULL,
	  nome VARCHAR2(400) NOT NULL,
	  dt_nascimento DATE NOT NULL,
	  salario NUMBER(18,2),
	  id_time NUMBER NOT NULL
	  );
	  
	ALTER TABLE time ADD CONSTRAINT pk_id_time PRIMARY KEY(id_time);
	ALTER TABLE jogador ADD CONSTRAINT pk_id_jogador PRIMARY KEY (id_jogador);
	ALTER TABLE tecnico ADD CONSTRAINT pk_id_tecnico PRIMARY KEY (id_tecnico);

	ALTER TABLE jogador ADD CONSTRAINT jogador_time_FK FOREIGN KEY (id_time) REFERENCES time(id_time);
	ALTER TABLE tecnico ADD CONSTRAINT fk_id_time FOREIGN KEY (id_time) REFERENCES time(id_time);

	COMMENT ON TABLE time IS '[CADASTRO] Tabela para armazenamento de times';
	COMMENT ON COLUMN time.id_time IS 'C�digo de indentifica��o do time';
	COMMENT ON COLUMN time.nome IS 'Nome do time';

	COMMENT ON TABLE jogador IS '[CADASTRO] Tabela para armazenamento de jogadores';
	COMMENT ON COLUMN jogador.id_time IS 'C�digo de indentifica��o do jogador';
	COMMENT ON COLUMN jogador.nome IS 'Nome do jogador';
	COMMENT ON COLUMN jogador.dt_nascimento IS 'Data de nascimento do jogador';
	COMMENT ON COLUMN jogador.salario IS 'Sal�rio do jogador';
	COMMENT ON COLUMN jogador.id_time IS 'Chave estrangeira que linka jogador com o time';

	COMMENT ON TABLE tecnico IS '[CADASTRO] Tabela para armazenamento de t�cnicos';
	COMMENT ON COLUMN tecnico.id_time IS 'C�digo de indentifica��o do t�cnico';
	COMMENT ON COLUMN tecnico.nome IS 'Nome do t�cnico';
	COMMENT ON COLUMN tecnico.dt_nascimento IS 'Data de nascimento do t�cnico';
	COMMENT ON COLUMN tecnico.salario IS 'Sal�rio do t�cnico';
	COMMENT ON COLUMN tecnico.id_time IS 'Chave estrangeira que linka t�cnico com o time';

	SELECT * FROM time;
	
	CREATE SEQUENCE seq_time
    MINVALUE 1
    MAXVALUE 999999999999999
    START WITH 1
    INCREMENT BY 1
  NOCACHE;
  
  CREATE SEQUENCE seq_jogador
    MINVALUE 1
    MAXVALUE 999999999999999
    START WITH 1
    INCREMENT BY 1
  NOCACHE;
  
  CREATE SEQUENCE seq_tecnico
    MINVALUE 1
    MAXVALUE 999999999999999
    START WITH 1
    INCREMENT BY 1
  NOCACHE;
  
  SELECT seq_time.NEXTVAL FROM dual;
  
  
  
  INSERT INTO time (id_time,nome) VALUES 
  (seq_time.NEXTVAL,'BARCELONA');
  INSERT INTO time (id_time,nome) VALUES 
  (seq_time.NEXTVAL,'REAL MADRID');
  
  INSERT INTO tecnico (id_tecnico, nome, dt_nascimento, salario, id_time) VALUES 
    (seq_tecnico.NEXTVAL, 'PARRERA','31/12/1980',10500.00,3);
  INSERT INTO tecnico (id_tecnico, nome, dt_nascimento, salario, id_time) VALUES 
    (seq_tecnico.NEXTVAL, 'DUNGA','31/12/1970',10500.00,4);
  
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Juninho Pernambucano', '25/01/1986',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Robinho', '25/01/1986',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Ronaldo', '15/10/1970',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Ronaldinho Gaucho', '25/01/1950',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Neymar', '25/01/1990',800000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Messi', '25/01/1950',8000000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Cristiano Ronaldo', '25/01/1986',8000000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Cafu', '25/01/1986',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Rom�rio', '25/01/1986',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Roberto Carlos', '25/01/1986',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Fred', '25/01/1986',80000.00,3);
    
  SELECT * FROM jogador WHERE id_time = 3;
  SELECT * FROM time;
  SELECT * FROM tecnico WHERE dt_nascimento < '19/01/1976';
  
   INSERT INTO time (id_time, nome) VALUES
 (seq_time.NEXTVAL, 'JUVENTUS');
 

 UPDATE jogador SET id_time = 5 WHERE id_time = 4;
 
 UPDATE jogador SET salario = salario*1.10 WHERE id_time = 5;
 UPDATE tecnico SET salario = salario*1.20;
 
 INSERT INTO time (id_time, nome) VALUES
 (seq_time.NEXTVAL, 'PSG');
 
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Fred', '25/01/1986',80000.00,6);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Fred', '25/01/1986',80000.00,6);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Fred', '25/01/1986',80000.00,6);
    
 UPDATE jogador SET salario = 180000.00 WHERE id_time = 6;
 
 DELETE jogador WHERE salario > 100000.00 AND id_time = 6;
 
 DELETE time WHERE id_time = 6;
 
  CREATE TABLE equipe (
    id_equipe NUMBER NOT NULL,
    nome VARCHAR2(400)
 );
 
  ALTER TABLE equipe ADD CONSTRAINT pk_id_equipe PRIMARY KEY (id_equipe);

  INSERT INTO EQUIPE (id_equipes, nome)
  SELECT id_time, nome FROM time;
  
  ALTER TABLE jogador DROP CONSTRAINT jogador_time_FK;
  ALTER TABLE tecnico DROP CONSTRAINT fk_id_time;
  
  ALTER TABLE time DROP CONSTRAINT pk_id_time;
    
  ALTER TABLE jogador RENAME COLUMN id_time TO id_equipe;
  ALTER TABLE tecnico RENAME COLUMN id_time TO id_equipe;
  
  ALTER TABLE jogador ADD CONSTRAINT jogador_equipe_FK FOREIGN KEY (id_equipe) REFERENCES equipes(id_equipe);
  ALTER TABLE tecnico ADD CONSTRAINT tecnico_equipe_FK FOREIGN KEY (id_equipe) REFERENCES equipes(id_equipe);
  
  DROP TABLE time;

INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Cesar',87700,'12/01/1987',8);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Lucio',67700,'12/01/1987',8);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Edgar',888,'12/01/1987',8);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Luiz',6770880,'12/01/1987',8);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Parrera',67700,'12/01/1987',8);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Adalberto',645457700,'12/01/1987',8);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Robinho',674545700,'12/01/1987',8);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Kaka',674545700,'12/01/1987',8);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Jorge',645457700,'12/01/1987',8);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Tao',645457700,'12/01/1987',8);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'NTao',645457700,'12/01/1987',8);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Cesar',87700,'12/01/1987',7);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Lucio',67700,'12/01/1987',7);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Edgar',888,'12/01/1987',7);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Luiz',6770880,'12/01/1987',7);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Parrera',67700,'12/01/1987',7);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Adalberto',645457700,'12/01/1987',7);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Robinho',674545700,'12/01/1987',7);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Kaka',674545700,'12/01/1987',7);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Jorge',645457700,'12/01/1987',7);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'Tao',645457700,'12/01/1987',7);
INSERT INTO Jogador (ID_JOGADOR,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_jogador.nextval,'NTao',645457700,'12/01/1987',7);

INSERT INTO tecnico (ID_TECNICO,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_tecnico.nextval,'Jorge',64545237700,'12/01/1987',7);
INSERT INTO tecnico (ID_TECNICO,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_tecnico.nextval,'Jorge',64545237700,'12/01/1987',8);
INSERT INTO tecnico (ID_TECNICO,NOME, SALARIO, DT_NASCIMENTO, ID_EQUIPE) values (seq_tecnico.nextval,'Jorge',64545237700,'12/01/1977',9);

SELECT EQUIP.ID_EQUIPE, SUM ( NVL(JOG.SALARIO, 0) + NVL(TEC.SALARIO, 0))
FROM EQUIPE EQUIP,
JOGADOR JOG,
TECNICO TEC
WHERE EQUIP.ID_EQUIPE = JOG.ID_EQUIPE AND EQUIP.ID_EQUIPE = TEC.ID_EQUIPE
GROUP BY EQUIP.ID_EQUIPE;

SELECT EQUIP.ID_EQUIPE, AVG ( NVL(JOG.SALARIO, 0) + NVL(TEC.SALARIO, 0))
FROM EQUIPE EQUIP,
JOGADOR JOG,
TECNICO TEC
WHERE EQUIP.ID_EQUIPE = JOG.ID_EQUIPE AND EQUIP.ID_EQUIPE = TEC.ID_EQUIPE
GROUP BY EQUIP.ID_EQUIPE;

CREATE TABLE jogo(
id_jogo number not null,
id_equipe_visitante number not null,
id_equipe_local number not null,
placar_visitante number not null, 
placar_local number not null,
local varchar2(200) not null,
dt_hr_inicio date not null,
dt_hr_fim date
);

alter table jogo add constraint pk_id_jogo PRIMARY KEY (id_jogo);