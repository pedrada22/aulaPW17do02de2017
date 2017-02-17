--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.5
-- Dumped by pg_dump version 9.4.5
-- Started on 2017-02-17 21:59:08

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1999 (class 1262 OID 16393)
-- Name: iesb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE iesb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE iesb OWNER TO postgres;

\connect iesb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 174 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2002 (class 0 OID 0)
-- Dependencies: 174
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 173 (class 1259 OID 16396)
-- Name: alunos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE alunos (
    id integer NOT NULL,
    matricula integer NOT NULL,
    nome character varying(255) NOT NULL
);


ALTER TABLE alunos OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 16394)
-- Name: alunos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE alunos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE alunos_id_seq OWNER TO postgres;

--
-- TOC entry 2003 (class 0 OID 0)
-- Dependencies: 172
-- Name: alunos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE alunos_id_seq OWNED BY alunos.id;


--
-- TOC entry 1881 (class 2604 OID 16399)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alunos ALTER COLUMN id SET DEFAULT nextval('alunos_id_seq'::regclass);


--
-- TOC entry 1994 (class 0 OID 16396)
-- Dependencies: 173
-- Data for Name: alunos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY alunos (id, matricula, nome) FROM stdin;
6	20161006	PEDROSVALDO
5	20161005	MARIANA
8	123	masi um
\.


--
-- TOC entry 2004 (class 0 OID 0)
-- Dependencies: 172
-- Name: alunos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('alunos_id_seq', 8, true);


--
-- TOC entry 1883 (class 2606 OID 16401)
-- Name: alunos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY alunos
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (id);


--
-- TOC entry 2001 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-02-17 21:59:08

--
-- PostgreSQL database dump complete
--

