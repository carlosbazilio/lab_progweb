--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.2

-- Started on 2021-08-06 16:34:03 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- TOC entry 3214 (class 1262 OID 13688)
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3215 (class 0 OID 0)
-- Dependencies: 3214
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3216 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 205 (class 1259 OID 32836)
-- Name: empresa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresa (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    endereco character varying(200)
);


ALTER TABLE public.empresa OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 32892)
-- Name: livro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livro (
    id integer NOT NULL,
    titulo character varying(100) NOT NULL,
    autor character varying(50),
    preco double precision,
    estoque integer
);


ALTER TABLE public.livro OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16388)
-- Name: to_do; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.to_do (
    id integer NOT NULL,
    content character varying(200) NOT NULL,
    date_created timestamp without time zone
);


ALTER TABLE public.to_do OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16386)
-- Name: to_do_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.to_do_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.to_do_id_seq OWNER TO postgres;

--
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 202
-- Name: to_do_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.to_do_id_seq OWNED BY public.to_do.id;


--
-- TOC entry 204 (class 1259 OID 32831)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    nome character varying(100) NOT NULL,
    id integer NOT NULL,
    senha character varying(10) NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 3069 (class 2604 OID 16391)
-- Name: to_do id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.to_do ALTER COLUMN id SET DEFAULT nextval('public.to_do_id_seq'::regclass);


--
-- TOC entry 3207 (class 0 OID 32836)
-- Dependencies: 205
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.empresa (id, nome, endereco) VALUES (1, 'UFF', 'Rio das Ostras');
INSERT INTO public.empresa (id, nome, endereco) VALUES (2, 'Petrobras', 'Macae');


--
-- TOC entry 3208 (class 0 OID 32892)
-- Dependencies: 206
-- Data for Name: livro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.livro (id, titulo, autor, preco, estoque) VALUES (7, 'Batalha do apocalipse', 'Eduardo Sophr', 32.89, 1);
INSERT INTO public.livro (id, titulo, autor, preco, estoque) VALUES (5, 'Orgulho e preconceito', 'Jane Austen', 34.37, 1);
INSERT INTO public.livro (id, titulo, autor, preco, estoque) VALUES (10, 'Prince of fools', 'Mark Lawrence', 192, 1);
INSERT INTO public.livro (id, titulo, autor, preco, estoque) VALUES (1, 'Mundo de Sofia', 'Jostein Gaarder', 31.9, 1);
INSERT INTO public.livro (id, titulo, autor, preco, estoque) VALUES (2, 'Na Minha Pele', 'Lazaro Ramos', 20.7, 1);
INSERT INTO public.livro (id, titulo, autor, preco, estoque) VALUES (8, 'A bússola de ouro', 'Philip Pullman', 32.79, 0);
INSERT INTO public.livro (id, titulo, autor, preco, estoque) VALUES (9, 'A Arma Escarlate', 'Renata Ventura', 34.42, 0);
INSERT INTO public.livro (id, titulo, autor, preco, estoque) VALUES (3, 'O Príncipe', 'Maquiavel', 11.99, 1);
INSERT INTO public.livro (id, titulo, autor, preco, estoque) VALUES (4, 'O Perigo de uma História Única', 'Chimamanda Ngozi Adichie', 14.21, 1);
INSERT INTO public.livro (id, titulo, autor, preco, estoque) VALUES (6, 'O Homem Mais Rico da Babilônia', 'George Samuel', 15.89, 1);


--
-- TOC entry 3205 (class 0 OID 16388)
-- Dependencies: 203
-- Data for Name: to_do; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.to_do (id, content, date_created) VALUES (1, 'Preparar Web Tutoria do Cederj', '2020-05-12 17:39:18.250693');
INSERT INTO public.to_do (id, content, date_created) VALUES (2, 'Planejar Cronograma do Projeto Petrobrás', '2020-05-12 17:39:39.802207');


--
-- TOC entry 3206 (class 0 OID 32831)
-- Dependencies: 204
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario (nome, id, senha) VALUES ('bazilio', 1, '123');
INSERT INTO public.usuario (nome, id, senha) VALUES ('carlos', 2, '456');


--
-- TOC entry 3218 (class 0 OID 0)
-- Dependencies: 202
-- Name: to_do_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.to_do_id_seq', 3, true);


--
-- TOC entry 3075 (class 2606 OID 32840)
-- Name: empresa empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id);


--
-- TOC entry 3077 (class 2606 OID 32896)
-- Name: livro livro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livro
    ADD CONSTRAINT livro_pkey PRIMARY KEY (id);


--
-- TOC entry 3071 (class 2606 OID 16393)
-- Name: to_do to_do_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.to_do
    ADD CONSTRAINT to_do_pkey PRIMARY KEY (id);


--
-- TOC entry 3073 (class 2606 OID 32835)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


-- Completed on 2021-08-06 16:34:04 -03

--
-- PostgreSQL database dump complete
--

