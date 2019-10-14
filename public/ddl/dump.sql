--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 11.5

-- Started on 2019-10-14 11:55:49 -03

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
-- TOC entry 7 (class 2615 OID 27466)
-- Name: adm; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA adm;


ALTER SCHEMA adm OWNER TO postgres;

--
-- TOC entry 2446 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA adm; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA adm IS 'tabelas de gestão do condomínio';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 27494)
-- Name: condominio; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.condominio (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE adm.condominio OWNER TO postgres;

--
-- TOC entry 2447 (class 0 OID 0)
-- Dependencies: 197
-- Name: TABLE condominio; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.condominio IS 'informações detalhadas do condomínio que serão utilizados em todos os módulos do sistema Verticals';


--
-- TOC entry 196 (class 1259 OID 27492)
-- Name: condominio_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.condominio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.condominio_id_seq OWNER TO postgres;

--
-- TOC entry 2448 (class 0 OID 0)
-- Dependencies: 196
-- Name: condominio_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.condominio_id_seq OWNED BY adm.condominio.id;


--
-- TOC entry 201 (class 1259 OID 27534)
-- Name: designacoes; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.designacoes (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE adm.designacoes OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 27532)
-- Name: designacoes_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.designacoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.designacoes_id_seq OWNER TO postgres;

--
-- TOC entry 2449 (class 0 OID 0)
-- Dependencies: 200
-- Name: designacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.designacoes_id_seq OWNED BY adm.designacoes.id;


--
-- TOC entry 199 (class 1259 OID 27520)
-- Name: gestao; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.gestao (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    designacao integer NOT NULL,
    nome character varying(500) NOT NULL,
    inicio date DEFAULT CURRENT_DATE NOT NULL,
    vigencia date DEFAULT CURRENT_DATE NOT NULL
);


ALTER TABLE adm.gestao OWNER TO postgres;

--
-- TOC entry 2450 (class 0 OID 0)
-- Dependencies: 199
-- Name: TABLE gestao; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.gestao IS 'Registra os tipos de cargos ou designações existentes no condominio';


--
-- TOC entry 198 (class 1259 OID 27518)
-- Name: gestao_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.gestao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.gestao_id_seq OWNER TO postgres;

--
-- TOC entry 2451 (class 0 OID 0)
-- Dependencies: 198
-- Name: gestao_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.gestao_id_seq OWNED BY adm.gestao.id;


--
-- TOC entry 2304 (class 2604 OID 27497)
-- Name: condominio id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.condominio ALTER COLUMN id SET DEFAULT nextval('adm.condominio_id_seq'::regclass);


--
-- TOC entry 2310 (class 2604 OID 27537)
-- Name: designacoes id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.designacoes ALTER COLUMN id SET DEFAULT nextval('adm.designacoes_id_seq'::regclass);


--
-- TOC entry 2306 (class 2604 OID 27523)
-- Name: gestao id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao ALTER COLUMN id SET DEFAULT nextval('adm.gestao_id_seq'::regclass);


--
-- TOC entry 2313 (class 2606 OID 27503)
-- Name: condominio primarykey_adm_condominio; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.condominio
    ADD CONSTRAINT primarykey_adm_condominio PRIMARY KEY (id);


--
-- TOC entry 2317 (class 2606 OID 27543)
-- Name: designacoes primarykey_adm_designacoes; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.designacoes
    ADD CONSTRAINT primarykey_adm_designacoes PRIMARY KEY (id);


--
-- TOC entry 2315 (class 2606 OID 27531)
-- Name: gestao primarykey_adm_gestao; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao
    ADD CONSTRAINT primarykey_adm_gestao PRIMARY KEY (id);


--
-- TOC entry 2318 (class 2606 OID 27545)
-- Name: gestao gestao_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao
    ADD CONSTRAINT gestao_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2319 (class 2606 OID 27550)
-- Name: gestao gestao_designacoes_fk; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao
    ADD CONSTRAINT gestao_designacoes_fk FOREIGN KEY (designacao) REFERENCES adm.designacoes(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2019-10-14 11:55:49 -03

--
-- PostgreSQL database dump complete
--

