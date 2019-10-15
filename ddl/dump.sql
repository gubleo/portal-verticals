--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 11.5

-- Started on 2019-10-15 17:40:50 -03

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
-- TOC entry 10 (class 2615 OID 29407)
-- Name: administracao; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA administracao;


ALTER SCHEMA administracao OWNER TO postgres;

--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA administracao; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA administracao IS 'tabelas de gestão do condomínio';


--
-- TOC entry 6 (class 2615 OID 29408)
-- Name: cms; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cms;


ALTER SCHEMA cms OWNER TO postgres;

--
-- TOC entry 14 (class 2615 OID 30245)
-- Name: config; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA config;


ALTER SCHEMA config OWNER TO postgres;

--
-- TOC entry 7 (class 2615 OID 29409)
-- Name: conveniencia; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA conveniencia;


ALTER SCHEMA conveniencia OWNER TO postgres;

--
-- TOC entry 9 (class 2615 OID 29410)
-- Name: financeiro; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA financeiro;


ALTER SCHEMA financeiro OWNER TO postgres;

--
-- TOC entry 5 (class 2615 OID 29411)
-- Name: operacional; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operacional;


ALTER SCHEMA operacional OWNER TO postgres;

--
-- TOC entry 2 (class 3079 OID 28321)
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- TOC entry 776 (class 1247 OID 28407)
-- Name: email; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.email AS public.citext
	CONSTRAINT email_check CHECK ((VALUE OPERATOR(public.~) '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$'::public.citext));


ALTER DOMAIN public.email OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 29412)
-- Name: academias; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.academias (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.academias OWNER TO postgres;

--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE academias; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.academias IS 'Cadastro de informações pertinentes do funcionamento das academias do condomínio';


--
-- TOC entry 204 (class 1259 OID 29419)
-- Name: academias_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.academias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.academias_id_seq OWNER TO postgres;

--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 204
-- Name: academias_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.academias_id_seq OWNED BY administracao.academias.id;


--
-- TOC entry 205 (class 1259 OID 29421)
-- Name: assembleias; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.assembleias (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.assembleias OWNER TO postgres;

--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE assembleias; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.assembleias IS 'Registro de assembléias';


--
-- TOC entry 206 (class 1259 OID 29428)
-- Name: assembleias_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.assembleias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.assembleias_id_seq OWNER TO postgres;

--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 206
-- Name: assembleias_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.assembleias_id_seq OWNED BY administracao.assembleias.id;


--
-- TOC entry 207 (class 1259 OID 29430)
-- Name: bloco; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.bloco (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.bloco OWNER TO postgres;

--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE bloco; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.bloco IS 'Informações a respeito dos blocos do condomínio';


--
-- TOC entry 208 (class 1259 OID 29437)
-- Name: blocos_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.blocos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.blocos_id_seq OWNER TO postgres;

--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 208
-- Name: blocos_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.blocos_id_seq OWNED BY administracao.bloco.id;


--
-- TOC entry 209 (class 1259 OID 29439)
-- Name: churrasqueiras; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.churrasqueiras (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.churrasqueiras OWNER TO postgres;

--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE churrasqueiras; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.churrasqueiras IS 'Informações de gestão das churrasqueiras';


--
-- TOC entry 210 (class 1259 OID 29446)
-- Name: churrasqueiras_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.churrasqueiras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.churrasqueiras_id_seq OWNER TO postgres;

--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 210
-- Name: churrasqueiras_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.churrasqueiras_id_seq OWNED BY administracao.churrasqueiras.id;


--
-- TOC entry 211 (class 1259 OID 29448)
-- Name: condominio; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.condominio (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.condominio OWNER TO postgres;

--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE condominio; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.condominio IS 'informações detalhadas do condomínio que serão utilizados em todos os módulos do sistema Verticals';


--
-- TOC entry 212 (class 1259 OID 29455)
-- Name: condominio_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.condominio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.condominio_id_seq OWNER TO postgres;

--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 212
-- Name: condominio_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.condominio_id_seq OWNED BY administracao.condominio.id;


--
-- TOC entry 213 (class 1259 OID 29457)
-- Name: designacoes; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.designacoes (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.designacoes OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 29464)
-- Name: designacoes_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.designacoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.designacoes_id_seq OWNER TO postgres;

--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 214
-- Name: designacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.designacoes_id_seq OWNED BY administracao.designacoes.id;


--
-- TOC entry 215 (class 1259 OID 29466)
-- Name: documentos; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.documentos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.documentos OWNER TO postgres;

--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE documentos; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.documentos IS 'Integração de documentos com nuvem storage';


--
-- TOC entry 216 (class 1259 OID 29473)
-- Name: documentos_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.documentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.documentos_id_seq OWNER TO postgres;

--
-- TOC entry 3106 (class 0 OID 0)
-- Dependencies: 216
-- Name: documentos_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.documentos_id_seq OWNED BY administracao.documentos.id;


--
-- TOC entry 217 (class 1259 OID 29475)
-- Name: elevadores; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.elevadores (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.elevadores OWNER TO postgres;

--
-- TOC entry 3107 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE elevadores; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.elevadores IS 'Informações de gestão das elevadores';


--
-- TOC entry 218 (class 1259 OID 29482)
-- Name: elevadores_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.elevadores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.elevadores_id_seq OWNER TO postgres;

--
-- TOC entry 3108 (class 0 OID 0)
-- Dependencies: 218
-- Name: elevadores_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.elevadores_id_seq OWNED BY administracao.elevadores.id;


--
-- TOC entry 219 (class 1259 OID 29484)
-- Name: enquetes; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.enquetes (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.enquetes OWNER TO postgres;

--
-- TOC entry 3109 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE enquetes; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.enquetes IS 'Serviço de pesquisas para obter a opnião a respeito das tomadas de decisão';


--
-- TOC entry 220 (class 1259 OID 29491)
-- Name: enquetes_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.enquetes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.enquetes_id_seq OWNER TO postgres;

--
-- TOC entry 3110 (class 0 OID 0)
-- Dependencies: 220
-- Name: enquetes_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.enquetes_id_seq OWNED BY administracao.enquetes.id;


--
-- TOC entry 221 (class 1259 OID 29493)
-- Name: espacos; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.espacos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.espacos OWNER TO postgres;

--
-- TOC entry 3111 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE espacos; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.espacos IS 'Detalhes dos salões e suas atividades';


--
-- TOC entry 222 (class 1259 OID 29500)
-- Name: espacos_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.espacos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.espacos_id_seq OWNER TO postgres;

--
-- TOC entry 3112 (class 0 OID 0)
-- Dependencies: 222
-- Name: espacos_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.espacos_id_seq OWNED BY administracao.espacos.id;


--
-- TOC entry 223 (class 1259 OID 29502)
-- Name: estacionamentos; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.estacionamentos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.estacionamentos OWNER TO postgres;

--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE estacionamentos; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.estacionamentos IS 'Informações de gestão das estacionamentos';


--
-- TOC entry 224 (class 1259 OID 29509)
-- Name: estacionamentos_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.estacionamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.estacionamentos_id_seq OWNER TO postgres;

--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 224
-- Name: estacionamentos_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.estacionamentos_id_seq OWNED BY administracao.estacionamentos.id;


--
-- TOC entry 225 (class 1259 OID 29511)
-- Name: gestao; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.gestao (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
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


ALTER TABLE administracao.gestao OWNER TO postgres;

--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE gestao; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.gestao IS 'Registra os tipos de cargos ou designações existentes no condominio';


--
-- TOC entry 226 (class 1259 OID 29520)
-- Name: gestao_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.gestao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.gestao_id_seq OWNER TO postgres;

--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 226
-- Name: gestao_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.gestao_id_seq OWNED BY administracao.gestao.id;


--
-- TOC entry 227 (class 1259 OID 29522)
-- Name: piscinas; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.piscinas (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.piscinas OWNER TO postgres;

--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE piscinas; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.piscinas IS 'Gestão das piscinas';


--
-- TOC entry 228 (class 1259 OID 29529)
-- Name: piscinas_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.piscinas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.piscinas_id_seq OWNER TO postgres;

--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 228
-- Name: piscinas_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.piscinas_id_seq OWNED BY administracao.piscinas.id;


--
-- TOC entry 229 (class 1259 OID 29531)
-- Name: portarias; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.portarias (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.portarias OWNER TO postgres;

--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE portarias; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.portarias IS 'Informações de gestão das portarias';


--
-- TOC entry 230 (class 1259 OID 29538)
-- Name: portarias_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.portarias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.portarias_id_seq OWNER TO postgres;

--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 230
-- Name: portarias_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.portarias_id_seq OWNED BY administracao.portarias.id;


--
-- TOC entry 231 (class 1259 OID 29540)
-- Name: quadras; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.quadras (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.quadras OWNER TO postgres;

--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE quadras; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.quadras IS 'Informações de gestão das quadras';


--
-- TOC entry 232 (class 1259 OID 29547)
-- Name: quadras_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.quadras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.quadras_id_seq OWNER TO postgres;

--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 232
-- Name: quadras_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.quadras_id_seq OWNED BY administracao.quadras.id;


--
-- TOC entry 233 (class 1259 OID 29549)
-- Name: reserva; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.reserva (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.reserva OWNER TO postgres;

--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 233
-- Name: TABLE reserva; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.reserva IS 'Serviço de reserva de espaços';


--
-- TOC entry 234 (class 1259 OID 29556)
-- Name: reserva_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.reserva_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.reserva_id_seq OWNER TO postgres;

--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 234
-- Name: reserva_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.reserva_id_seq OWNED BY administracao.reserva.id;


--
-- TOC entry 235 (class 1259 OID 29558)
-- Name: vagas; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.vagas (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    estacionamento integer NOT NULL,
    numero character varying(500) NOT NULL
);


ALTER TABLE administracao.vagas OWNER TO postgres;

--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 235
-- Name: TABLE vagas; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.vagas IS 'Controle de vagas dos estacionamentos';


--
-- TOC entry 236 (class 1259 OID 29565)
-- Name: vagas_id_seq; Type: SEQUENCE; Schema: administracao; Owner: postgres
--

CREATE SEQUENCE administracao.vagas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE administracao.vagas_id_seq OWNER TO postgres;

--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 236
-- Name: vagas_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.vagas_id_seq OWNED BY administracao.vagas.id;


--
-- TOC entry 237 (class 1259 OID 29567)
-- Name: artigos; Type: TABLE; Schema: cms; Owner: postgres
--

CREATE TABLE cms.artigos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE cms.artigos OWNER TO postgres;

--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 237
-- Name: TABLE artigos; Type: COMMENT; Schema: cms; Owner: postgres
--

COMMENT ON TABLE cms.artigos IS 'Geração de artigos para apresentação no site do condomínio';


--
-- TOC entry 238 (class 1259 OID 29574)
-- Name: artigos_id_seq; Type: SEQUENCE; Schema: cms; Owner: postgres
--

CREATE SEQUENCE cms.artigos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cms.artigos_id_seq OWNER TO postgres;

--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 238
-- Name: artigos_id_seq; Type: SEQUENCE OWNED BY; Schema: cms; Owner: postgres
--

ALTER SEQUENCE cms.artigos_id_seq OWNED BY cms.artigos.id;


--
-- TOC entry 239 (class 1259 OID 29576)
-- Name: comunicados; Type: TABLE; Schema: cms; Owner: postgres
--

CREATE TABLE cms.comunicados (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE cms.comunicados OWNER TO postgres;

--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 239
-- Name: TABLE comunicados; Type: COMMENT; Schema: cms; Owner: postgres
--

COMMENT ON TABLE cms.comunicados IS 'Envio de mala direta aos condôminos';


--
-- TOC entry 240 (class 1259 OID 29583)
-- Name: comunicados_id_seq; Type: SEQUENCE; Schema: cms; Owner: postgres
--

CREATE SEQUENCE cms.comunicados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cms.comunicados_id_seq OWNER TO postgres;

--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 240
-- Name: comunicados_id_seq; Type: SEQUENCE OWNED BY; Schema: cms; Owner: postgres
--

ALTER SEQUENCE cms.comunicados_id_seq OWNED BY cms.comunicados.id;


--
-- TOC entry 301 (class 1259 OID 30248)
-- Name: bloqueios_ctrl_acesso; Type: TABLE; Schema: config; Owner: postgres
--

CREATE TABLE config.bloqueios_ctrl_acesso (
    id integer NOT NULL,
    firstdate timestamp without time zone,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone,
    firstuser character varying(15),
    lasttuser character varying(15),
    purgeuser character varying(15),
    nome character varying(500)
);


ALTER TABLE config.bloqueios_ctrl_acesso OWNER TO postgres;

--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 301
-- Name: TABLE bloqueios_ctrl_acesso; Type: COMMENT; Schema: config; Owner: postgres
--

COMMENT ON TABLE config.bloqueios_ctrl_acesso IS 'Informa os tipos de bloqueios utilizados nas operações de controle de acesso';


--
-- TOC entry 300 (class 1259 OID 30246)
-- Name: bloqueios_ctrl_acesso_id_seq; Type: SEQUENCE; Schema: config; Owner: postgres
--

CREATE SEQUENCE config.bloqueios_ctrl_acesso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE config.bloqueios_ctrl_acesso_id_seq OWNER TO postgres;

--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 300
-- Name: bloqueios_ctrl_acesso_id_seq; Type: SEQUENCE OWNED BY; Schema: config; Owner: postgres
--

ALTER SEQUENCE config.bloqueios_ctrl_acesso_id_seq OWNED BY config.bloqueios_ctrl_acesso.id;


--
-- TOC entry 241 (class 1259 OID 29585)
-- Name: pessoal_autorizacao; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pessoal_autorizacao (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    usuario integer NOT NULL,
    rfid character varying(10) NOT NULL,
    fingerprint character varying NOT NULL,
    bloqueio integer DEFAULT 0 NOT NULL
);


ALTER TABLE conveniencia.pessoal_autorizacao OWNER TO postgres;

--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 241
-- Name: TABLE pessoal_autorizacao; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_autorizacao IS 'Registro de autorização do controle de acesso';


--
-- TOC entry 242 (class 1259 OID 29593)
-- Name: autorizacao_pessoal_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.autorizacao_pessoal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.autorizacao_pessoal_id_seq OWNER TO postgres;

--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 242
-- Name: autorizacao_pessoal_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.autorizacao_pessoal_id_seq OWNED BY conveniencia.pessoal_autorizacao.id;


--
-- TOC entry 243 (class 1259 OID 29595)
-- Name: autorizacao_veicular; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.autorizacao_veicular (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    veiculo integer NOT NULL,
    rfid character varying(10) NOT NULL,
    fingerprint character varying NOT NULL,
    bloqueio integer DEFAULT 0 NOT NULL
);


ALTER TABLE conveniencia.autorizacao_veicular OWNER TO postgres;

--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 243
-- Name: TABLE autorizacao_veicular; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.autorizacao_veicular IS 'Registro de autorização do controle de acesso';


--
-- TOC entry 244 (class 1259 OID 29603)
-- Name: autorizacao_veicular_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.autorizacao_veicular_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.autorizacao_veicular_id_seq OWNER TO postgres;

--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 244
-- Name: autorizacao_veicular_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.autorizacao_veicular_id_seq OWNED BY conveniencia.autorizacao_veicular.id;


--
-- TOC entry 245 (class 1259 OID 29605)
-- Name: correspondencias; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.correspondencias (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
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


ALTER TABLE conveniencia.correspondencias OWNER TO postgres;

--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 245
-- Name: TABLE correspondencias; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.correspondencias IS 'Tabela de controle das correspondências do condomínio';


--
-- TOC entry 246 (class 1259 OID 29612)
-- Name: correspondencias_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.correspondencias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.correspondencias_id_seq OWNER TO postgres;

--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 246
-- Name: correspondencias_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.correspondencias_id_seq OWNED BY conveniencia.correspondencias.id;


--
-- TOC entry 247 (class 1259 OID 29614)
-- Name: diario; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.diario (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    diario integer NOT NULL,
    observacoes character varying NOT NULL
);


ALTER TABLE conveniencia.diario OWNER TO postgres;

--
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 247
-- Name: TABLE diario; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.diario IS 'Registra os tipos de eventos que ocorrem na unidade, ex: mudança de entrada, reformas etc.';


--
-- TOC entry 248 (class 1259 OID 29621)
-- Name: diario_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.diario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.diario_id_seq OWNER TO postgres;

--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 248
-- Name: diario_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.diario_id_seq OWNED BY conveniencia.diario.id;


--
-- TOC entry 249 (class 1259 OID 29623)
-- Name: emails; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.emails (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
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


ALTER TABLE conveniencia.emails OWNER TO postgres;

--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 249
-- Name: TABLE emails; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.emails IS 'Endereços e tipos de entrega de informação aos condôminos';


--
-- TOC entry 250 (class 1259 OID 29638)
-- Name: emails_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.emails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.emails_id_seq OWNER TO postgres;

--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 250
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.emails_id_seq OWNED BY conveniencia.emails.id;


--
-- TOC entry 251 (class 1259 OID 29640)
-- Name: incidentes; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.incidentes (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
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


ALTER TABLE conveniencia.incidentes OWNER TO postgres;

--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 251
-- Name: TABLE incidentes; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.incidentes IS 'Registra multas, notificações e ocorrências da unidade';


--
-- TOC entry 252 (class 1259 OID 29647)
-- Name: incidentes_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.incidentes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.incidentes_id_seq OWNER TO postgres;

--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 252
-- Name: incidentes_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.incidentes_id_seq OWNED BY conveniencia.incidentes.id;


--
-- TOC entry 253 (class 1259 OID 29649)
-- Name: login; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.login (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    username character varying(15) NOT NULL,
    keypair character varying NOT NULL
);


ALTER TABLE conveniencia.login OWNER TO postgres;

--
-- TOC entry 3145 (class 0 OID 0)
-- Dependencies: 253
-- Name: TABLE login; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.login IS 'Usuário do condômino';


--
-- TOC entry 254 (class 1259 OID 29656)
-- Name: login_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.login_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.login_id_seq OWNER TO postgres;

--
-- TOC entry 3146 (class 0 OID 0)
-- Dependencies: 254
-- Name: login_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.login_id_seq OWNED BY conveniencia.login.id;


--
-- TOC entry 255 (class 1259 OID 29658)
-- Name: pessoal_cadastro; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pessoal_cadastro (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    tipo integer NOT NULL
);


ALTER TABLE conveniencia.pessoal_cadastro OWNER TO postgres;

--
-- TOC entry 3147 (class 0 OID 0)
-- Dependencies: 255
-- Name: TABLE pessoal_cadastro; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_cadastro IS 'Registro geral de pessoas no condomínio';


--
-- TOC entry 256 (class 1259 OID 29662)
-- Name: pessoal_contato; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pessoal_contato (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    usuario integer NOT NULL,
    telefone character varying NOT NULL,
    email integer NOT NULL
);


ALTER TABLE conveniencia.pessoal_contato OWNER TO postgres;

--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 256
-- Name: TABLE pessoal_contato; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_contato IS 'Registra os dados de contato da pessoa';


--
-- TOC entry 257 (class 1259 OID 29669)
-- Name: pessoal_contato_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.pessoal_contato_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.pessoal_contato_id_seq OWNER TO postgres;

--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 257
-- Name: pessoal_contato_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoal_contato_id_seq OWNED BY conveniencia.pessoal_contato.id;


--
-- TOC entry 258 (class 1259 OID 29671)
-- Name: pessoal_documentos; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pessoal_documentos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    usuario integer NOT NULL,
    documento character varying NOT NULL,
    tipo integer NOT NULL
);


ALTER TABLE conveniencia.pessoal_documentos OWNER TO postgres;

--
-- TOC entry 3150 (class 0 OID 0)
-- Dependencies: 258
-- Name: TABLE pessoal_documentos; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_documentos IS 'Registra um documento específico da pessoa';


--
-- TOC entry 259 (class 1259 OID 29678)
-- Name: pessoal_documentos_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.pessoal_documentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.pessoal_documentos_id_seq OWNER TO postgres;

--
-- TOC entry 3151 (class 0 OID 0)
-- Dependencies: 259
-- Name: pessoal_documentos_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoal_documentos_id_seq OWNED BY conveniencia.pessoal_documentos.id;


--
-- TOC entry 260 (class 1259 OID 29680)
-- Name: pessoal_particularidades; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pessoal_particularidades (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    usuario integer NOT NULL,
    necessidades_especiais character varying,
    alergias character varying,
    medicamentos_controlados character varying,
    tipo_sanguineo character varying,
    contato_emergencia character varying,
    telefone_emergencia character varying,
    plano_saude character varying
);


ALTER TABLE conveniencia.pessoal_particularidades OWNER TO postgres;

--
-- TOC entry 3152 (class 0 OID 0)
-- Dependencies: 260
-- Name: TABLE pessoal_particularidades; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_particularidades IS 'Registra as particularidades da pessoa';


--
-- TOC entry 261 (class 1259 OID 29687)
-- Name: pessoal_particularidades_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.pessoal_particularidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.pessoal_particularidades_id_seq OWNER TO postgres;

--
-- TOC entry 3153 (class 0 OID 0)
-- Dependencies: 261
-- Name: pessoal_particularidades_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoal_particularidades_id_seq OWNED BY conveniencia.pessoal_particularidades.id;


--
-- TOC entry 262 (class 1259 OID 29689)
-- Name: pessoas_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.pessoas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.pessoas_id_seq OWNER TO postgres;

--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 262
-- Name: pessoas_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoas_id_seq OWNED BY conveniencia.pessoal_cadastro.id;


--
-- TOC entry 263 (class 1259 OID 29691)
-- Name: pets; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pets (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL
);


ALTER TABLE conveniencia.pets OWNER TO postgres;

--
-- TOC entry 3155 (class 0 OID 0)
-- Dependencies: 263
-- Name: TABLE pets; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pets IS 'Registro geral de pets da unidade';


--
-- TOC entry 264 (class 1259 OID 29695)
-- Name: pets_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.pets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.pets_id_seq OWNER TO postgres;

--
-- TOC entry 3156 (class 0 OID 0)
-- Dependencies: 264
-- Name: pets_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pets_id_seq OWNED BY conveniencia.pets.id;


--
-- TOC entry 265 (class 1259 OID 29697)
-- Name: pre_autorizacao; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pre_autorizacao (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    pessoa bigint NOT NULL
);


ALTER TABLE conveniencia.pre_autorizacao OWNER TO postgres;

--
-- TOC entry 3157 (class 0 OID 0)
-- Dependencies: 265
-- Name: TABLE pre_autorizacao; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pre_autorizacao IS 'Efetua a pré-autorização de visitantes, parentes próximos e prestadores de serviço';


--
-- TOC entry 266 (class 1259 OID 29701)
-- Name: pre_autorizacao_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.pre_autorizacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.pre_autorizacao_id_seq OWNER TO postgres;

--
-- TOC entry 3158 (class 0 OID 0)
-- Dependencies: 266
-- Name: pre_autorizacao_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pre_autorizacao_id_seq OWNED BY conveniencia.pre_autorizacao.id;


--
-- TOC entry 267 (class 1259 OID 29703)
-- Name: pre_autorizacao_pessoa_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.pre_autorizacao_pessoa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.pre_autorizacao_pessoa_seq OWNER TO postgres;

--
-- TOC entry 3159 (class 0 OID 0)
-- Dependencies: 267
-- Name: pre_autorizacao_pessoa_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pre_autorizacao_pessoa_seq OWNED BY conveniencia.pre_autorizacao.pessoa;


--
-- TOC entry 268 (class 1259 OID 29705)
-- Name: unidade; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.unidade (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    bloco integer NOT NULL,
    unidade character varying(5) NOT NULL,
    responsavel character varying(500) NOT NULL
);


ALTER TABLE conveniencia.unidade OWNER TO postgres;

--
-- TOC entry 3160 (class 0 OID 0)
-- Dependencies: 268
-- Name: TABLE unidade; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.unidade IS 'Informações gerais da unidade';


--
-- TOC entry 269 (class 1259 OID 29712)
-- Name: registro_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.registro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.registro_id_seq OWNER TO postgres;

--
-- TOC entry 3161 (class 0 OID 0)
-- Dependencies: 269
-- Name: registro_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.registro_id_seq OWNED BY conveniencia.unidade.id;


--
-- TOC entry 270 (class 1259 OID 29714)
-- Name: reservas; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.reservas (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    espaco integer NOT NULL
);


ALTER TABLE conveniencia.reservas OWNER TO postgres;

--
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 270
-- Name: TABLE reservas; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.reservas IS 'Registro de reserva de espaços';


--
-- TOC entry 271 (class 1259 OID 29718)
-- Name: reservas_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.reservas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.reservas_id_seq OWNER TO postgres;

--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 271
-- Name: reservas_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.reservas_id_seq OWNED BY conveniencia.reservas.id;


--
-- TOC entry 272 (class 1259 OID 29720)
-- Name: solicitacoes; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.solicitacoes (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
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


ALTER TABLE conveniencia.solicitacoes OWNER TO postgres;

--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 272
-- Name: TABLE solicitacoes; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.solicitacoes IS 'Registro de solicitações dos condôminos';


--
-- TOC entry 273 (class 1259 OID 29727)
-- Name: solicitacoes_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.solicitacoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.solicitacoes_id_seq OWNER TO postgres;

--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 273
-- Name: solicitacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.solicitacoes_id_seq OWNED BY conveniencia.solicitacoes.id;


--
-- TOC entry 274 (class 1259 OID 29738)
-- Name: tipo_diario; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.tipo_diario (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE conveniencia.tipo_diario OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 29745)
-- Name: tipo_diario_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.tipo_diario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.tipo_diario_id_seq OWNER TO postgres;

--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 275
-- Name: tipo_diario_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_diario_id_seq OWNED BY conveniencia.tipo_diario.id;


--
-- TOC entry 276 (class 1259 OID 29747)
-- Name: tipo_registro; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.tipo_registro (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE conveniencia.tipo_registro OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 29754)
-- Name: tipo_registro_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.tipo_registro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.tipo_registro_id_seq OWNER TO postgres;

--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 277
-- Name: tipo_registro_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_registro_id_seq OWNED BY conveniencia.tipo_registro.id;


--
-- TOC entry 278 (class 1259 OID 29756)
-- Name: tipo_solicitacao; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.tipo_solicitacao (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE conveniencia.tipo_solicitacao OWNER TO postgres;

--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 278
-- Name: TABLE tipo_solicitacao; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.tipo_solicitacao IS 'Informa os tipos de solicitacaos utilizados na abertura do pedido efetuado pelo condômino';


--
-- TOC entry 279 (class 1259 OID 29763)
-- Name: tipo_solicitacao_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.tipo_solicitacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.tipo_solicitacao_id_seq OWNER TO postgres;

--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 279
-- Name: tipo_solicitacao_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_solicitacao_id_seq OWNED BY conveniencia.tipo_solicitacao.id;


--
-- TOC entry 280 (class 1259 OID 29765)
-- Name: tipo_veiculo; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.tipo_veiculo (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE conveniencia.tipo_veiculo OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 29772)
-- Name: tipo_veiculo_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.tipo_veiculo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.tipo_veiculo_id_seq OWNER TO postgres;

--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 281
-- Name: tipo_veiculo_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_veiculo_id_seq OWNED BY conveniencia.tipo_veiculo.id;


--
-- TOC entry 282 (class 1259 OID 29774)
-- Name: veiculos; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.veiculos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL,
    tipo_registro integer NOT NULL,
    tipo_veiculo integer
);


ALTER TABLE conveniencia.veiculos OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 29778)
-- Name: veiculos_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.veiculos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.veiculos_id_seq OWNER TO postgres;

--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 283
-- Name: veiculos_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.veiculos_id_seq OWNED BY conveniencia.veiculos.id;


--
-- TOC entry 284 (class 1259 OID 29780)
-- Name: achados_perdidos; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.achados_perdidos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE operacional.achados_perdidos OWNER TO postgres;

--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 284
-- Name: TABLE achados_perdidos; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.achados_perdidos IS 'Controle de objetos perdidos';


--
-- TOC entry 285 (class 1259 OID 29787)
-- Name: achados_perdidos_id_seq; Type: SEQUENCE; Schema: operacional; Owner: postgres
--

CREATE SEQUENCE operacional.achados_perdidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operacional.achados_perdidos_id_seq OWNER TO postgres;

--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 285
-- Name: achados_perdidos_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.achados_perdidos_id_seq OWNED BY operacional.achados_perdidos.id;


--
-- TOC entry 286 (class 1259 OID 29789)
-- Name: atendimentos; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.atendimentos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    fornecedor integer NOT NULL,
    contrato integer
);


ALTER TABLE operacional.atendimentos OWNER TO postgres;

--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 286
-- Name: TABLE atendimentos; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.atendimentos IS 'Acompanha os atendimentos com os prestadores de serviços do condomínio';


--
-- TOC entry 287 (class 1259 OID 29793)
-- Name: atendimentos_id_seq; Type: SEQUENCE; Schema: operacional; Owner: postgres
--

CREATE SEQUENCE operacional.atendimentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operacional.atendimentos_id_seq OWNER TO postgres;

--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 287
-- Name: atendimentos_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.atendimentos_id_seq OWNED BY operacional.atendimentos.id;


--
-- TOC entry 288 (class 1259 OID 29795)
-- Name: contratos; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.contratos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    fornecedor integer NOT NULL,
    inicio timestamp without time zone,
    vigencia timestamp without time zone
);


ALTER TABLE operacional.contratos OWNER TO postgres;

--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 288
-- Name: TABLE contratos; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.contratos IS 'Acompanha os contratos com os prestadores de serviços do condomínio';


--
-- TOC entry 289 (class 1259 OID 29799)
-- Name: contratos_id_seq; Type: SEQUENCE; Schema: operacional; Owner: postgres
--

CREATE SEQUENCE operacional.contratos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operacional.contratos_id_seq OWNER TO postgres;

--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 289
-- Name: contratos_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.contratos_id_seq OWNED BY operacional.contratos.id;


--
-- TOC entry 290 (class 1259 OID 29801)
-- Name: estoque; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.estoque (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE operacional.estoque OWNER TO postgres;

--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 290
-- Name: TABLE estoque; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.estoque IS 'Registro de materiais em estoque';


--
-- TOC entry 291 (class 1259 OID 29808)
-- Name: estoque_id_seq; Type: SEQUENCE; Schema: operacional; Owner: postgres
--

CREATE SEQUENCE operacional.estoque_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operacional.estoque_id_seq OWNER TO postgres;

--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 291
-- Name: estoque_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.estoque_id_seq OWNED BY operacional.estoque.id;


--
-- TOC entry 292 (class 1259 OID 29810)
-- Name: fornecedores; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.fornecedores (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL,
    tipo_servico integer NOT NULL
);


ALTER TABLE operacional.fornecedores OWNER TO postgres;

--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 292
-- Name: TABLE fornecedores; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.fornecedores IS 'Cadastro de pessoas e empresas prestadoras de serviço do condomínio';


--
-- TOC entry 293 (class 1259 OID 29817)
-- Name: fornecedores_id_seq; Type: SEQUENCE; Schema: operacional; Owner: postgres
--

CREATE SEQUENCE operacional.fornecedores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operacional.fornecedores_id_seq OWNER TO postgres;

--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 293
-- Name: fornecedores_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.fornecedores_id_seq OWNED BY operacional.fornecedores.id;


--
-- TOC entry 294 (class 1259 OID 29819)
-- Name: inventario; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.inventario (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE operacional.inventario OWNER TO postgres;

--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 294
-- Name: TABLE inventario; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.inventario IS 'Registro de bens proprietários do condomínio';


--
-- TOC entry 295 (class 1259 OID 29826)
-- Name: inventario_id_seq; Type: SEQUENCE; Schema: operacional; Owner: postgres
--

CREATE SEQUENCE operacional.inventario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operacional.inventario_id_seq OWNER TO postgres;

--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 295
-- Name: inventario_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.inventario_id_seq OWNED BY operacional.inventario.id;


--
-- TOC entry 296 (class 1259 OID 29828)
-- Name: reformas; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.reformas (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE operacional.reformas OWNER TO postgres;

--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 296
-- Name: TABLE reformas; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.reformas IS 'Acompanhamento de obras e reformas, manutenções etc';


--
-- TOC entry 297 (class 1259 OID 29835)
-- Name: reformas_id_seq; Type: SEQUENCE; Schema: operacional; Owner: postgres
--

CREATE SEQUENCE operacional.reformas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operacional.reformas_id_seq OWNER TO postgres;

--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 297
-- Name: reformas_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.reformas_id_seq OWNED BY operacional.reformas.id;


--
-- TOC entry 298 (class 1259 OID 29837)
-- Name: tipo_servico; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.tipo_servico (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE operacional.tipo_servico OWNER TO postgres;

--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 298
-- Name: TABLE tipo_servico; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.tipo_servico IS 'registra os tipos de atividades dos pretadores de serviços ao condomínio';


--
-- TOC entry 299 (class 1259 OID 29844)
-- Name: tipo_servico_id_seq; Type: SEQUENCE; Schema: operacional; Owner: postgres
--

CREATE SEQUENCE operacional.tipo_servico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operacional.tipo_servico_id_seq OWNER TO postgres;

--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 299
-- Name: tipo_servico_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.tipo_servico_id_seq OWNED BY operacional.tipo_servico.id;


--
-- TOC entry 2709 (class 2604 OID 29846)
-- Name: academias id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.academias ALTER COLUMN id SET DEFAULT nextval('administracao.academias_id_seq'::regclass);


--
-- TOC entry 2711 (class 2604 OID 29847)
-- Name: assembleias id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.assembleias ALTER COLUMN id SET DEFAULT nextval('administracao.assembleias_id_seq'::regclass);


--
-- TOC entry 2713 (class 2604 OID 29848)
-- Name: bloco id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.bloco ALTER COLUMN id SET DEFAULT nextval('administracao.blocos_id_seq'::regclass);


--
-- TOC entry 2715 (class 2604 OID 29849)
-- Name: churrasqueiras id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.churrasqueiras ALTER COLUMN id SET DEFAULT nextval('administracao.churrasqueiras_id_seq'::regclass);


--
-- TOC entry 2717 (class 2604 OID 29850)
-- Name: condominio id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.condominio ALTER COLUMN id SET DEFAULT nextval('administracao.condominio_id_seq'::regclass);


--
-- TOC entry 2719 (class 2604 OID 29851)
-- Name: designacoes id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.designacoes ALTER COLUMN id SET DEFAULT nextval('administracao.designacoes_id_seq'::regclass);


--
-- TOC entry 2721 (class 2604 OID 29852)
-- Name: documentos id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.documentos ALTER COLUMN id SET DEFAULT nextval('administracao.documentos_id_seq'::regclass);


--
-- TOC entry 2723 (class 2604 OID 29853)
-- Name: elevadores id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.elevadores ALTER COLUMN id SET DEFAULT nextval('administracao.elevadores_id_seq'::regclass);


--
-- TOC entry 2725 (class 2604 OID 29854)
-- Name: enquetes id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.enquetes ALTER COLUMN id SET DEFAULT nextval('administracao.enquetes_id_seq'::regclass);


--
-- TOC entry 2727 (class 2604 OID 29855)
-- Name: espacos id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.espacos ALTER COLUMN id SET DEFAULT nextval('administracao.espacos_id_seq'::regclass);


--
-- TOC entry 2729 (class 2604 OID 29856)
-- Name: estacionamentos id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.estacionamentos ALTER COLUMN id SET DEFAULT nextval('administracao.estacionamentos_id_seq'::regclass);


--
-- TOC entry 2733 (class 2604 OID 29857)
-- Name: gestao id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao ALTER COLUMN id SET DEFAULT nextval('administracao.gestao_id_seq'::regclass);


--
-- TOC entry 2735 (class 2604 OID 29858)
-- Name: piscinas id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.piscinas ALTER COLUMN id SET DEFAULT nextval('administracao.piscinas_id_seq'::regclass);


--
-- TOC entry 2737 (class 2604 OID 29859)
-- Name: portarias id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.portarias ALTER COLUMN id SET DEFAULT nextval('administracao.portarias_id_seq'::regclass);


--
-- TOC entry 2739 (class 2604 OID 29860)
-- Name: quadras id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.quadras ALTER COLUMN id SET DEFAULT nextval('administracao.quadras_id_seq'::regclass);


--
-- TOC entry 2741 (class 2604 OID 29861)
-- Name: reserva id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.reserva ALTER COLUMN id SET DEFAULT nextval('administracao.reserva_id_seq'::regclass);


--
-- TOC entry 2743 (class 2604 OID 29862)
-- Name: vagas id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.vagas ALTER COLUMN id SET DEFAULT nextval('administracao.vagas_id_seq'::regclass);


--
-- TOC entry 2745 (class 2604 OID 29863)
-- Name: artigos id; Type: DEFAULT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.artigos ALTER COLUMN id SET DEFAULT nextval('cms.artigos_id_seq'::regclass);


--
-- TOC entry 2747 (class 2604 OID 29864)
-- Name: comunicados id; Type: DEFAULT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.comunicados ALTER COLUMN id SET DEFAULT nextval('cms.comunicados_id_seq'::regclass);


--
-- TOC entry 2817 (class 2604 OID 30251)
-- Name: bloqueios_ctrl_acesso id; Type: DEFAULT; Schema: config; Owner: postgres
--

ALTER TABLE ONLY config.bloqueios_ctrl_acesso ALTER COLUMN id SET DEFAULT nextval('config.bloqueios_ctrl_acesso_id_seq'::regclass);


--
-- TOC entry 2753 (class 2604 OID 29865)
-- Name: autorizacao_veicular id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular ALTER COLUMN id SET DEFAULT nextval('conveniencia.autorizacao_veicular_id_seq'::regclass);


--
-- TOC entry 2755 (class 2604 OID 29866)
-- Name: correspondencias id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.correspondencias ALTER COLUMN id SET DEFAULT nextval('conveniencia.correspondencias_id_seq'::regclass);


--
-- TOC entry 2757 (class 2604 OID 29867)
-- Name: diario id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario ALTER COLUMN id SET DEFAULT nextval('conveniencia.diario_id_seq'::regclass);


--
-- TOC entry 2767 (class 2604 OID 29868)
-- Name: emails id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.emails ALTER COLUMN id SET DEFAULT nextval('conveniencia.emails_id_seq'::regclass);


--
-- TOC entry 2769 (class 2604 OID 29869)
-- Name: incidentes id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.incidentes ALTER COLUMN id SET DEFAULT nextval('conveniencia.incidentes_id_seq'::regclass);


--
-- TOC entry 2771 (class 2604 OID 29870)
-- Name: login id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.login ALTER COLUMN id SET DEFAULT nextval('conveniencia.login_id_seq'::regclass);


--
-- TOC entry 2750 (class 2604 OID 29871)
-- Name: pessoal_autorizacao id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao ALTER COLUMN id SET DEFAULT nextval('conveniencia.autorizacao_pessoal_id_seq'::regclass);


--
-- TOC entry 2773 (class 2604 OID 29872)
-- Name: pessoal_cadastro id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoas_id_seq'::regclass);


--
-- TOC entry 2775 (class 2604 OID 29873)
-- Name: pessoal_contato id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_contato ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoal_contato_id_seq'::regclass);


--
-- TOC entry 2777 (class 2604 OID 29874)
-- Name: pessoal_documentos id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_documentos ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoal_documentos_id_seq'::regclass);


--
-- TOC entry 2779 (class 2604 OID 29875)
-- Name: pessoal_particularidades id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_particularidades ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoal_particularidades_id_seq'::regclass);


--
-- TOC entry 2781 (class 2604 OID 29876)
-- Name: pets id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pets ALTER COLUMN id SET DEFAULT nextval('conveniencia.pets_id_seq'::regclass);


--
-- TOC entry 2783 (class 2604 OID 29877)
-- Name: pre_autorizacao id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao ALTER COLUMN id SET DEFAULT nextval('conveniencia.pre_autorizacao_id_seq'::regclass);


--
-- TOC entry 2784 (class 2604 OID 29878)
-- Name: pre_autorizacao pessoa; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao ALTER COLUMN pessoa SET DEFAULT nextval('conveniencia.pre_autorizacao_pessoa_seq'::regclass);


--
-- TOC entry 2788 (class 2604 OID 29879)
-- Name: reservas id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.reservas ALTER COLUMN id SET DEFAULT nextval('conveniencia.reservas_id_seq'::regclass);


--
-- TOC entry 2790 (class 2604 OID 29880)
-- Name: solicitacoes id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes ALTER COLUMN id SET DEFAULT nextval('conveniencia.solicitacoes_id_seq'::regclass);


--
-- TOC entry 2792 (class 2604 OID 29882)
-- Name: tipo_diario id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_diario ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_diario_id_seq'::regclass);


--
-- TOC entry 2794 (class 2604 OID 29883)
-- Name: tipo_registro id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_registro ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_registro_id_seq'::regclass);


--
-- TOC entry 2796 (class 2604 OID 29884)
-- Name: tipo_solicitacao id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_solicitacao ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_solicitacao_id_seq'::regclass);


--
-- TOC entry 2798 (class 2604 OID 29885)
-- Name: tipo_veiculo id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_veiculo ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_veiculo_id_seq'::regclass);


--
-- TOC entry 2786 (class 2604 OID 29886)
-- Name: unidade id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.unidade ALTER COLUMN id SET DEFAULT nextval('conveniencia.registro_id_seq'::regclass);


--
-- TOC entry 2800 (class 2604 OID 29887)
-- Name: veiculos id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos ALTER COLUMN id SET DEFAULT nextval('conveniencia.veiculos_id_seq'::regclass);


--
-- TOC entry 2802 (class 2604 OID 29888)
-- Name: achados_perdidos id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.achados_perdidos ALTER COLUMN id SET DEFAULT nextval('operacional.achados_perdidos_id_seq'::regclass);


--
-- TOC entry 2804 (class 2604 OID 29889)
-- Name: atendimentos id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.atendimentos ALTER COLUMN id SET DEFAULT nextval('operacional.atendimentos_id_seq'::regclass);


--
-- TOC entry 2806 (class 2604 OID 29890)
-- Name: contratos id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.contratos ALTER COLUMN id SET DEFAULT nextval('operacional.contratos_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 29891)
-- Name: estoque id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.estoque ALTER COLUMN id SET DEFAULT nextval('operacional.estoque_id_seq'::regclass);


--
-- TOC entry 2810 (class 2604 OID 29892)
-- Name: fornecedores id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores ALTER COLUMN id SET DEFAULT nextval('operacional.fornecedores_id_seq'::regclass);


--
-- TOC entry 2812 (class 2604 OID 29893)
-- Name: inventario id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.inventario ALTER COLUMN id SET DEFAULT nextval('operacional.inventario_id_seq'::regclass);


--
-- TOC entry 2814 (class 2604 OID 29894)
-- Name: reformas id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.reformas ALTER COLUMN id SET DEFAULT nextval('operacional.reformas_id_seq'::regclass);


--
-- TOC entry 2816 (class 2604 OID 29895)
-- Name: tipo_servico id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.tipo_servico ALTER COLUMN id SET DEFAULT nextval('operacional.tipo_servico_id_seq'::regclass);


--
-- TOC entry 2819 (class 2606 OID 29897)
-- Name: academias primarykey_adm_academias; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.academias
    ADD CONSTRAINT primarykey_adm_academias PRIMARY KEY (id);


--
-- TOC entry 2821 (class 2606 OID 29899)
-- Name: assembleias primarykey_adm_assembleias; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.assembleias
    ADD CONSTRAINT primarykey_adm_assembleias PRIMARY KEY (id);


--
-- TOC entry 2823 (class 2606 OID 29901)
-- Name: bloco primarykey_adm_blocos; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.bloco
    ADD CONSTRAINT primarykey_adm_blocos PRIMARY KEY (id);


--
-- TOC entry 2825 (class 2606 OID 29903)
-- Name: churrasqueiras primarykey_adm_churrasqueiras; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.churrasqueiras
    ADD CONSTRAINT primarykey_adm_churrasqueiras PRIMARY KEY (id);


--
-- TOC entry 2827 (class 2606 OID 29905)
-- Name: condominio primarykey_adm_condominio; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.condominio
    ADD CONSTRAINT primarykey_adm_condominio PRIMARY KEY (id);


--
-- TOC entry 2829 (class 2606 OID 29907)
-- Name: designacoes primarykey_adm_designacoes; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.designacoes
    ADD CONSTRAINT primarykey_adm_designacoes PRIMARY KEY (id);


--
-- TOC entry 2831 (class 2606 OID 29909)
-- Name: documentos primarykey_adm_documentos; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.documentos
    ADD CONSTRAINT primarykey_adm_documentos PRIMARY KEY (id);


--
-- TOC entry 2833 (class 2606 OID 29911)
-- Name: elevadores primarykey_adm_elevadores; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.elevadores
    ADD CONSTRAINT primarykey_adm_elevadores PRIMARY KEY (id);


--
-- TOC entry 2835 (class 2606 OID 29913)
-- Name: enquetes primarykey_adm_enquetes; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.enquetes
    ADD CONSTRAINT primarykey_adm_enquetes PRIMARY KEY (id);


--
-- TOC entry 2837 (class 2606 OID 29915)
-- Name: espacos primarykey_adm_espacos; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.espacos
    ADD CONSTRAINT primarykey_adm_espacos PRIMARY KEY (id);


--
-- TOC entry 2839 (class 2606 OID 29917)
-- Name: estacionamentos primarykey_adm_estacionamentos; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.estacionamentos
    ADD CONSTRAINT primarykey_adm_estacionamentos PRIMARY KEY (id);


--
-- TOC entry 2841 (class 2606 OID 29919)
-- Name: gestao primarykey_adm_gestao; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao
    ADD CONSTRAINT primarykey_adm_gestao PRIMARY KEY (id);


--
-- TOC entry 2843 (class 2606 OID 29921)
-- Name: piscinas primarykey_adm_piscinas; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.piscinas
    ADD CONSTRAINT primarykey_adm_piscinas PRIMARY KEY (id);


--
-- TOC entry 2845 (class 2606 OID 29923)
-- Name: portarias primarykey_adm_portarias; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.portarias
    ADD CONSTRAINT primarykey_adm_portarias PRIMARY KEY (id);


--
-- TOC entry 2847 (class 2606 OID 29925)
-- Name: quadras primarykey_adm_quadras; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.quadras
    ADD CONSTRAINT primarykey_adm_quadras PRIMARY KEY (id);


--
-- TOC entry 2849 (class 2606 OID 29927)
-- Name: reserva primarykey_adm_reserva; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.reserva
    ADD CONSTRAINT primarykey_adm_reserva PRIMARY KEY (id);


--
-- TOC entry 2851 (class 2606 OID 29929)
-- Name: vagas primarykey_adm_vagas; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.vagas
    ADD CONSTRAINT primarykey_adm_vagas PRIMARY KEY (id);


--
-- TOC entry 2853 (class 2606 OID 29931)
-- Name: artigos primarykey_cms_artigos; Type: CONSTRAINT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.artigos
    ADD CONSTRAINT primarykey_cms_artigos PRIMARY KEY (id);


--
-- TOC entry 2855 (class 2606 OID 29933)
-- Name: comunicados primarykey_cms_comunicados; Type: CONSTRAINT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.comunicados
    ADD CONSTRAINT primarykey_cms_comunicados PRIMARY KEY (id);


--
-- TOC entry 2915 (class 2606 OID 30256)
-- Name: bloqueios_ctrl_acesso bloqueios_ctrl_acesso_pk; Type: CONSTRAINT; Schema: config; Owner: postgres
--

ALTER TABLE ONLY config.bloqueios_ctrl_acesso
    ADD CONSTRAINT bloqueios_ctrl_acesso_pk PRIMARY KEY (id);


--
-- TOC entry 2873 (class 2606 OID 29935)
-- Name: pessoal_contato primarykey_residencial_pessoal_contato; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_contato
    ADD CONSTRAINT primarykey_residencial_pessoal_contato PRIMARY KEY (id);


--
-- TOC entry 2875 (class 2606 OID 29937)
-- Name: pessoal_documentos primarykey_residencial_pessoal_documentacao; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_documentos
    ADD CONSTRAINT primarykey_residencial_pessoal_documentacao PRIMARY KEY (id);


--
-- TOC entry 2877 (class 2606 OID 29939)
-- Name: pessoal_particularidades primarykey_residencial_pessoal_particularidades; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_particularidades
    ADD CONSTRAINT primarykey_residencial_pessoal_particularidades PRIMARY KEY (id);


--
-- TOC entry 2857 (class 2606 OID 29941)
-- Name: pessoal_autorizacao primarykey_unidade_autorizacao_pessoal; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao
    ADD CONSTRAINT primarykey_unidade_autorizacao_pessoal PRIMARY KEY (id);


--
-- TOC entry 2859 (class 2606 OID 29943)
-- Name: autorizacao_veicular primarykey_unidade_autorizacao_veicular; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular
    ADD CONSTRAINT primarykey_unidade_autorizacao_veicular PRIMARY KEY (id);


--
-- TOC entry 2861 (class 2606 OID 29945)
-- Name: correspondencias primarykey_unidade_correspondencias; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.correspondencias
    ADD CONSTRAINT primarykey_unidade_correspondencias PRIMARY KEY (id);


--
-- TOC entry 2863 (class 2606 OID 29947)
-- Name: diario primarykey_unidade_diario; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario
    ADD CONSTRAINT primarykey_unidade_diario PRIMARY KEY (id);


--
-- TOC entry 2865 (class 2606 OID 29949)
-- Name: emails primarykey_unidade_emails; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.emails
    ADD CONSTRAINT primarykey_unidade_emails PRIMARY KEY (id);


--
-- TOC entry 2867 (class 2606 OID 29951)
-- Name: incidentes primarykey_unidade_incidentes; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.incidentes
    ADD CONSTRAINT primarykey_unidade_incidentes PRIMARY KEY (id);


--
-- TOC entry 2869 (class 2606 OID 29953)
-- Name: login primarykey_unidade_login; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.login
    ADD CONSTRAINT primarykey_unidade_login PRIMARY KEY (id);


--
-- TOC entry 2871 (class 2606 OID 29955)
-- Name: pessoal_cadastro primarykey_unidade_pessoas; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro
    ADD CONSTRAINT primarykey_unidade_pessoas PRIMARY KEY (id);


--
-- TOC entry 2879 (class 2606 OID 29957)
-- Name: pets primarykey_unidade_pets; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pets
    ADD CONSTRAINT primarykey_unidade_pets PRIMARY KEY (id);


--
-- TOC entry 2881 (class 2606 OID 29959)
-- Name: pre_autorizacao primarykey_unidade_pre_autorizacao; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao
    ADD CONSTRAINT primarykey_unidade_pre_autorizacao PRIMARY KEY (id);


--
-- TOC entry 2883 (class 2606 OID 29961)
-- Name: unidade primarykey_unidade_registro; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.unidade
    ADD CONSTRAINT primarykey_unidade_registro PRIMARY KEY (id);


--
-- TOC entry 2885 (class 2606 OID 29963)
-- Name: reservas primarykey_unidade_reservas; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.reservas
    ADD CONSTRAINT primarykey_unidade_reservas PRIMARY KEY (id);


--
-- TOC entry 2887 (class 2606 OID 29965)
-- Name: solicitacoes primarykey_unidade_solicitacoes; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes
    ADD CONSTRAINT primarykey_unidade_solicitacoes PRIMARY KEY (id);


--
-- TOC entry 2889 (class 2606 OID 29969)
-- Name: tipo_diario primarykey_unidade_tipo_diario; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_diario
    ADD CONSTRAINT primarykey_unidade_tipo_diario PRIMARY KEY (id);


--
-- TOC entry 2891 (class 2606 OID 29971)
-- Name: tipo_registro primarykey_unidade_tipo_registro; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_registro
    ADD CONSTRAINT primarykey_unidade_tipo_registro PRIMARY KEY (id);


--
-- TOC entry 2893 (class 2606 OID 29973)
-- Name: tipo_solicitacao primarykey_unidade_tipo_solicitacao; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_solicitacao
    ADD CONSTRAINT primarykey_unidade_tipo_solicitacao PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 29975)
-- Name: tipo_veiculo primarykey_unidade_tipo_veiculo; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_veiculo
    ADD CONSTRAINT primarykey_unidade_tipo_veiculo PRIMARY KEY (id);


--
-- TOC entry 2897 (class 2606 OID 29977)
-- Name: veiculos primarykey_unidade_veiculos; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT primarykey_unidade_veiculos PRIMARY KEY (id);


--
-- TOC entry 2901 (class 2606 OID 29979)
-- Name: atendimentos primarykey_adm_atendimentos; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.atendimentos
    ADD CONSTRAINT primarykey_adm_atendimentos PRIMARY KEY (id);


--
-- TOC entry 2903 (class 2606 OID 29981)
-- Name: contratos primarykey_adm_contratos; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.contratos
    ADD CONSTRAINT primarykey_adm_contratos PRIMARY KEY (id);


--
-- TOC entry 2907 (class 2606 OID 29983)
-- Name: fornecedores primarykey_adm_fornecedores; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores
    ADD CONSTRAINT primarykey_adm_fornecedores PRIMARY KEY (id);


--
-- TOC entry 2899 (class 2606 OID 29985)
-- Name: achados_perdidos primarykey_operacional_achados_perdidos; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.achados_perdidos
    ADD CONSTRAINT primarykey_operacional_achados_perdidos PRIMARY KEY (id);


--
-- TOC entry 2905 (class 2606 OID 29987)
-- Name: estoque primarykey_operacional_estoque; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.estoque
    ADD CONSTRAINT primarykey_operacional_estoque PRIMARY KEY (id);


--
-- TOC entry 2909 (class 2606 OID 29989)
-- Name: inventario primarykey_operacional_inventario; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.inventario
    ADD CONSTRAINT primarykey_operacional_inventario PRIMARY KEY (id);


--
-- TOC entry 2911 (class 2606 OID 29991)
-- Name: reformas primarykey_operacional_reformas; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.reformas
    ADD CONSTRAINT primarykey_operacional_reformas PRIMARY KEY (id);


--
-- TOC entry 2913 (class 2606 OID 29993)
-- Name: tipo_servico primarykey_unidade_tipo_servico; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.tipo_servico
    ADD CONSTRAINT primarykey_unidade_tipo_servico PRIMARY KEY (id);


--
-- TOC entry 2916 (class 2606 OID 29994)
-- Name: academias academias_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.academias
    ADD CONSTRAINT academias_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2917 (class 2606 OID 29999)
-- Name: assembleias assembleias_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.assembleias
    ADD CONSTRAINT assembleias_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2918 (class 2606 OID 30004)
-- Name: bloco blocos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.bloco
    ADD CONSTRAINT blocos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2919 (class 2606 OID 30009)
-- Name: churrasqueiras churrasqueiras_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.churrasqueiras
    ADD CONSTRAINT churrasqueiras_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2920 (class 2606 OID 30014)
-- Name: documentos documentos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.documentos
    ADD CONSTRAINT documentos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2921 (class 2606 OID 30019)
-- Name: elevadores elevadores_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.elevadores
    ADD CONSTRAINT elevadores_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2922 (class 2606 OID 30024)
-- Name: enquetes enquetes_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.enquetes
    ADD CONSTRAINT enquetes_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2923 (class 2606 OID 30029)
-- Name: espacos espacos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.espacos
    ADD CONSTRAINT espacos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2924 (class 2606 OID 30034)
-- Name: estacionamentos estacionamentos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.estacionamentos
    ADD CONSTRAINT estacionamentos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2925 (class 2606 OID 30039)
-- Name: gestao gestao_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao
    ADD CONSTRAINT gestao_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2926 (class 2606 OID 30044)
-- Name: gestao gestao_designacoes_fk; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao
    ADD CONSTRAINT gestao_designacoes_fk FOREIGN KEY (designacao) REFERENCES administracao.designacoes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2927 (class 2606 OID 30049)
-- Name: piscinas piscinas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.piscinas
    ADD CONSTRAINT piscinas_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2928 (class 2606 OID 30054)
-- Name: portarias portarias_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.portarias
    ADD CONSTRAINT portarias_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2929 (class 2606 OID 30059)
-- Name: quadras quadras_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.quadras
    ADD CONSTRAINT quadras_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2930 (class 2606 OID 30064)
-- Name: reserva reserva_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.reserva
    ADD CONSTRAINT reserva_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2931 (class 2606 OID 30069)
-- Name: vagas vagas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.vagas
    ADD CONSTRAINT vagas_condominio_foreignkey FOREIGN KEY (estacionamento) REFERENCES administracao.estacionamentos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2932 (class 2606 OID 30074)
-- Name: artigos artigos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.artigos
    ADD CONSTRAINT artigos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2933 (class 2606 OID 30079)
-- Name: comunicados comunicados_condominio_foreignkey; Type: FK CONSTRAINT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.comunicados
    ADD CONSTRAINT comunicados_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2935 (class 2606 OID 30084)
-- Name: pessoal_autorizacao autorizacao_pessoa_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao
    ADD CONSTRAINT autorizacao_pessoa_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2934 (class 2606 OID 30262)
-- Name: pessoal_autorizacao autorizacao_unidade_tipo_bloqueio_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao
    ADD CONSTRAINT autorizacao_unidade_tipo_bloqueio_foreignkey FOREIGN KEY (bloqueio) REFERENCES config.bloqueios_ctrl_acesso(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2936 (class 2606 OID 30257)
-- Name: autorizacao_veicular autorizacao_veicular_tipo_bloqueio_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular
    ADD CONSTRAINT autorizacao_veicular_tipo_bloqueio_fk FOREIGN KEY (bloqueio) REFERENCES config.bloqueios_ctrl_acesso(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2937 (class 2606 OID 30099)
-- Name: autorizacao_veicular autorizacao_veiculo_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular
    ADD CONSTRAINT autorizacao_veiculo_foreignkey FOREIGN KEY (veiculo) REFERENCES conveniencia.veiculos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2938 (class 2606 OID 30104)
-- Name: correspondencias correspondencias_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.correspondencias
    ADD CONSTRAINT correspondencias_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2939 (class 2606 OID 30109)
-- Name: diario diario_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario
    ADD CONSTRAINT diario_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2940 (class 2606 OID 30114)
-- Name: diario diario_unidade_tipo_diario_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario
    ADD CONSTRAINT diario_unidade_tipo_diario_foreignkey FOREIGN KEY (diario) REFERENCES conveniencia.tipo_diario(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2941 (class 2606 OID 30119)
-- Name: emails emails_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.emails
    ADD CONSTRAINT emails_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2942 (class 2606 OID 30124)
-- Name: incidentes incidentes_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.incidentes
    ADD CONSTRAINT incidentes_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2943 (class 2606 OID 30129)
-- Name: login login_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.login
    ADD CONSTRAINT login_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2944 (class 2606 OID 30134)
-- Name: pessoal_cadastro pessoas_tipo_registro_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro
    ADD CONSTRAINT pessoas_tipo_registro_foreignkey FOREIGN KEY (tipo) REFERENCES conveniencia.tipo_registro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2945 (class 2606 OID 30139)
-- Name: pessoal_cadastro pessoas_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro
    ADD CONSTRAINT pessoas_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2949 (class 2606 OID 30144)
-- Name: pets pets_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pets
    ADD CONSTRAINT pets_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2950 (class 2606 OID 30149)
-- Name: pre_autorizacao pre_autorizacao_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao
    ADD CONSTRAINT pre_autorizacao_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2951 (class 2606 OID 30154)
-- Name: unidade registro_bloco_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.unidade
    ADD CONSTRAINT registro_bloco_foreignkey FOREIGN KEY (bloco) REFERENCES administracao.bloco(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2952 (class 2606 OID 30159)
-- Name: reservas reservas_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.reservas
    ADD CONSTRAINT reservas_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2946 (class 2606 OID 30164)
-- Name: pessoal_contato residencial_pessoa_contato_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_contato
    ADD CONSTRAINT residencial_pessoa_contato_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2947 (class 2606 OID 30169)
-- Name: pessoal_documentos residencial_pessoa_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_documentos
    ADD CONSTRAINT residencial_pessoa_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2948 (class 2606 OID 30174)
-- Name: pessoal_particularidades residencial_pessoa_particularidades_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_particularidades
    ADD CONSTRAINT residencial_pessoa_particularidades_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2953 (class 2606 OID 30179)
-- Name: solicitacoes solicitacoes_tipo_solicitacao_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes
    ADD CONSTRAINT solicitacoes_tipo_solicitacao_fk FOREIGN KEY (tipo) REFERENCES conveniencia.tipo_solicitacao(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2954 (class 2606 OID 30184)
-- Name: solicitacoes solicitacoes_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes
    ADD CONSTRAINT solicitacoes_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2955 (class 2606 OID 30189)
-- Name: veiculos veiculos_tipo_registro_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT veiculos_tipo_registro_fk FOREIGN KEY (tipo_registro) REFERENCES conveniencia.tipo_registro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2956 (class 2606 OID 30194)
-- Name: veiculos veiculos_tipo_veiculo_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT veiculos_tipo_veiculo_fk FOREIGN KEY (tipo_veiculo) REFERENCES conveniencia.tipo_veiculo(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2957 (class 2606 OID 30199)
-- Name: veiculos veiculos_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT veiculos_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2958 (class 2606 OID 30204)
-- Name: achados_perdidos achados_perdidos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.achados_perdidos
    ADD CONSTRAINT achados_perdidos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2959 (class 2606 OID 30209)
-- Name: atendimentos atendimentos_fornecedores_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.atendimentos
    ADD CONSTRAINT atendimentos_fornecedores_foreignkey FOREIGN KEY (fornecedor) REFERENCES operacional.fornecedores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2960 (class 2606 OID 30214)
-- Name: contratos contratos_fornecedores_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.contratos
    ADD CONSTRAINT contratos_fornecedores_foreignkey FOREIGN KEY (fornecedor) REFERENCES operacional.fornecedores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2961 (class 2606 OID 30219)
-- Name: estoque estoque_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.estoque
    ADD CONSTRAINT estoque_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2962 (class 2606 OID 30224)
-- Name: fornecedores fornecedores_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores
    ADD CONSTRAINT fornecedores_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2963 (class 2606 OID 30229)
-- Name: fornecedores fornecedores_tipo_servico_fk; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores
    ADD CONSTRAINT fornecedores_tipo_servico_fk FOREIGN KEY (tipo_servico) REFERENCES operacional.tipo_servico(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2964 (class 2606 OID 30234)
-- Name: inventario inventario_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.inventario
    ADD CONSTRAINT inventario_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2965 (class 2606 OID 30239)
-- Name: reformas reformas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.reformas
    ADD CONSTRAINT reformas_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2019-10-15 17:40:51 -03

--
-- PostgreSQL database dump complete
--

