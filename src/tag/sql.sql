CREATE DATABASE "curso-jsp"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       CONNECTION LIMIT = -1;
	   
	   
	   
CREATE SEQUENCE usersequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 8
  CACHE 1;
ALTER TABLE usersequence
  OWNER TO postgres;
	   
	   
CREATE TABLE usuario
(
  id bigint NOT NULL DEFAULT nextval('usersequence'::regclass),
  login character varying(500),
  senha character varying(20),
  CONSTRAINT usuario_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE usuario
  OWNER TO postgres;
  
 
ALTER TABLE usuario ADD COLUMN nome character varying(500); 

ALTER TABLE usuario ADD COLUMN telefone character varying(20); 
  
  INSERT INTO usuario(
            id, login, senha)
    VALUES (1, 'alex', 'alex');

INSERT INTO usuario(
            id, login, senha)
    VALUES (2, 'admin', 'admin');



	   
CREATE SEQUENCE public.produto_sequence
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.produto_sequence
    OWNER TO postgres;

CREATE TABLE public.produto
(
    id bigint NOT NULL DEFAULT nextval('produto_sequence'::regclass),
    nome character varying(50) COLLATE pg_catalog."default" NOT NULL,
    quantidade bigint NOT NULL,  
    valor numeric(8,4) NOT NULL,    
    CONSTRAINT produto_pkey PRIMARY KEY (id)      
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.produto
    OWNER to postgres;