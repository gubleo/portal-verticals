--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 11.5

-- Started on 2019-10-15 13:43:50 -03

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
-- TOC entry 6 (class 2615 OID 28319)
-- Name: adm; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA adm;


ALTER SCHEMA adm OWNER TO postgres;

--
-- TOC entry 2875 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA adm; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA adm IS 'tabelas de gestão do condomínio';


--
-- TOC entry 10 (class 2615 OID 28320)
-- Name: residencial; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA residencial;


ALTER SCHEMA residencial OWNER TO postgres;

--
-- TOC entry 2 (class 3079 OID 28321)
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- TOC entry 2876 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- TOC entry 706 (class 1247 OID 28407)
-- Name: email; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.email AS public.citext
	CONSTRAINT email_check CHECK ((VALUE OPERATOR(public.~) '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$'::public.citext));


ALTER DOMAIN public.email OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 28409)
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
-- TOC entry 2877 (class 0 OID 0)
-- Dependencies: 199
-- Name: TABLE academias; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.academias IS 'Cadastro de informações pertinentes do funcionamento das academias do condomínio';


--
-- TOC entry 200 (class 1259 OID 28416)
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
-- TOC entry 2878 (class 0 OID 0)
-- Dependencies: 200
-- Name: academias_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.academias_id_seq OWNED BY adm.academias.id;


--
-- TOC entry 201 (class 1259 OID 28418)
-- Name: bloco; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.bloco (
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


ALTER TABLE adm.bloco OWNER TO postgres;

--
-- TOC entry 2879 (class 0 OID 0)
-- Dependencies: 201
-- Name: TABLE bloco; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.bloco IS 'Informações a respeito dos blocos do condomínio';


--
-- TOC entry 202 (class 1259 OID 28425)
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
-- TOC entry 2880 (class 0 OID 0)
-- Dependencies: 202
-- Name: blocos_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.blocos_id_seq OWNED BY adm.bloco.id;


--
-- TOC entry 203 (class 1259 OID 28427)
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
-- TOC entry 2881 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE churrasqueiras; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.churrasqueiras IS 'Informações de gestão das churrasqueiras';


--
-- TOC entry 204 (class 1259 OID 28434)
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
-- TOC entry 2882 (class 0 OID 0)
-- Dependencies: 204
-- Name: churrasqueiras_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.churrasqueiras_id_seq OWNED BY adm.churrasqueiras.id;


--
-- TOC entry 205 (class 1259 OID 28436)
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
-- TOC entry 2883 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE condominio; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.condominio IS 'informações detalhadas do condomínio que serão utilizados em todos os módulos do sistema Verticals';


--
-- TOC entry 206 (class 1259 OID 28443)
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
-- TOC entry 2884 (class 0 OID 0)
-- Dependencies: 206
-- Name: condominio_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.condominio_id_seq OWNED BY adm.condominio.id;


--
-- TOC entry 207 (class 1259 OID 28445)
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
-- TOC entry 208 (class 1259 OID 28452)
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
-- TOC entry 2885 (class 0 OID 0)
-- Dependencies: 208
-- Name: designacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.designacoes_id_seq OWNED BY adm.designacoes.id;


--
-- TOC entry 209 (class 1259 OID 28454)
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
-- TOC entry 2886 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE elevadores; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.elevadores IS 'Informações de gestão das elevadores';


--
-- TOC entry 210 (class 1259 OID 28461)
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
-- TOC entry 2887 (class 0 OID 0)
-- Dependencies: 210
-- Name: elevadores_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.elevadores_id_seq OWNED BY adm.elevadores.id;


--
-- TOC entry 211 (class 1259 OID 28463)
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
-- TOC entry 2888 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE espacos; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.espacos IS 'Detalhes dos salões e suas atividades';


--
-- TOC entry 212 (class 1259 OID 28470)
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
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 212
-- Name: espacos_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.espacos_id_seq OWNED BY adm.espacos.id;


--
-- TOC entry 213 (class 1259 OID 28472)
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
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE estacionamentos; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.estacionamentos IS 'Informações de gestão das estacionamentos';


--
-- TOC entry 214 (class 1259 OID 28479)
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
-- TOC entry 2891 (class 0 OID 0)
-- Dependencies: 214
-- Name: estacionamentos_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.estacionamentos_id_seq OWNED BY adm.estacionamentos.id;


--
-- TOC entry 215 (class 1259 OID 28481)
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
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE gestao; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.gestao IS 'Registra os tipos de cargos ou designações existentes no condominio';


--
-- TOC entry 216 (class 1259 OID 28490)
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
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 216
-- Name: gestao_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.gestao_id_seq OWNED BY adm.gestao.id;


--
-- TOC entry 217 (class 1259 OID 28492)
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
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE piscinas; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.piscinas IS 'Gestão das piscinas';


--
-- TOC entry 218 (class 1259 OID 28499)
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
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 218
-- Name: piscinas_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.piscinas_id_seq OWNED BY adm.piscinas.id;


--
-- TOC entry 219 (class 1259 OID 28501)
-- Name: portarias; Type: TABLE; Schema: adm; Owner: postgres
--

CREATE TABLE adm.portarias (
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


ALTER TABLE adm.portarias OWNER TO postgres;

--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE portarias; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.portarias IS 'Informações de gestão das portarias';


--
-- TOC entry 220 (class 1259 OID 28508)
-- Name: portarias_id_seq; Type: SEQUENCE; Schema: adm; Owner: postgres
--

CREATE SEQUENCE adm.portarias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm.portarias_id_seq OWNER TO postgres;

--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 220
-- Name: portarias_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.portarias_id_seq OWNED BY adm.portarias.id;


--
-- TOC entry 221 (class 1259 OID 28510)
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
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE vagas; Type: COMMENT; Schema: adm; Owner: postgres
--

COMMENT ON TABLE adm.vagas IS 'Controle de vagas dos estacionamentos';


--
-- TOC entry 222 (class 1259 OID 28517)
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
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 222
-- Name: vagas_id_seq; Type: SEQUENCE OWNED BY; Schema: adm; Owner: postgres
--

ALTER SEQUENCE adm.vagas_id_seq OWNED BY adm.vagas.id;


--
-- TOC entry 248 (class 1259 OID 28892)
-- Name: autorizacao_pessoal; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.autorizacao_pessoal (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    usuario integer NOT NULL,
    rfid character varying(10) NOT NULL,
    fingerprint character varying NOT NULL,
    bloqueio integer DEFAULT 0 NOT NULL
);


ALTER TABLE residencial.autorizacao_pessoal OWNER TO postgres;

--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 248
-- Name: TABLE autorizacao_pessoal; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.autorizacao_pessoal IS 'Registro de autorização do controle de acesso';


--
-- TOC entry 247 (class 1259 OID 28890)
-- Name: autorizacao_pessoal_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.autorizacao_pessoal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.autorizacao_pessoal_id_seq OWNER TO postgres;

--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 247
-- Name: autorizacao_pessoal_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.autorizacao_pessoal_id_seq OWNED BY residencial.autorizacao_pessoal.id;


--
-- TOC entry 246 (class 1259 OID 28869)
-- Name: autorizacao_veicular; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.autorizacao_veicular (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    veiculo integer NOT NULL,
    rfid character varying(10) NOT NULL,
    fingerprint character varying NOT NULL,
    bloqueio integer DEFAULT 0 NOT NULL
);


ALTER TABLE residencial.autorizacao_veicular OWNER TO postgres;

--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 246
-- Name: TABLE autorizacao_veicular; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.autorizacao_veicular IS 'Registro de autorização do controle de acesso';


--
-- TOC entry 245 (class 1259 OID 28867)
-- Name: autorizacao_veicular_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.autorizacao_veicular_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.autorizacao_veicular_id_seq OWNER TO postgres;

--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 245
-- Name: autorizacao_veicular_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.autorizacao_veicular_id_seq OWNED BY residencial.autorizacao_veicular.id;


--
-- TOC entry 238 (class 1259 OID 28735)
-- Name: correspondencias; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.correspondencias (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    codigo character varying(500) NOT NULL,
    destinatario character varying(500) NOT NULL,
    aviso timestamp without time zone,
    emails_destinatario character varying,
    remetente character varying,
    situacao_leitura character varying,
    autorizacao_data timestamp without time zone,
    autorizacao_id character varying,
    autorizacao_foto character varying
);


ALTER TABLE residencial.correspondencias OWNER TO postgres;

--
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 238
-- Name: TABLE correspondencias; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.correspondencias IS 'Tabela de controle das correspondências do condomínio';


--
-- TOC entry 237 (class 1259 OID 28733)
-- Name: correspondencias_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.correspondencias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.correspondencias_id_seq OWNER TO postgres;

--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 237
-- Name: correspondencias_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.correspondencias_id_seq OWNED BY residencial.correspondencias.id;


--
-- TOC entry 240 (class 1259 OID 28752)
-- Name: diario; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.diario (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    diario integer NOT NULL,
    observacoes character varying NOT NULL
);


ALTER TABLE residencial.diario OWNER TO postgres;

--
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 240
-- Name: TABLE diario; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.diario IS 'Registra os tipos de eventos que ocorrem na unidade, ex: mudança de entrada, reformas etc.';


--
-- TOC entry 239 (class 1259 OID 28750)
-- Name: diario_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.diario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.diario_id_seq OWNER TO postgres;

--
-- TOC entry 2907 (class 0 OID 0)
-- Dependencies: 239
-- Name: diario_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.diario_id_seq OWNED BY residencial.diario.id;


--
-- TOC entry 223 (class 1259 OID 28519)
-- Name: emails; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.emails (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    endereco public.email NOT NULL,
    recupera_senha boolean DEFAULT false NOT NULL,
    avisa_encomendas boolean DEFAULT false NOT NULL,
    comunicados_gerais boolean DEFAULT true NOT NULL,
    aviso_solicitacoes boolean DEFAULT false NOT NULL,
    aviso_noticias boolean DEFAULT false NOT NULL,
    aviso_notificacoes boolean DEFAULT true NOT NULL,
    aviso_utilizacoes boolean DEFAULT false NOT NULL,
    recuperar_usuario boolean DEFAULT false NOT NULL
);


ALTER TABLE residencial.emails OWNER TO postgres;

--
-- TOC entry 2908 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE emails; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.emails IS 'Endereços e tipos de entrega de informação aos condôminos';


--
-- TOC entry 224 (class 1259 OID 28533)
-- Name: emails_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.emails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.emails_id_seq OWNER TO postgres;

--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 224
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.emails_id_seq OWNED BY residencial.emails.id;


--
-- TOC entry 258 (class 1259 OID 29016)
-- Name: incidentes; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.incidentes (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    tipo integer NOT NULL,
    livro character varying(20) NOT NULL,
    pagina character varying(20) NOT NULL,
    motivo character varying(500) NOT NULL,
    observacoes character varying
);


ALTER TABLE residencial.incidentes OWNER TO postgres;

--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 258
-- Name: TABLE incidentes; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.incidentes IS 'Registra multas, notificações e ocorrências da unidade';


--
-- TOC entry 257 (class 1259 OID 29014)
-- Name: incidentes_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.incidentes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.incidentes_id_seq OWNER TO postgres;

--
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 257
-- Name: incidentes_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.incidentes_id_seq OWNED BY residencial.incidentes.id;


--
-- TOC entry 256 (class 1259 OID 28998)
-- Name: login; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.login (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    username character varying(15) NOT NULL,
    keypair character varying NOT NULL
);


ALTER TABLE residencial.login OWNER TO postgres;

--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 256
-- Name: TABLE login; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.login IS 'Usuário do condômino';


--
-- TOC entry 255 (class 1259 OID 28996)
-- Name: login_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.login_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.login_id_seq OWNER TO postgres;

--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 255
-- Name: login_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.login_id_seq OWNED BY residencial.login.id;


--
-- TOC entry 225 (class 1259 OID 28535)
-- Name: pessoas; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.pessoas (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    tipo integer NOT NULL
);


ALTER TABLE residencial.pessoas OWNER TO postgres;

--
-- TOC entry 2914 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE pessoas; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.pessoas IS 'Registro geral de pessoas no condomínio';


--
-- TOC entry 226 (class 1259 OID 28539)
-- Name: pessoas_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.pessoas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.pessoas_id_seq OWNER TO postgres;

--
-- TOC entry 2915 (class 0 OID 0)
-- Dependencies: 226
-- Name: pessoas_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.pessoas_id_seq OWNED BY residencial.pessoas.id;


--
-- TOC entry 227 (class 1259 OID 28541)
-- Name: pets; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.pets (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL
);


ALTER TABLE residencial.pets OWNER TO postgres;

--
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE pets; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.pets IS 'Registro geral de pets da unidade';


--
-- TOC entry 228 (class 1259 OID 28545)
-- Name: pets_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.pets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.pets_id_seq OWNER TO postgres;

--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 228
-- Name: pets_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.pets_id_seq OWNED BY residencial.pets.id;


--
-- TOC entry 261 (class 1259 OID 29035)
-- Name: pre_autorizacao; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.pre_autorizacao (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    pessoa bigint NOT NULL
);


ALTER TABLE residencial.pre_autorizacao OWNER TO postgres;

--
-- TOC entry 2918 (class 0 OID 0)
-- Dependencies: 261
-- Name: TABLE pre_autorizacao; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.pre_autorizacao IS 'Efetua a pré-autorização de visitantes, parentes próximos e prestadores de serviço';


--
-- TOC entry 259 (class 1259 OID 29031)
-- Name: pre_autorizacao_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.pre_autorizacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.pre_autorizacao_id_seq OWNER TO postgres;

--
-- TOC entry 2919 (class 0 OID 0)
-- Dependencies: 259
-- Name: pre_autorizacao_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.pre_autorizacao_id_seq OWNED BY residencial.pre_autorizacao.id;


--
-- TOC entry 260 (class 1259 OID 29033)
-- Name: pre_autorizacao_pessoa_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.pre_autorizacao_pessoa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.pre_autorizacao_pessoa_seq OWNER TO postgres;

--
-- TOC entry 2920 (class 0 OID 0)
-- Dependencies: 260
-- Name: pre_autorizacao_pessoa_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.pre_autorizacao_pessoa_seq OWNED BY residencial.pre_autorizacao.pessoa;


--
-- TOC entry 229 (class 1259 OID 28547)
-- Name: unidade; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.unidade (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    bloco integer NOT NULL,
    unidade character varying(5) NOT NULL,
    responsavel character varying(500) NOT NULL
);


ALTER TABLE residencial.unidade OWNER TO postgres;

--
-- TOC entry 2921 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE unidade; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.unidade IS 'Informações gerais da unidade';


--
-- TOC entry 230 (class 1259 OID 28554)
-- Name: registro_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.registro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.registro_id_seq OWNER TO postgres;

--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 230
-- Name: registro_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.registro_id_seq OWNED BY residencial.unidade.id;


--
-- TOC entry 254 (class 1259 OID 28976)
-- Name: reservas; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.reservas (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    espaco integer NOT NULL
);


ALTER TABLE residencial.reservas OWNER TO postgres;

--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 254
-- Name: TABLE reservas; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.reservas IS 'Registro de reserva de espaços';


--
-- TOC entry 253 (class 1259 OID 28974)
-- Name: reservas_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.reservas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.reservas_id_seq OWNER TO postgres;

--
-- TOC entry 2924 (class 0 OID 0)
-- Dependencies: 253
-- Name: reservas_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.reservas_id_seq OWNED BY residencial.reservas.id;


--
-- TOC entry 250 (class 1259 OID 28933)
-- Name: solicitacoes; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.solicitacoes (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    tipo integer NOT NULL,
    assunto character varying(255) NOT NULL,
    solicitacao character varying NOT NULL,
    anexos character varying
);


ALTER TABLE residencial.solicitacoes OWNER TO postgres;

--
-- TOC entry 2925 (class 0 OID 0)
-- Dependencies: 250
-- Name: TABLE solicitacoes; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.solicitacoes IS 'Registro de solicitações dos condôminos';


--
-- TOC entry 249 (class 1259 OID 28931)
-- Name: solicitacoes_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.solicitacoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.solicitacoes_id_seq OWNER TO postgres;

--
-- TOC entry 2926 (class 0 OID 0)
-- Dependencies: 249
-- Name: solicitacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.solicitacoes_id_seq OWNED BY residencial.solicitacoes.id;


--
-- TOC entry 244 (class 1259 OID 28818)
-- Name: tipo_bloqueio; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.tipo_bloqueio (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE residencial.tipo_bloqueio OWNER TO postgres;

--
-- TOC entry 2927 (class 0 OID 0)
-- Dependencies: 244
-- Name: TABLE tipo_bloqueio; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.tipo_bloqueio IS 'Informa os tipos de bloqueios utilizados nas operações de controle de acesso';


--
-- TOC entry 243 (class 1259 OID 28816)
-- Name: tipo_bloqueio_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.tipo_bloqueio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.tipo_bloqueio_id_seq OWNER TO postgres;

--
-- TOC entry 2928 (class 0 OID 0)
-- Dependencies: 243
-- Name: tipo_bloqueio_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.tipo_bloqueio_id_seq OWNED BY residencial.tipo_bloqueio.id;


--
-- TOC entry 242 (class 1259 OID 28769)
-- Name: tipo_diario; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.tipo_diario (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE residencial.tipo_diario OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 28767)
-- Name: tipo_diario_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.tipo_diario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.tipo_diario_id_seq OWNER TO postgres;

--
-- TOC entry 2929 (class 0 OID 0)
-- Dependencies: 241
-- Name: tipo_diario_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.tipo_diario_id_seq OWNED BY residencial.tipo_diario.id;


--
-- TOC entry 231 (class 1259 OID 28556)
-- Name: tipo_registro; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.tipo_registro (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE residencial.tipo_registro OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 28563)
-- Name: tipo_registro_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.tipo_registro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.tipo_registro_id_seq OWNER TO postgres;

--
-- TOC entry 2930 (class 0 OID 0)
-- Dependencies: 232
-- Name: tipo_registro_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.tipo_registro_id_seq OWNED BY residencial.tipo_registro.id;


--
-- TOC entry 252 (class 1259 OID 28950)
-- Name: tipo_solicitacao; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.tipo_solicitacao (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE residencial.tipo_solicitacao OWNER TO postgres;

--
-- TOC entry 2931 (class 0 OID 0)
-- Dependencies: 252
-- Name: TABLE tipo_solicitacao; Type: COMMENT; Schema: residencial; Owner: postgres
--

COMMENT ON TABLE residencial.tipo_solicitacao IS 'Informa os tipos de solicitacaos utilizados na abertura do pedido efetuado pelo condômino';


--
-- TOC entry 251 (class 1259 OID 28948)
-- Name: tipo_solicitacao_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.tipo_solicitacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.tipo_solicitacao_id_seq OWNER TO postgres;

--
-- TOC entry 2932 (class 0 OID 0)
-- Dependencies: 251
-- Name: tipo_solicitacao_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.tipo_solicitacao_id_seq OWNED BY residencial.tipo_solicitacao.id;


--
-- TOC entry 233 (class 1259 OID 28565)
-- Name: tipo_veiculo; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.tipo_veiculo (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE residencial.tipo_veiculo OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 28572)
-- Name: tipo_veiculo_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.tipo_veiculo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.tipo_veiculo_id_seq OWNER TO postgres;

--
-- TOC entry 2933 (class 0 OID 0)
-- Dependencies: 234
-- Name: tipo_veiculo_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.tipo_veiculo_id_seq OWNED BY residencial.tipo_veiculo.id;


--
-- TOC entry 235 (class 1259 OID 28574)
-- Name: veiculos; Type: TABLE; Schema: residencial; Owner: postgres
--

CREATE TABLE residencial.veiculos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    tipo_registro integer NOT NULL,
    tipo_veiculo integer
);


ALTER TABLE residencial.veiculos OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 28578)
-- Name: veiculos_id_seq; Type: SEQUENCE; Schema: residencial; Owner: postgres
--

CREATE SEQUENCE residencial.veiculos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE residencial.veiculos_id_seq OWNER TO postgres;

--
-- TOC entry 2934 (class 0 OID 0)
-- Dependencies: 236
-- Name: veiculos_id_seq; Type: SEQUENCE OWNED BY; Schema: residencial; Owner: postgres
--

ALTER SEQUENCE residencial.veiculos_id_seq OWNED BY residencial.veiculos.id;


--
-- TOC entry 2581 (class 2604 OID 28580)
-- Name: academias id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.academias ALTER COLUMN id SET DEFAULT nextval('adm.academias_id_seq'::regclass);


--
-- TOC entry 2583 (class 2604 OID 28581)
-- Name: bloco id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.bloco ALTER COLUMN id SET DEFAULT nextval('adm.blocos_id_seq'::regclass);


--
-- TOC entry 2585 (class 2604 OID 28582)
-- Name: churrasqueiras id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.churrasqueiras ALTER COLUMN id SET DEFAULT nextval('adm.churrasqueiras_id_seq'::regclass);


--
-- TOC entry 2587 (class 2604 OID 28583)
-- Name: condominio id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.condominio ALTER COLUMN id SET DEFAULT nextval('adm.condominio_id_seq'::regclass);


--
-- TOC entry 2589 (class 2604 OID 28584)
-- Name: designacoes id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.designacoes ALTER COLUMN id SET DEFAULT nextval('adm.designacoes_id_seq'::regclass);


--
-- TOC entry 2591 (class 2604 OID 28585)
-- Name: elevadores id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.elevadores ALTER COLUMN id SET DEFAULT nextval('adm.elevadores_id_seq'::regclass);


--
-- TOC entry 2593 (class 2604 OID 28586)
-- Name: espacos id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.espacos ALTER COLUMN id SET DEFAULT nextval('adm.espacos_id_seq'::regclass);


--
-- TOC entry 2595 (class 2604 OID 28587)
-- Name: estacionamentos id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.estacionamentos ALTER COLUMN id SET DEFAULT nextval('adm.estacionamentos_id_seq'::regclass);


--
-- TOC entry 2599 (class 2604 OID 28588)
-- Name: gestao id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao ALTER COLUMN id SET DEFAULT nextval('adm.gestao_id_seq'::regclass);


--
-- TOC entry 2601 (class 2604 OID 28589)
-- Name: piscinas id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.piscinas ALTER COLUMN id SET DEFAULT nextval('adm.piscinas_id_seq'::regclass);


--
-- TOC entry 2603 (class 2604 OID 28590)
-- Name: portarias id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.portarias ALTER COLUMN id SET DEFAULT nextval('adm.portarias_id_seq'::regclass);


--
-- TOC entry 2605 (class 2604 OID 28591)
-- Name: vagas id; Type: DEFAULT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.vagas ALTER COLUMN id SET DEFAULT nextval('adm.vagas_id_seq'::regclass);


--
-- TOC entry 2639 (class 2604 OID 28895)
-- Name: autorizacao_pessoal id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.autorizacao_pessoal ALTER COLUMN id SET DEFAULT nextval('residencial.autorizacao_pessoal_id_seq'::regclass);


--
-- TOC entry 2636 (class 2604 OID 28872)
-- Name: autorizacao_veicular id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.autorizacao_veicular ALTER COLUMN id SET DEFAULT nextval('residencial.autorizacao_veicular_id_seq'::regclass);


--
-- TOC entry 2628 (class 2604 OID 28738)
-- Name: correspondencias id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.correspondencias ALTER COLUMN id SET DEFAULT nextval('residencial.correspondencias_id_seq'::regclass);


--
-- TOC entry 2630 (class 2604 OID 28755)
-- Name: diario id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.diario ALTER COLUMN id SET DEFAULT nextval('residencial.diario_id_seq'::regclass);


--
-- TOC entry 2615 (class 2604 OID 28592)
-- Name: emails id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.emails ALTER COLUMN id SET DEFAULT nextval('residencial.emails_id_seq'::regclass);


--
-- TOC entry 2650 (class 2604 OID 29019)
-- Name: incidentes id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.incidentes ALTER COLUMN id SET DEFAULT nextval('residencial.incidentes_id_seq'::regclass);


--
-- TOC entry 2648 (class 2604 OID 29001)
-- Name: login id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.login ALTER COLUMN id SET DEFAULT nextval('residencial.login_id_seq'::regclass);


--
-- TOC entry 2617 (class 2604 OID 28593)
-- Name: pessoas id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.pessoas ALTER COLUMN id SET DEFAULT nextval('residencial.pessoas_id_seq'::regclass);


--
-- TOC entry 2619 (class 2604 OID 28594)
-- Name: pets id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.pets ALTER COLUMN id SET DEFAULT nextval('residencial.pets_id_seq'::regclass);


--
-- TOC entry 2652 (class 2604 OID 29038)
-- Name: pre_autorizacao id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.pre_autorizacao ALTER COLUMN id SET DEFAULT nextval('residencial.pre_autorizacao_id_seq'::regclass);


--
-- TOC entry 2654 (class 2604 OID 29040)
-- Name: pre_autorizacao pessoa; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.pre_autorizacao ALTER COLUMN pessoa SET DEFAULT nextval('residencial.pre_autorizacao_pessoa_seq'::regclass);


--
-- TOC entry 2646 (class 2604 OID 28979)
-- Name: reservas id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.reservas ALTER COLUMN id SET DEFAULT nextval('residencial.reservas_id_seq'::regclass);


--
-- TOC entry 2642 (class 2604 OID 28936)
-- Name: solicitacoes id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.solicitacoes ALTER COLUMN id SET DEFAULT nextval('residencial.solicitacoes_id_seq'::regclass);


--
-- TOC entry 2634 (class 2604 OID 28821)
-- Name: tipo_bloqueio id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.tipo_bloqueio ALTER COLUMN id SET DEFAULT nextval('residencial.tipo_bloqueio_id_seq'::regclass);


--
-- TOC entry 2632 (class 2604 OID 28772)
-- Name: tipo_diario id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.tipo_diario ALTER COLUMN id SET DEFAULT nextval('residencial.tipo_diario_id_seq'::regclass);


--
-- TOC entry 2623 (class 2604 OID 28596)
-- Name: tipo_registro id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.tipo_registro ALTER COLUMN id SET DEFAULT nextval('residencial.tipo_registro_id_seq'::regclass);


--
-- TOC entry 2644 (class 2604 OID 28953)
-- Name: tipo_solicitacao id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.tipo_solicitacao ALTER COLUMN id SET DEFAULT nextval('residencial.tipo_solicitacao_id_seq'::regclass);


--
-- TOC entry 2625 (class 2604 OID 28597)
-- Name: tipo_veiculo id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.tipo_veiculo ALTER COLUMN id SET DEFAULT nextval('residencial.tipo_veiculo_id_seq'::regclass);


--
-- TOC entry 2621 (class 2604 OID 28595)
-- Name: unidade id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.unidade ALTER COLUMN id SET DEFAULT nextval('residencial.registro_id_seq'::regclass);


--
-- TOC entry 2627 (class 2604 OID 28598)
-- Name: veiculos id; Type: DEFAULT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.veiculos ALTER COLUMN id SET DEFAULT nextval('residencial.veiculos_id_seq'::regclass);


--
-- TOC entry 2656 (class 2606 OID 28600)
-- Name: academias primarykey_adm_academias; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.academias
    ADD CONSTRAINT primarykey_adm_academias PRIMARY KEY (id);


--
-- TOC entry 2658 (class 2606 OID 28602)
-- Name: bloco primarykey_adm_blocos; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.bloco
    ADD CONSTRAINT primarykey_adm_blocos PRIMARY KEY (id);


--
-- TOC entry 2660 (class 2606 OID 28604)
-- Name: churrasqueiras primarykey_adm_churrasqueiras; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.churrasqueiras
    ADD CONSTRAINT primarykey_adm_churrasqueiras PRIMARY KEY (id);


--
-- TOC entry 2662 (class 2606 OID 28606)
-- Name: condominio primarykey_adm_condominio; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.condominio
    ADD CONSTRAINT primarykey_adm_condominio PRIMARY KEY (id);


--
-- TOC entry 2664 (class 2606 OID 28608)
-- Name: designacoes primarykey_adm_designacoes; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.designacoes
    ADD CONSTRAINT primarykey_adm_designacoes PRIMARY KEY (id);


--
-- TOC entry 2666 (class 2606 OID 28610)
-- Name: elevadores primarykey_adm_elevadores; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.elevadores
    ADD CONSTRAINT primarykey_adm_elevadores PRIMARY KEY (id);


--
-- TOC entry 2668 (class 2606 OID 28612)
-- Name: espacos primarykey_adm_espacos; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.espacos
    ADD CONSTRAINT primarykey_adm_espacos PRIMARY KEY (id);


--
-- TOC entry 2670 (class 2606 OID 28614)
-- Name: estacionamentos primarykey_adm_estacionamentos; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.estacionamentos
    ADD CONSTRAINT primarykey_adm_estacionamentos PRIMARY KEY (id);


--
-- TOC entry 2672 (class 2606 OID 28616)
-- Name: gestao primarykey_adm_gestao; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao
    ADD CONSTRAINT primarykey_adm_gestao PRIMARY KEY (id);


--
-- TOC entry 2674 (class 2606 OID 28618)
-- Name: piscinas primarykey_adm_piscinas; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.piscinas
    ADD CONSTRAINT primarykey_adm_piscinas PRIMARY KEY (id);


--
-- TOC entry 2676 (class 2606 OID 28620)
-- Name: portarias primarykey_adm_portarias; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.portarias
    ADD CONSTRAINT primarykey_adm_portarias PRIMARY KEY (id);


--
-- TOC entry 2678 (class 2606 OID 28622)
-- Name: vagas primarykey_adm_vagas; Type: CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.vagas
    ADD CONSTRAINT primarykey_adm_vagas PRIMARY KEY (id);


--
-- TOC entry 2704 (class 2606 OID 28902)
-- Name: autorizacao_pessoal primarykey_unidade_autorizacao_pessoal; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.autorizacao_pessoal
    ADD CONSTRAINT primarykey_unidade_autorizacao_pessoal PRIMARY KEY (id);


--
-- TOC entry 2702 (class 2606 OID 28879)
-- Name: autorizacao_veicular primarykey_unidade_autorizacao_veicular; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.autorizacao_veicular
    ADD CONSTRAINT primarykey_unidade_autorizacao_veicular PRIMARY KEY (id);


--
-- TOC entry 2694 (class 2606 OID 28744)
-- Name: correspondencias primarykey_unidade_correspondencias; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.correspondencias
    ADD CONSTRAINT primarykey_unidade_correspondencias PRIMARY KEY (id);


--
-- TOC entry 2696 (class 2606 OID 28761)
-- Name: diario primarykey_unidade_diario; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.diario
    ADD CONSTRAINT primarykey_unidade_diario PRIMARY KEY (id);


--
-- TOC entry 2680 (class 2606 OID 28624)
-- Name: emails primarykey_unidade_emails; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.emails
    ADD CONSTRAINT primarykey_unidade_emails PRIMARY KEY (id);


--
-- TOC entry 2714 (class 2606 OID 29025)
-- Name: incidentes primarykey_unidade_incidentes; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.incidentes
    ADD CONSTRAINT primarykey_unidade_incidentes PRIMARY KEY (id);


--
-- TOC entry 2712 (class 2606 OID 29007)
-- Name: login primarykey_unidade_login; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.login
    ADD CONSTRAINT primarykey_unidade_login PRIMARY KEY (id);


--
-- TOC entry 2682 (class 2606 OID 28626)
-- Name: pessoas primarykey_unidade_pessoas; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.pessoas
    ADD CONSTRAINT primarykey_unidade_pessoas PRIMARY KEY (id);


--
-- TOC entry 2684 (class 2606 OID 28628)
-- Name: pets primarykey_unidade_pets; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.pets
    ADD CONSTRAINT primarykey_unidade_pets PRIMARY KEY (id);


--
-- TOC entry 2716 (class 2606 OID 29042)
-- Name: pre_autorizacao primarykey_unidade_pre_autorizacao; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.pre_autorizacao
    ADD CONSTRAINT primarykey_unidade_pre_autorizacao PRIMARY KEY (id);


--
-- TOC entry 2686 (class 2606 OID 28630)
-- Name: unidade primarykey_unidade_registro; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.unidade
    ADD CONSTRAINT primarykey_unidade_registro PRIMARY KEY (id);


--
-- TOC entry 2710 (class 2606 OID 28982)
-- Name: reservas primarykey_unidade_reservas; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.reservas
    ADD CONSTRAINT primarykey_unidade_reservas PRIMARY KEY (id);


--
-- TOC entry 2706 (class 2606 OID 28942)
-- Name: solicitacoes primarykey_unidade_solicitacoes; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.solicitacoes
    ADD CONSTRAINT primarykey_unidade_solicitacoes PRIMARY KEY (id);


--
-- TOC entry 2700 (class 2606 OID 28827)
-- Name: tipo_bloqueio primarykey_unidade_tipo_bloqueio; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.tipo_bloqueio
    ADD CONSTRAINT primarykey_unidade_tipo_bloqueio PRIMARY KEY (id);


--
-- TOC entry 2698 (class 2606 OID 28778)
-- Name: tipo_diario primarykey_unidade_tipo_diario; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.tipo_diario
    ADD CONSTRAINT primarykey_unidade_tipo_diario PRIMARY KEY (id);


--
-- TOC entry 2688 (class 2606 OID 28632)
-- Name: tipo_registro primarykey_unidade_tipo_registro; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.tipo_registro
    ADD CONSTRAINT primarykey_unidade_tipo_registro PRIMARY KEY (id);


--
-- TOC entry 2708 (class 2606 OID 28959)
-- Name: tipo_solicitacao primarykey_unidade_tipo_solicitacao; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.tipo_solicitacao
    ADD CONSTRAINT primarykey_unidade_tipo_solicitacao PRIMARY KEY (id);


--
-- TOC entry 2690 (class 2606 OID 28634)
-- Name: tipo_veiculo primarykey_unidade_tipo_veiculo; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.tipo_veiculo
    ADD CONSTRAINT primarykey_unidade_tipo_veiculo PRIMARY KEY (id);


--
-- TOC entry 2692 (class 2606 OID 28636)
-- Name: veiculos primarykey_unidade_veiculos; Type: CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.veiculos
    ADD CONSTRAINT primarykey_unidade_veiculos PRIMARY KEY (id);


--
-- TOC entry 2717 (class 2606 OID 28637)
-- Name: academias academias_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.academias
    ADD CONSTRAINT academias_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2718 (class 2606 OID 28642)
-- Name: bloco blocos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.bloco
    ADD CONSTRAINT blocos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2719 (class 2606 OID 28647)
-- Name: churrasqueiras churrasqueiras_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.churrasqueiras
    ADD CONSTRAINT churrasqueiras_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2720 (class 2606 OID 28652)
-- Name: elevadores elevadores_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.elevadores
    ADD CONSTRAINT elevadores_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2721 (class 2606 OID 28657)
-- Name: espacos espacos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.espacos
    ADD CONSTRAINT espacos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2722 (class 2606 OID 28662)
-- Name: estacionamentos estacionamentos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.estacionamentos
    ADD CONSTRAINT estacionamentos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2723 (class 2606 OID 28667)
-- Name: gestao gestao_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao
    ADD CONSTRAINT gestao_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2724 (class 2606 OID 28672)
-- Name: gestao gestao_designacoes_fk; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.gestao
    ADD CONSTRAINT gestao_designacoes_fk FOREIGN KEY (designacao) REFERENCES adm.designacoes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2725 (class 2606 OID 28677)
-- Name: piscinas piscinas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.piscinas
    ADD CONSTRAINT piscinas_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2726 (class 2606 OID 28682)
-- Name: portarias portarias_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.portarias
    ADD CONSTRAINT portarias_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES adm.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2727 (class 2606 OID 28687)
-- Name: vagas vagas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: adm; Owner: postgres
--

ALTER TABLE ONLY adm.vagas
    ADD CONSTRAINT vagas_condominio_foreignkey FOREIGN KEY (estacionamento) REFERENCES adm.estacionamentos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2741 (class 2606 OID 28903)
-- Name: autorizacao_pessoal autorizacao_pessoa_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.autorizacao_pessoal
    ADD CONSTRAINT autorizacao_pessoa_foreignkey FOREIGN KEY (usuario) REFERENCES residencial.pessoas(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2740 (class 2606 OID 28885)
-- Name: autorizacao_veicular autorizacao_unidade_tipo_bloqueio_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.autorizacao_veicular
    ADD CONSTRAINT autorizacao_unidade_tipo_bloqueio_foreignkey FOREIGN KEY (bloqueio) REFERENCES residencial.tipo_bloqueio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2742 (class 2606 OID 28908)
-- Name: autorizacao_pessoal autorizacao_unidade_tipo_bloqueio_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.autorizacao_pessoal
    ADD CONSTRAINT autorizacao_unidade_tipo_bloqueio_foreignkey FOREIGN KEY (bloqueio) REFERENCES residencial.tipo_bloqueio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2739 (class 2606 OID 28880)
-- Name: autorizacao_veicular autorizacao_veiculo_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.autorizacao_veicular
    ADD CONSTRAINT autorizacao_veiculo_foreignkey FOREIGN KEY (veiculo) REFERENCES residencial.veiculos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2736 (class 2606 OID 28745)
-- Name: correspondencias correspondencias_unidade_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.correspondencias
    ADD CONSTRAINT correspondencias_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES residencial.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2737 (class 2606 OID 28762)
-- Name: diario diario_unidade_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.diario
    ADD CONSTRAINT diario_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES residencial.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2738 (class 2606 OID 28779)
-- Name: diario diario_unidade_tipo_diario_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.diario
    ADD CONSTRAINT diario_unidade_tipo_diario_foreignkey FOREIGN KEY (diario) REFERENCES residencial.tipo_diario(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2728 (class 2606 OID 28692)
-- Name: emails emails_unidade_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.emails
    ADD CONSTRAINT emails_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES residencial.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2747 (class 2606 OID 29026)
-- Name: incidentes incidentes_unidade_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.incidentes
    ADD CONSTRAINT incidentes_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES residencial.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2746 (class 2606 OID 29008)
-- Name: login login_unidade_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.login
    ADD CONSTRAINT login_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES residencial.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2729 (class 2606 OID 28697)
-- Name: pessoas pessoas_tipo_registro_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.pessoas
    ADD CONSTRAINT pessoas_tipo_registro_foreignkey FOREIGN KEY (tipo) REFERENCES residencial.tipo_registro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2730 (class 2606 OID 28702)
-- Name: pessoas pessoas_unidade_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.pessoas
    ADD CONSTRAINT pessoas_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES residencial.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2731 (class 2606 OID 28707)
-- Name: pets pets_unidade_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.pets
    ADD CONSTRAINT pets_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES residencial.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2748 (class 2606 OID 29043)
-- Name: pre_autorizacao pre_autorizacao_unidade_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.pre_autorizacao
    ADD CONSTRAINT pre_autorizacao_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES residencial.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2732 (class 2606 OID 28712)
-- Name: unidade registro_bloco_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.unidade
    ADD CONSTRAINT registro_bloco_foreignkey FOREIGN KEY (bloco) REFERENCES adm.bloco(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2745 (class 2606 OID 28983)
-- Name: reservas reservas_unidade_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.reservas
    ADD CONSTRAINT reservas_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES residencial.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2744 (class 2606 OID 29048)
-- Name: solicitacoes solicitacoes_tipo_solicitacao_fk; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.solicitacoes
    ADD CONSTRAINT solicitacoes_tipo_solicitacao_fk FOREIGN KEY (tipo) REFERENCES residencial.tipo_solicitacao(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2743 (class 2606 OID 28943)
-- Name: solicitacoes solicitacoes_unidade_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.solicitacoes
    ADD CONSTRAINT solicitacoes_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES residencial.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2733 (class 2606 OID 28717)
-- Name: veiculos veiculos_tipo_registro_fk; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.veiculos
    ADD CONSTRAINT veiculos_tipo_registro_fk FOREIGN KEY (tipo_registro) REFERENCES residencial.tipo_registro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2734 (class 2606 OID 28722)
-- Name: veiculos veiculos_tipo_veiculo_fk; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.veiculos
    ADD CONSTRAINT veiculos_tipo_veiculo_fk FOREIGN KEY (tipo_veiculo) REFERENCES residencial.tipo_veiculo(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2735 (class 2606 OID 28727)
-- Name: veiculos veiculos_unidade_foreignkey; Type: FK CONSTRAINT; Schema: residencial; Owner: postgres
--

ALTER TABLE ONLY residencial.veiculos
    ADD CONSTRAINT veiculos_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES residencial.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2019-10-15 13:43:51 -03

--
-- PostgreSQL database dump complete
--

