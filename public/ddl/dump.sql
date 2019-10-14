--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 11.5

-- Started on 2019-10-14 12:21:27 -03

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
-- TOC entry 2542 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA adm; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA adm IS 'tabelas de gestão do condomínio';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 207 (class 1259 OID 27591)
-- Name: academias; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.academias (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE adm.academias OWNER TO postgres;

--
-- TOC entry 2543 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE academias; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.academias IS 'Cadastro de informações pertinentes do funcionamento das academias do condomínio';


--
-- TOC entry 206 (class 1259 OID 27589)
-- Name: academias_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.academias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.academias_id_seq OWNER TO postgres;

--
-- TOC entry 2544 (class 0 OID 0)
-- Dependencies: 206
-- Name: academias_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.academias_id_seq OWNED BY adm.academias.id;


--
-- TOC entry 203 (class 1259 OID 27557)
-- Name: blocos; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.blocos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE adm.blocos OWNER TO postgres;

--
-- TOC entry 2545 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE blocos; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.blocos IS 'Informações a respeito dos blocos do condomínio';


--
-- TOC entry 202 (class 1259 OID 27555)
-- Name: blocos_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.blocos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.blocos_id_seq OWNER TO postgres;

--
-- TOC entry 2546 (class 0 OID 0)
-- Dependencies: 202
-- Name: blocos_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.blocos_id_seq OWNED BY adm.blocos.id;


--
-- TOC entry 211 (class 1259 OID 27625)
-- Name: churrasqueiras; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.churrasqueiras (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE adm.churrasqueiras OWNER TO postgres;

--
-- TOC entry 2547 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE churrasqueiras; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.churrasqueiras IS 'Informações de gestão das churrasqueiras';


--
-- TOC entry 210 (class 1259 OID 27623)
-- Name: churrasqueiras_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.churrasqueiras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.churrasqueiras_id_seq OWNER TO postgres;

--
-- TOC entry 2548 (class 0 OID 0)
-- Dependencies: 210
-- Name: churrasqueiras_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.churrasqueiras_id_seq OWNED BY adm.churrasqueiras.id;


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
-- TOC entry 2549 (class 0 OID 0)
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
-- TOC entry 2550 (class 0 OID 0)
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
-- TOC entry 2551 (class 0 OID 0)
-- Dependencies: 200
-- Name: designacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.designacoes_id_seq OWNED BY adm.designacoes.id;


--
-- TOC entry 213 (class 1259 OID 27642)
-- Name: elevadores; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.elevadores (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE adm.elevadores OWNER TO postgres;

--
-- TOC entry 2552 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE elevadores; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.elevadores IS 'Informações de gestão das elevadores';


--
-- TOC entry 212 (class 1259 OID 27640)
-- Name: elevadores_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.elevadores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.elevadores_id_seq OWNER TO postgres;

--
-- TOC entry 2553 (class 0 OID 0)
-- Dependencies: 212
-- Name: elevadores_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.elevadores_id_seq OWNED BY adm.elevadores.id;


--
-- TOC entry 205 (class 1259 OID 27574)
-- Name: espacos; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.espacos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE adm.espacos OWNER TO postgres;

--
-- TOC entry 2554 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE espacos; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.espacos IS 'Detalhes dos salões e suas atividades';


--
-- TOC entry 204 (class 1259 OID 27572)
-- Name: espacos_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.espacos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.espacos_id_seq OWNER TO postgres;

--
-- TOC entry 2555 (class 0 OID 0)
-- Dependencies: 204
-- Name: espacos_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.espacos_id_seq OWNED BY adm.espacos.id;


--
-- TOC entry 215 (class 1259 OID 27659)
-- Name: estacionamentos; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.estacionamentos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE adm.estacionamentos OWNER TO postgres;

--
-- TOC entry 2556 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE estacionamentos; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.estacionamentos IS 'Informações de gestão das estacionamentos';


--
-- TOC entry 214 (class 1259 OID 27657)
-- Name: estacionamentos_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.estacionamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.estacionamentos_id_seq OWNER TO postgres;

--
-- TOC entry 2557 (class 0 OID 0)
-- Dependencies: 214
-- Name: estacionamentos_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.estacionamentos_id_seq OWNED BY adm.estacionamentos.id;


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
-- TOC entry 2558 (class 0 OID 0)
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
-- TOC entry 2559 (class 0 OID 0)
-- Dependencies: 198
-- Name: gestao_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.gestao_id_seq OWNED BY adm.gestao.id;


--
-- TOC entry 209 (class 1259 OID 27608)
-- Name: piscinas; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.piscinas (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE adm.piscinas OWNER TO postgres;

--
-- TOC entry 2560 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE piscinas; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.piscinas IS 'Gestão das piscinas';


--
-- TOC entry 208 (class 1259 OID 27606)
-- Name: piscinas_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.piscinas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.piscinas_id_seq OWNER TO postgres;

--
-- TOC entry 2561 (class 0 OID 0)
-- Dependencies: 208
-- Name: piscinas_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.piscinas_id_seq OWNED BY adm.piscinas.id;


--
-- TOC entry 217 (class 1259 OID 27676)
-- Name: vagas; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.vagas (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    estacionamento integer NOT NULL,
    numero character varying(500) NOT NULL
);


ALTER TABLE adm.vagas OWNER TO postgres;

--
-- TOC entry 2562 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE vagas; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.vagas IS 'Controle de vagas dos estacionamentos';


--
-- TOC entry 216 (class 1259 OID 27674)
-- Name: vagas_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.vagas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.vagas_id_seq OWNER TO postgres;

--
-- TOC entry 2563 (class 0 OID 0)
-- Dependencies: 216
-- Name: vagas_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.vagas_id_seq OWNED BY adm.vagas.id;


--
-- TOC entry 2372 (class 2604 OID 27594)
-- Name: academias id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.academias ALTER COLUMN id SET DEFAULT nextval('adm.academias_id_seq'::regclass);


--
-- TOC entry 2368 (class 2604 OID 27560)
-- Name: blocos id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.blocos ALTER COLUMN id SET DEFAULT nextval('adm.blocos_id_seq'::regclass);


--
-- TOC entry 2376 (class 2604 OID 27628)
-- Name: churrasqueiras id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.churrasqueiras ALTER COLUMN id SET DEFAULT nextval('adm.churrasqueiras_id_seq'::regclass);


--
-- TOC entry 2360 (class 2604 OID 27497)
-- Name: condominio id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.condominio ALTER COLUMN id SET DEFAULT nextval('adm.condominio_id_seq'::regclass);


--
-- TOC entry 2366 (class 2604 OID 27537)
-- Name: designacoes id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.designacoes ALTER COLUMN id SET DEFAULT nextval('adm.designacoes_id_seq'::regclass);


--
-- TOC entry 2378 (class 2604 OID 27645)
-- Name: elevadores id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.elevadores ALTER COLUMN id SET DEFAULT nextval('adm.elevadores_id_seq'::regclass);


--
-- TOC entry 2370 (class 2604 OID 27577)
-- Name: espacos id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.espacos ALTER COLUMN id SET DEFAULT nextval('adm.espacos_id_seq'::regclass);


--
-- TOC entry 2380 (class 2604 OID 27662)
-- Name: estacionamentos id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.estacionamentos ALTER COLUMN id SET DEFAULT nextval('adm.estacionamentos_id_seq'::regclass);


--
-- TOC entry 2362 (class 2604 OID 27523)
-- Name: gestao id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao ALTER COLUMN id SET DEFAULT nextval('adm.gestao_id_seq'::regclass);


--
-- TOC entry 2374 (class 2604 OID 27611)
-- Name: piscinas id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.piscinas ALTER COLUMN id SET DEFAULT nextval('adm.piscinas_id_seq'::regclass);


--
-- TOC entry 2382 (class 2604 OID 27679)
-- Name: vagas id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.vagas ALTER COLUMN id SET DEFAULT nextval('adm.vagas_id_seq'::regclass);


--
-- TOC entry 2395 (class 2606 OID 27600)
-- Name: academias primarykey_adm_academias; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.academias
    ADD CONSTRAINT primarykey_adm_academias PRIMARY KEY (id);


--
-- TOC entry 2391 (class 2606 OID 27566)
-- Name: blocos primarykey_adm_blocos; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.blocos
    ADD CONSTRAINT primarykey_adm_blocos PRIMARY KEY (id);


--
-- TOC entry 2399 (class 2606 OID 27634)
-- Name: churrasqueiras primarykey_adm_churrasqueiras; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.churrasqueiras
    ADD CONSTRAINT primarykey_adm_churrasqueiras PRIMARY KEY (id);


--
-- TOC entry 2385 (class 2606 OID 27503)
-- Name: condominio primarykey_adm_condominio; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.condominio
    ADD CONSTRAINT primarykey_adm_condominio PRIMARY KEY (id);


--
-- TOC entry 2389 (class 2606 OID 27543)
-- Name: designacoes primarykey_adm_designacoes; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.designacoes
    ADD CONSTRAINT primarykey_adm_designacoes PRIMARY KEY (id);


--
-- TOC entry 2401 (class 2606 OID 27651)
-- Name: elevadores primarykey_adm_elevadores; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.elevadores
    ADD CONSTRAINT primarykey_adm_elevadores PRIMARY KEY (id);


--
-- TOC entry 2393 (class 2606 OID 27583)
-- Name: espacos primarykey_adm_espacos; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.espacos
    ADD CONSTRAINT primarykey_adm_espacos PRIMARY KEY (id);


--
-- TOC entry 2403 (class 2606 OID 27668)
-- Name: estacionamentos primarykey_adm_estacionamentos; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.estacionamentos
    ADD CONSTRAINT primarykey_adm_estacionamentos PRIMARY KEY (id);


--
-- TOC entry 2387 (class 2606 OID 27531)
-- Name: gestao primarykey_adm_gestao; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao
    ADD CONSTRAINT primarykey_adm_gestao PRIMARY KEY (id);


--
-- TOC entry 2397 (class 2606 OID 27617)
-- Name: piscinas primarykey_adm_piscinas; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.piscinas
    ADD CONSTRAINT primarykey_adm_piscinas PRIMARY KEY (id);


--
-- TOC entry 2405 (class 2606 OID 27685)
-- Name: vagas primarykey_adm_vagas; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.vagas
    ADD CONSTRAINT primarykey_adm_vagas PRIMARY KEY (id);


--
-- TOC entry 2410 (class 2606 OID 27601)
-- Name: academias academias_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.academias
    ADD CONSTRAINT academias_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2408 (class 2606 OID 27567)
-- Name: blocos blocos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.blocos
    ADD CONSTRAINT blocos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2412 (class 2606 OID 27635)
-- Name: churrasqueiras churrasqueiras_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.churrasqueiras
    ADD CONSTRAINT churrasqueiras_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2413 (class 2606 OID 27652)
-- Name: elevadores elevadores_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.elevadores
    ADD CONSTRAINT elevadores_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2409 (class 2606 OID 27584)
-- Name: espacos espacos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.espacos
    ADD CONSTRAINT espacos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2414 (class 2606 OID 27669)
-- Name: estacionamentos estacionamentos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.estacionamentos
    ADD CONSTRAINT estacionamentos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2406 (class 2606 OID 27545)
-- Name: gestao gestao_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao
    ADD CONSTRAINT gestao_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2407 (class 2606 OID 27550)
-- Name: gestao gestao_designacoes_fk; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao
    ADD CONSTRAINT gestao_designacoes_fk FOREIGN KEY (designacao) REFERENCES adm.designacoes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2411 (class 2606 OID 27618)
-- Name: piscinas piscinas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.piscinas
    ADD CONSTRAINT piscinas_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2415 (class 2606 OID 27686)
-- Name: vagas vagas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.vagas
    ADD CONSTRAINT vagas_condominio_foreignkey FOREIGN KEY (estacionamento) REFERENCES adm.estacionamentos(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2019-10-14 12:21:27 -03

--
-- PostgreSQL database dump complete
--

