--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 11.5

-- Started on 2019-10-15 18:32:31 -03

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

DROP DATABASE svl;
--
-- TOC entry 3192 (class 1262 OID 27831)
-- Name: svl; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE svl WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';


ALTER DATABASE svl OWNER TO postgres;

\connect svl

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
-- TOC entry 6 (class 2615 OID 31130)
-- Name: administracao; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA administracao;


ALTER SCHEMA administracao OWNER TO postgres;

--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA administracao; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA administracao IS 'tabelas de gestão do condomínio';


--
-- TOC entry 7 (class 2615 OID 31131)
-- Name: cms; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cms;


ALTER SCHEMA cms OWNER TO postgres;

--
-- TOC entry 8 (class 2615 OID 31132)
-- Name: config; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA config;


ALTER SCHEMA config OWNER TO postgres;

--
-- TOC entry 11 (class 2615 OID 31133)
-- Name: conveniencia; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA conveniencia;


ALTER SCHEMA conveniencia OWNER TO postgres;

--
-- TOC entry 13 (class 2615 OID 31134)
-- Name: financeiro; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA financeiro;


ALTER SCHEMA financeiro OWNER TO postgres;

--
-- TOC entry 14 (class 2615 OID 31135)
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
-- TOC entry 3194 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- TOC entry 731 (class 1247 OID 31136)
-- Name: email; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.email AS public.citext
	CONSTRAINT email_check CHECK ((VALUE OPERATOR(public.~) '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$'::public.citext));


ALTER DOMAIN public.email OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 31138)
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
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE academias; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.academias IS 'Cadastro de informações pertinentes do funcionamento das academias do condomínio';


--
-- TOC entry 204 (class 1259 OID 31145)
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
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 204
-- Name: academias_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.academias_id_seq OWNED BY administracao.academias.id;


--
-- TOC entry 205 (class 1259 OID 31147)
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
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE assembleias; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.assembleias IS 'Registro de assembléias';


--
-- TOC entry 206 (class 1259 OID 31154)
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
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 206
-- Name: assembleias_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.assembleias_id_seq OWNED BY administracao.assembleias.id;


--
-- TOC entry 207 (class 1259 OID 31156)
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
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE bloco; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.bloco IS 'Informações a respeito dos blocos do condomínio';


--
-- TOC entry 208 (class 1259 OID 31163)
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
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 208
-- Name: blocos_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.blocos_id_seq OWNED BY administracao.bloco.id;


--
-- TOC entry 209 (class 1259 OID 31165)
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
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE churrasqueiras; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.churrasqueiras IS 'Informações de gestão das churrasqueiras';


--
-- TOC entry 210 (class 1259 OID 31172)
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
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 210
-- Name: churrasqueiras_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.churrasqueiras_id_seq OWNED BY administracao.churrasqueiras.id;


--
-- TOC entry 211 (class 1259 OID 31174)
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
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE condominio; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.condominio IS 'informações detalhadas do condomínio que serão utilizados em todos os módulos do sistema Verticals';


--
-- TOC entry 212 (class 1259 OID 31181)
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
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 212
-- Name: condominio_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.condominio_id_seq OWNED BY administracao.condominio.id;


--
-- TOC entry 213 (class 1259 OID 31183)
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
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE designacoes; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.designacoes IS 'Indica o cargo, função de sindicos, gerentes, concelheiros etc';


--
-- TOC entry 214 (class 1259 OID 31190)
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
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 214
-- Name: designacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.designacoes_id_seq OWNED BY administracao.designacoes.id;


--
-- TOC entry 215 (class 1259 OID 31192)
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
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE documentos; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.documentos IS 'Integração de documentos com nuvem storage';


--
-- TOC entry 216 (class 1259 OID 31199)
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
-- TOC entry 3208 (class 0 OID 0)
-- Dependencies: 216
-- Name: documentos_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.documentos_id_seq OWNED BY administracao.documentos.id;


--
-- TOC entry 217 (class 1259 OID 31201)
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
-- TOC entry 3209 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE elevadores; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.elevadores IS 'Informações de gestão das elevadores';


--
-- TOC entry 218 (class 1259 OID 31208)
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
-- TOC entry 3210 (class 0 OID 0)
-- Dependencies: 218
-- Name: elevadores_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.elevadores_id_seq OWNED BY administracao.elevadores.id;


--
-- TOC entry 219 (class 1259 OID 31210)
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
-- TOC entry 3211 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE enquetes; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.enquetes IS 'Serviço de pesquisas para obter a opnião a respeito das tomadas de decisão';


--
-- TOC entry 220 (class 1259 OID 31217)
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
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 220
-- Name: enquetes_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.enquetes_id_seq OWNED BY administracao.enquetes.id;


--
-- TOC entry 221 (class 1259 OID 31219)
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
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE espacos; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.espacos IS 'Detalhes dos salões e suas atividades';


--
-- TOC entry 222 (class 1259 OID 31226)
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
-- TOC entry 3214 (class 0 OID 0)
-- Dependencies: 222
-- Name: espacos_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.espacos_id_seq OWNED BY administracao.espacos.id;


--
-- TOC entry 223 (class 1259 OID 31228)
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
-- TOC entry 3215 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE estacionamentos; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.estacionamentos IS 'Informações de gestão das estacionamentos';


--
-- TOC entry 224 (class 1259 OID 31235)
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
-- TOC entry 3216 (class 0 OID 0)
-- Dependencies: 224
-- Name: estacionamentos_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.estacionamentos_id_seq OWNED BY administracao.estacionamentos.id;


--
-- TOC entry 225 (class 1259 OID 31237)
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
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE gestao; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.gestao IS 'Registra os tipos de cargos ou designações existentes no condominio';


--
-- TOC entry 226 (class 1259 OID 31246)
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
-- TOC entry 3218 (class 0 OID 0)
-- Dependencies: 226
-- Name: gestao_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.gestao_id_seq OWNED BY administracao.gestao.id;


--
-- TOC entry 227 (class 1259 OID 31248)
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
-- TOC entry 3219 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE piscinas; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.piscinas IS 'Gestão das piscinas';


--
-- TOC entry 228 (class 1259 OID 31255)
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
-- TOC entry 3220 (class 0 OID 0)
-- Dependencies: 228
-- Name: piscinas_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.piscinas_id_seq OWNED BY administracao.piscinas.id;


--
-- TOC entry 229 (class 1259 OID 31257)
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
-- TOC entry 3221 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE portarias; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.portarias IS 'Informações de gestão das portarias';


--
-- TOC entry 230 (class 1259 OID 31264)
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
-- TOC entry 3222 (class 0 OID 0)
-- Dependencies: 230
-- Name: portarias_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.portarias_id_seq OWNED BY administracao.portarias.id;


--
-- TOC entry 231 (class 1259 OID 31266)
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
-- TOC entry 3223 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE quadras; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.quadras IS 'Informações de gestão das quadras';


--
-- TOC entry 232 (class 1259 OID 31273)
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
-- TOC entry 3224 (class 0 OID 0)
-- Dependencies: 232
-- Name: quadras_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.quadras_id_seq OWNED BY administracao.quadras.id;


--
-- TOC entry 233 (class 1259 OID 31275)
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
-- TOC entry 3225 (class 0 OID 0)
-- Dependencies: 233
-- Name: TABLE reserva; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.reserva IS 'Serviço de reserva de espaços';


--
-- TOC entry 234 (class 1259 OID 31282)
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
-- TOC entry 3226 (class 0 OID 0)
-- Dependencies: 234
-- Name: reserva_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.reserva_id_seq OWNED BY administracao.reserva.id;


--
-- TOC entry 235 (class 1259 OID 31284)
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
-- TOC entry 3227 (class 0 OID 0)
-- Dependencies: 235
-- Name: TABLE vagas; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.vagas IS 'Controle de vagas dos estacionamentos';


--
-- TOC entry 236 (class 1259 OID 31291)
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
-- TOC entry 3228 (class 0 OID 0)
-- Dependencies: 236
-- Name: vagas_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.vagas_id_seq OWNED BY administracao.vagas.id;


--
-- TOC entry 237 (class 1259 OID 31293)
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
-- TOC entry 3229 (class 0 OID 0)
-- Dependencies: 237
-- Name: TABLE artigos; Type: COMMENT; Schema: cms; Owner: postgres
--

COMMENT ON TABLE cms.artigos IS 'Geração de artigos para apresentação no site do condomínio';


--
-- TOC entry 238 (class 1259 OID 31300)
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
-- TOC entry 3230 (class 0 OID 0)
-- Dependencies: 238
-- Name: artigos_id_seq; Type: SEQUENCE OWNED BY; Schema: cms; Owner: postgres
--

ALTER SEQUENCE cms.artigos_id_seq OWNED BY cms.artigos.id;


--
-- TOC entry 239 (class 1259 OID 31302)
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
-- TOC entry 3231 (class 0 OID 0)
-- Dependencies: 239
-- Name: TABLE comunicados; Type: COMMENT; Schema: cms; Owner: postgres
--

COMMENT ON TABLE cms.comunicados IS 'Envio de mala direta aos condôminos';


--
-- TOC entry 240 (class 1259 OID 31309)
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
-- TOC entry 3232 (class 0 OID 0)
-- Dependencies: 240
-- Name: comunicados_id_seq; Type: SEQUENCE OWNED BY; Schema: cms; Owner: postgres
--

ALTER SEQUENCE cms.comunicados_id_seq OWNED BY cms.comunicados.id;


--
-- TOC entry 241 (class 1259 OID 31311)
-- Name: bloqueios_ctrl_acesso; Type: TABLE; Schema: config; Owner: postgres
--

CREATE TABLE config.bloqueios_ctrl_acesso (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone,
    firstuser character varying(15),
    lasttuser character varying(15),
    purgeuser character varying(15),
    nome character varying(500)
);


ALTER TABLE config.bloqueios_ctrl_acesso OWNER TO postgres;

--
-- TOC entry 3233 (class 0 OID 0)
-- Dependencies: 241
-- Name: TABLE bloqueios_ctrl_acesso; Type: COMMENT; Schema: config; Owner: postgres
--

COMMENT ON TABLE config.bloqueios_ctrl_acesso IS 'Informa os tipos de bloqueios utilizados nas operações de controle de acesso';


--
-- TOC entry 242 (class 1259 OID 31318)
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
-- TOC entry 3234 (class 0 OID 0)
-- Dependencies: 242
-- Name: bloqueios_ctrl_acesso_id_seq; Type: SEQUENCE OWNED BY; Schema: config; Owner: postgres
--

ALTER SEQUENCE config.bloqueios_ctrl_acesso_id_seq OWNED BY config.bloqueios_ctrl_acesso.id;


--
-- TOC entry 243 (class 1259 OID 31320)
-- Name: tipo_cadastro; Type: TABLE; Schema: config; Owner: postgres
--

CREATE TABLE config.tipo_cadastro (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone,
    purgedate timestamp without time zone,
    firstuser character varying(15),
    lasttuser character varying(15),
    purgeuser character varying(15),
    nome character varying(500)
);


ALTER TABLE config.tipo_cadastro OWNER TO postgres;

--
-- TOC entry 3235 (class 0 OID 0)
-- Dependencies: 243
-- Name: TABLE tipo_cadastro; Type: COMMENT; Schema: config; Owner: postgres
--

COMMENT ON TABLE config.tipo_cadastro IS 'Informa o tipo de registro ex: morador, visitante, pretador etc';


--
-- TOC entry 244 (class 1259 OID 31327)
-- Name: tipo_cadastro_id_seq; Type: SEQUENCE; Schema: config; Owner: postgres
--

CREATE SEQUENCE config.tipo_cadastro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE config.tipo_cadastro_id_seq OWNER TO postgres;

--
-- TOC entry 3236 (class 0 OID 0)
-- Dependencies: 244
-- Name: tipo_cadastro_id_seq; Type: SEQUENCE OWNED BY; Schema: config; Owner: postgres
--

ALTER SEQUENCE config.tipo_cadastro_id_seq OWNED BY config.tipo_cadastro.id;


--
-- TOC entry 245 (class 1259 OID 31329)
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
-- TOC entry 3237 (class 0 OID 0)
-- Dependencies: 245
-- Name: TABLE pessoal_autorizacao; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_autorizacao IS 'Registro de autorização do controle de acesso';


--
-- TOC entry 246 (class 1259 OID 31337)
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
-- TOC entry 3238 (class 0 OID 0)
-- Dependencies: 246
-- Name: autorizacao_pessoal_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.autorizacao_pessoal_id_seq OWNED BY conveniencia.pessoal_autorizacao.id;


--
-- TOC entry 247 (class 1259 OID 31339)
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
-- TOC entry 3239 (class 0 OID 0)
-- Dependencies: 247
-- Name: TABLE autorizacao_veicular; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.autorizacao_veicular IS 'Registro de autorização do controle de acesso';


--
-- TOC entry 248 (class 1259 OID 31347)
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
-- TOC entry 3240 (class 0 OID 0)
-- Dependencies: 248
-- Name: autorizacao_veicular_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.autorizacao_veicular_id_seq OWNED BY conveniencia.autorizacao_veicular.id;


--
-- TOC entry 249 (class 1259 OID 31349)
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
-- TOC entry 3241 (class 0 OID 0)
-- Dependencies: 249
-- Name: TABLE correspondencias; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.correspondencias IS 'Tabela de controle das correspondências do condomínio';


--
-- TOC entry 250 (class 1259 OID 31356)
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
-- TOC entry 3242 (class 0 OID 0)
-- Dependencies: 250
-- Name: correspondencias_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.correspondencias_id_seq OWNED BY conveniencia.correspondencias.id;


--
-- TOC entry 251 (class 1259 OID 31358)
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
-- TOC entry 3243 (class 0 OID 0)
-- Dependencies: 251
-- Name: TABLE diario; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.diario IS 'Registra os tipos de eventos que ocorrem na unidade, ex: mudança de entrada, reformas etc.';


--
-- TOC entry 252 (class 1259 OID 31365)
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
-- TOC entry 3244 (class 0 OID 0)
-- Dependencies: 252
-- Name: diario_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.diario_id_seq OWNED BY conveniencia.diario.id;


--
-- TOC entry 253 (class 1259 OID 31367)
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
-- TOC entry 3245 (class 0 OID 0)
-- Dependencies: 253
-- Name: TABLE emails; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.emails IS 'Endereços e tipos de entrega de informação aos condôminos';


--
-- TOC entry 254 (class 1259 OID 31382)
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
-- TOC entry 3246 (class 0 OID 0)
-- Dependencies: 254
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.emails_id_seq OWNED BY conveniencia.emails.id;


--
-- TOC entry 255 (class 1259 OID 31384)
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
-- TOC entry 3247 (class 0 OID 0)
-- Dependencies: 255
-- Name: TABLE incidentes; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.incidentes IS 'Registra multas, notificações e ocorrências da unidade';


--
-- TOC entry 256 (class 1259 OID 31391)
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
-- TOC entry 3248 (class 0 OID 0)
-- Dependencies: 256
-- Name: incidentes_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.incidentes_id_seq OWNED BY conveniencia.incidentes.id;


--
-- TOC entry 257 (class 1259 OID 31393)
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
-- TOC entry 3249 (class 0 OID 0)
-- Dependencies: 257
-- Name: TABLE login; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.login IS 'Usuário do condômino';


--
-- TOC entry 258 (class 1259 OID 31400)
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
-- TOC entry 3250 (class 0 OID 0)
-- Dependencies: 258
-- Name: login_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.login_id_seq OWNED BY conveniencia.login.id;


--
-- TOC entry 259 (class 1259 OID 31402)
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
-- TOC entry 3251 (class 0 OID 0)
-- Dependencies: 259
-- Name: TABLE pessoal_cadastro; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_cadastro IS 'Registro geral de pessoas no condomínio';


--
-- TOC entry 260 (class 1259 OID 31406)
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
-- TOC entry 3252 (class 0 OID 0)
-- Dependencies: 260
-- Name: TABLE pessoal_contato; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_contato IS 'Registra os dados de contato da pessoa';


--
-- TOC entry 261 (class 1259 OID 31413)
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
-- TOC entry 3253 (class 0 OID 0)
-- Dependencies: 261
-- Name: pessoal_contato_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoal_contato_id_seq OWNED BY conveniencia.pessoal_contato.id;


--
-- TOC entry 262 (class 1259 OID 31415)
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
-- TOC entry 3254 (class 0 OID 0)
-- Dependencies: 262
-- Name: TABLE pessoal_documentos; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_documentos IS 'Registra um documento específico da pessoa';


--
-- TOC entry 263 (class 1259 OID 31422)
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
-- TOC entry 3255 (class 0 OID 0)
-- Dependencies: 263
-- Name: pessoal_documentos_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoal_documentos_id_seq OWNED BY conveniencia.pessoal_documentos.id;


--
-- TOC entry 264 (class 1259 OID 31424)
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
-- TOC entry 3256 (class 0 OID 0)
-- Dependencies: 264
-- Name: TABLE pessoal_particularidades; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_particularidades IS 'Registra as particularidades da pessoa';


--
-- TOC entry 265 (class 1259 OID 31431)
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
-- TOC entry 3257 (class 0 OID 0)
-- Dependencies: 265
-- Name: pessoal_particularidades_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoal_particularidades_id_seq OWNED BY conveniencia.pessoal_particularidades.id;


--
-- TOC entry 266 (class 1259 OID 31433)
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
-- TOC entry 3258 (class 0 OID 0)
-- Dependencies: 266
-- Name: pessoas_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoas_id_seq OWNED BY conveniencia.pessoal_cadastro.id;


--
-- TOC entry 267 (class 1259 OID 31435)
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
-- TOC entry 3259 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE pets; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pets IS 'Registro geral de pets da unidade';


--
-- TOC entry 268 (class 1259 OID 31439)
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
-- TOC entry 3260 (class 0 OID 0)
-- Dependencies: 268
-- Name: pets_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pets_id_seq OWNED BY conveniencia.pets.id;


--
-- TOC entry 269 (class 1259 OID 31441)
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
-- TOC entry 3261 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE pre_autorizacao; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pre_autorizacao IS 'Efetua a pré-autorização de visitantes, parentes próximos e prestadores de serviço';


--
-- TOC entry 270 (class 1259 OID 31445)
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
-- TOC entry 3262 (class 0 OID 0)
-- Dependencies: 270
-- Name: pre_autorizacao_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pre_autorizacao_id_seq OWNED BY conveniencia.pre_autorizacao.id;


--
-- TOC entry 271 (class 1259 OID 31447)
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
-- TOC entry 3263 (class 0 OID 0)
-- Dependencies: 271
-- Name: pre_autorizacao_pessoa_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pre_autorizacao_pessoa_seq OWNED BY conveniencia.pre_autorizacao.pessoa;


--
-- TOC entry 272 (class 1259 OID 31449)
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
-- TOC entry 3264 (class 0 OID 0)
-- Dependencies: 272
-- Name: TABLE unidade; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.unidade IS 'Informações gerais da unidade';


--
-- TOC entry 273 (class 1259 OID 31456)
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
-- TOC entry 3265 (class 0 OID 0)
-- Dependencies: 273
-- Name: registro_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.registro_id_seq OWNED BY conveniencia.unidade.id;


--
-- TOC entry 274 (class 1259 OID 31458)
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
-- TOC entry 3266 (class 0 OID 0)
-- Dependencies: 274
-- Name: TABLE reservas; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.reservas IS 'Registro de reserva de espaços';


--
-- TOC entry 275 (class 1259 OID 31462)
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
-- TOC entry 3267 (class 0 OID 0)
-- Dependencies: 275
-- Name: reservas_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.reservas_id_seq OWNED BY conveniencia.reservas.id;


--
-- TOC entry 276 (class 1259 OID 31464)
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
-- TOC entry 3268 (class 0 OID 0)
-- Dependencies: 276
-- Name: TABLE solicitacoes; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.solicitacoes IS 'Registro de solicitações dos condôminos';


--
-- TOC entry 277 (class 1259 OID 31471)
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
-- TOC entry 3269 (class 0 OID 0)
-- Dependencies: 277
-- Name: solicitacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.solicitacoes_id_seq OWNED BY conveniencia.solicitacoes.id;


--
-- TOC entry 278 (class 1259 OID 31473)
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
-- TOC entry 3270 (class 0 OID 0)
-- Dependencies: 278
-- Name: TABLE tipo_diario; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.tipo_diario IS 'Indica o tipo de registro de entrada no diário da unidade';


--
-- TOC entry 279 (class 1259 OID 31480)
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
-- TOC entry 3271 (class 0 OID 0)
-- Dependencies: 279
-- Name: tipo_diario_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_diario_id_seq OWNED BY conveniencia.tipo_diario.id;


--
-- TOC entry 280 (class 1259 OID 31491)
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
-- TOC entry 3272 (class 0 OID 0)
-- Dependencies: 280
-- Name: TABLE tipo_solicitacao; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.tipo_solicitacao IS 'Informa os tipos de solicitacaos utilizados na abertura do pedido efetuado pelo condômino';


--
-- TOC entry 281 (class 1259 OID 31498)
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
-- TOC entry 3273 (class 0 OID 0)
-- Dependencies: 281
-- Name: tipo_solicitacao_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_solicitacao_id_seq OWNED BY conveniencia.tipo_solicitacao.id;


--
-- TOC entry 282 (class 1259 OID 31500)
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
-- TOC entry 3274 (class 0 OID 0)
-- Dependencies: 282
-- Name: TABLE tipo_veiculo; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.tipo_veiculo IS 'Informa os tipos de veículos possíveis para cadastro';


--
-- TOC entry 283 (class 1259 OID 31507)
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
-- TOC entry 3275 (class 0 OID 0)
-- Dependencies: 283
-- Name: tipo_veiculo_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_veiculo_id_seq OWNED BY conveniencia.tipo_veiculo.id;


--
-- TOC entry 284 (class 1259 OID 31509)
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
-- TOC entry 3276 (class 0 OID 0)
-- Dependencies: 284
-- Name: TABLE veiculos; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.veiculos IS 'Registro geral de veículos';


--
-- TOC entry 285 (class 1259 OID 31513)
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
-- TOC entry 3277 (class 0 OID 0)
-- Dependencies: 285
-- Name: veiculos_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.veiculos_id_seq OWNED BY conveniencia.veiculos.id;


--
-- TOC entry 286 (class 1259 OID 31515)
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
-- TOC entry 3278 (class 0 OID 0)
-- Dependencies: 286
-- Name: TABLE achados_perdidos; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.achados_perdidos IS 'Controle de objetos perdidos';


--
-- TOC entry 287 (class 1259 OID 31522)
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
-- TOC entry 3279 (class 0 OID 0)
-- Dependencies: 287
-- Name: achados_perdidos_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.achados_perdidos_id_seq OWNED BY operacional.achados_perdidos.id;


--
-- TOC entry 288 (class 1259 OID 31524)
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
-- TOC entry 3280 (class 0 OID 0)
-- Dependencies: 288
-- Name: TABLE atendimentos; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.atendimentos IS 'Acompanha os atendimentos com os prestadores de serviços do condomínio';


--
-- TOC entry 289 (class 1259 OID 31528)
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
-- TOC entry 3281 (class 0 OID 0)
-- Dependencies: 289
-- Name: atendimentos_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.atendimentos_id_seq OWNED BY operacional.atendimentos.id;


--
-- TOC entry 290 (class 1259 OID 31530)
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
-- TOC entry 3282 (class 0 OID 0)
-- Dependencies: 290
-- Name: TABLE contratos; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.contratos IS 'Acompanha os contratos com os prestadores de serviços do condomínio';


--
-- TOC entry 291 (class 1259 OID 31534)
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
-- TOC entry 3283 (class 0 OID 0)
-- Dependencies: 291
-- Name: contratos_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.contratos_id_seq OWNED BY operacional.contratos.id;


--
-- TOC entry 292 (class 1259 OID 31536)
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
-- TOC entry 3284 (class 0 OID 0)
-- Dependencies: 292
-- Name: TABLE estoque; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.estoque IS 'Registro de materiais em estoque';


--
-- TOC entry 293 (class 1259 OID 31543)
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
-- TOC entry 3285 (class 0 OID 0)
-- Dependencies: 293
-- Name: estoque_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.estoque_id_seq OWNED BY operacional.estoque.id;


--
-- TOC entry 294 (class 1259 OID 31545)
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
-- TOC entry 3286 (class 0 OID 0)
-- Dependencies: 294
-- Name: TABLE fornecedores; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.fornecedores IS 'Cadastro de pessoas e empresas prestadoras de serviço do condomínio';


--
-- TOC entry 295 (class 1259 OID 31552)
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
-- TOC entry 3287 (class 0 OID 0)
-- Dependencies: 295
-- Name: fornecedores_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.fornecedores_id_seq OWNED BY operacional.fornecedores.id;


--
-- TOC entry 296 (class 1259 OID 31554)
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
-- TOC entry 3288 (class 0 OID 0)
-- Dependencies: 296
-- Name: TABLE inventario; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.inventario IS 'Registro de bens proprietários do condomínio';


--
-- TOC entry 297 (class 1259 OID 31561)
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
-- TOC entry 3289 (class 0 OID 0)
-- Dependencies: 297
-- Name: inventario_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.inventario_id_seq OWNED BY operacional.inventario.id;


--
-- TOC entry 298 (class 1259 OID 31563)
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
-- TOC entry 3290 (class 0 OID 0)
-- Dependencies: 298
-- Name: TABLE reformas; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.reformas IS 'Acompanhamento de obras e reformas, manutenções etc';


--
-- TOC entry 299 (class 1259 OID 31570)
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
-- TOC entry 3291 (class 0 OID 0)
-- Dependencies: 299
-- Name: reformas_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.reformas_id_seq OWNED BY operacional.reformas.id;


--
-- TOC entry 300 (class 1259 OID 31572)
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
-- TOC entry 3292 (class 0 OID 0)
-- Dependencies: 300
-- Name: TABLE tipo_servico; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.tipo_servico IS 'registra os tipos de atividades dos pretadores de serviços ao condomínio';


--
-- TOC entry 301 (class 1259 OID 31579)
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
-- TOC entry 3293 (class 0 OID 0)
-- Dependencies: 301
-- Name: tipo_servico_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.tipo_servico_id_seq OWNED BY operacional.tipo_servico.id;


--
-- TOC entry 2709 (class 2604 OID 31581)
-- Name: academias id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.academias ALTER COLUMN id SET DEFAULT nextval('administracao.academias_id_seq'::regclass);


--
-- TOC entry 2711 (class 2604 OID 31582)
-- Name: assembleias id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.assembleias ALTER COLUMN id SET DEFAULT nextval('administracao.assembleias_id_seq'::regclass);


--
-- TOC entry 2713 (class 2604 OID 31583)
-- Name: bloco id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.bloco ALTER COLUMN id SET DEFAULT nextval('administracao.blocos_id_seq'::regclass);


--
-- TOC entry 2715 (class 2604 OID 31584)
-- Name: churrasqueiras id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.churrasqueiras ALTER COLUMN id SET DEFAULT nextval('administracao.churrasqueiras_id_seq'::regclass);


--
-- TOC entry 2717 (class 2604 OID 31585)
-- Name: condominio id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.condominio ALTER COLUMN id SET DEFAULT nextval('administracao.condominio_id_seq'::regclass);


--
-- TOC entry 2719 (class 2604 OID 31586)
-- Name: designacoes id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.designacoes ALTER COLUMN id SET DEFAULT nextval('administracao.designacoes_id_seq'::regclass);


--
-- TOC entry 2721 (class 2604 OID 31587)
-- Name: documentos id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.documentos ALTER COLUMN id SET DEFAULT nextval('administracao.documentos_id_seq'::regclass);


--
-- TOC entry 2723 (class 2604 OID 31588)
-- Name: elevadores id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.elevadores ALTER COLUMN id SET DEFAULT nextval('administracao.elevadores_id_seq'::regclass);


--
-- TOC entry 2725 (class 2604 OID 31589)
-- Name: enquetes id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.enquetes ALTER COLUMN id SET DEFAULT nextval('administracao.enquetes_id_seq'::regclass);


--
-- TOC entry 2727 (class 2604 OID 31590)
-- Name: espacos id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.espacos ALTER COLUMN id SET DEFAULT nextval('administracao.espacos_id_seq'::regclass);


--
-- TOC entry 2729 (class 2604 OID 31591)
-- Name: estacionamentos id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.estacionamentos ALTER COLUMN id SET DEFAULT nextval('administracao.estacionamentos_id_seq'::regclass);


--
-- TOC entry 2733 (class 2604 OID 31592)
-- Name: gestao id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao ALTER COLUMN id SET DEFAULT nextval('administracao.gestao_id_seq'::regclass);


--
-- TOC entry 2735 (class 2604 OID 31593)
-- Name: piscinas id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.piscinas ALTER COLUMN id SET DEFAULT nextval('administracao.piscinas_id_seq'::regclass);


--
-- TOC entry 2737 (class 2604 OID 31594)
-- Name: portarias id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.portarias ALTER COLUMN id SET DEFAULT nextval('administracao.portarias_id_seq'::regclass);


--
-- TOC entry 2739 (class 2604 OID 31595)
-- Name: quadras id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.quadras ALTER COLUMN id SET DEFAULT nextval('administracao.quadras_id_seq'::regclass);


--
-- TOC entry 2741 (class 2604 OID 31596)
-- Name: reserva id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.reserva ALTER COLUMN id SET DEFAULT nextval('administracao.reserva_id_seq'::regclass);


--
-- TOC entry 2743 (class 2604 OID 31597)
-- Name: vagas id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.vagas ALTER COLUMN id SET DEFAULT nextval('administracao.vagas_id_seq'::regclass);


--
-- TOC entry 2745 (class 2604 OID 31598)
-- Name: artigos id; Type: DEFAULT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.artigos ALTER COLUMN id SET DEFAULT nextval('cms.artigos_id_seq'::regclass);


--
-- TOC entry 2747 (class 2604 OID 31599)
-- Name: comunicados id; Type: DEFAULT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.comunicados ALTER COLUMN id SET DEFAULT nextval('cms.comunicados_id_seq'::regclass);


--
-- TOC entry 2749 (class 2604 OID 31600)
-- Name: bloqueios_ctrl_acesso id; Type: DEFAULT; Schema: config; Owner: postgres
--

ALTER TABLE ONLY config.bloqueios_ctrl_acesso ALTER COLUMN id SET DEFAULT nextval('config.bloqueios_ctrl_acesso_id_seq'::regclass);


--
-- TOC entry 2751 (class 2604 OID 31601)
-- Name: tipo_cadastro id; Type: DEFAULT; Schema: config; Owner: postgres
--

ALTER TABLE ONLY config.tipo_cadastro ALTER COLUMN id SET DEFAULT nextval('config.tipo_cadastro_id_seq'::regclass);


--
-- TOC entry 2757 (class 2604 OID 31602)
-- Name: autorizacao_veicular id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular ALTER COLUMN id SET DEFAULT nextval('conveniencia.autorizacao_veicular_id_seq'::regclass);


--
-- TOC entry 2759 (class 2604 OID 31603)
-- Name: correspondencias id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.correspondencias ALTER COLUMN id SET DEFAULT nextval('conveniencia.correspondencias_id_seq'::regclass);


--
-- TOC entry 2761 (class 2604 OID 31604)
-- Name: diario id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario ALTER COLUMN id SET DEFAULT nextval('conveniencia.diario_id_seq'::regclass);


--
-- TOC entry 2771 (class 2604 OID 31605)
-- Name: emails id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.emails ALTER COLUMN id SET DEFAULT nextval('conveniencia.emails_id_seq'::regclass);


--
-- TOC entry 2773 (class 2604 OID 31606)
-- Name: incidentes id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.incidentes ALTER COLUMN id SET DEFAULT nextval('conveniencia.incidentes_id_seq'::regclass);


--
-- TOC entry 2775 (class 2604 OID 31607)
-- Name: login id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.login ALTER COLUMN id SET DEFAULT nextval('conveniencia.login_id_seq'::regclass);


--
-- TOC entry 2754 (class 2604 OID 31608)
-- Name: pessoal_autorizacao id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao ALTER COLUMN id SET DEFAULT nextval('conveniencia.autorizacao_pessoal_id_seq'::regclass);


--
-- TOC entry 2777 (class 2604 OID 31609)
-- Name: pessoal_cadastro id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoas_id_seq'::regclass);


--
-- TOC entry 2779 (class 2604 OID 31610)
-- Name: pessoal_contato id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_contato ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoal_contato_id_seq'::regclass);


--
-- TOC entry 2781 (class 2604 OID 31611)
-- Name: pessoal_documentos id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_documentos ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoal_documentos_id_seq'::regclass);


--
-- TOC entry 2783 (class 2604 OID 31612)
-- Name: pessoal_particularidades id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_particularidades ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoal_particularidades_id_seq'::regclass);


--
-- TOC entry 2785 (class 2604 OID 31613)
-- Name: pets id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pets ALTER COLUMN id SET DEFAULT nextval('conveniencia.pets_id_seq'::regclass);


--
-- TOC entry 2787 (class 2604 OID 31614)
-- Name: pre_autorizacao id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao ALTER COLUMN id SET DEFAULT nextval('conveniencia.pre_autorizacao_id_seq'::regclass);


--
-- TOC entry 2788 (class 2604 OID 31615)
-- Name: pre_autorizacao pessoa; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao ALTER COLUMN pessoa SET DEFAULT nextval('conveniencia.pre_autorizacao_pessoa_seq'::regclass);


--
-- TOC entry 2792 (class 2604 OID 31616)
-- Name: reservas id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.reservas ALTER COLUMN id SET DEFAULT nextval('conveniencia.reservas_id_seq'::regclass);


--
-- TOC entry 2794 (class 2604 OID 31617)
-- Name: solicitacoes id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes ALTER COLUMN id SET DEFAULT nextval('conveniencia.solicitacoes_id_seq'::regclass);


--
-- TOC entry 2796 (class 2604 OID 31618)
-- Name: tipo_diario id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_diario ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_diario_id_seq'::regclass);


--
-- TOC entry 2798 (class 2604 OID 31620)
-- Name: tipo_solicitacao id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_solicitacao ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_solicitacao_id_seq'::regclass);


--
-- TOC entry 2800 (class 2604 OID 31621)
-- Name: tipo_veiculo id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_veiculo ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_veiculo_id_seq'::regclass);


--
-- TOC entry 2790 (class 2604 OID 31622)
-- Name: unidade id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.unidade ALTER COLUMN id SET DEFAULT nextval('conveniencia.registro_id_seq'::regclass);


--
-- TOC entry 2802 (class 2604 OID 31623)
-- Name: veiculos id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos ALTER COLUMN id SET DEFAULT nextval('conveniencia.veiculos_id_seq'::regclass);


--
-- TOC entry 2804 (class 2604 OID 31624)
-- Name: achados_perdidos id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.achados_perdidos ALTER COLUMN id SET DEFAULT nextval('operacional.achados_perdidos_id_seq'::regclass);


--
-- TOC entry 2806 (class 2604 OID 31625)
-- Name: atendimentos id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.atendimentos ALTER COLUMN id SET DEFAULT nextval('operacional.atendimentos_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 31626)
-- Name: contratos id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.contratos ALTER COLUMN id SET DEFAULT nextval('operacional.contratos_id_seq'::regclass);


--
-- TOC entry 2810 (class 2604 OID 31627)
-- Name: estoque id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.estoque ALTER COLUMN id SET DEFAULT nextval('operacional.estoque_id_seq'::regclass);


--
-- TOC entry 2812 (class 2604 OID 31628)
-- Name: fornecedores id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores ALTER COLUMN id SET DEFAULT nextval('operacional.fornecedores_id_seq'::regclass);


--
-- TOC entry 2814 (class 2604 OID 31629)
-- Name: inventario id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.inventario ALTER COLUMN id SET DEFAULT nextval('operacional.inventario_id_seq'::regclass);


--
-- TOC entry 2816 (class 2604 OID 31630)
-- Name: reformas id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.reformas ALTER COLUMN id SET DEFAULT nextval('operacional.reformas_id_seq'::regclass);


--
-- TOC entry 2818 (class 2604 OID 31631)
-- Name: tipo_servico id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.tipo_servico ALTER COLUMN id SET DEFAULT nextval('operacional.tipo_servico_id_seq'::regclass);


--
-- TOC entry 3088 (class 0 OID 31138)
-- Dependencies: 203
-- Data for Name: academias; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3090 (class 0 OID 31147)
-- Dependencies: 205
-- Data for Name: assembleias; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3092 (class 0 OID 31156)
-- Dependencies: 207
-- Data for Name: bloco; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3094 (class 0 OID 31165)
-- Dependencies: 209
-- Data for Name: churrasqueiras; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3096 (class 0 OID 31174)
-- Dependencies: 211
-- Data for Name: condominio; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3098 (class 0 OID 31183)
-- Dependencies: 213
-- Data for Name: designacoes; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3100 (class 0 OID 31192)
-- Dependencies: 215
-- Data for Name: documentos; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3102 (class 0 OID 31201)
-- Dependencies: 217
-- Data for Name: elevadores; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3104 (class 0 OID 31210)
-- Dependencies: 219
-- Data for Name: enquetes; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3106 (class 0 OID 31219)
-- Dependencies: 221
-- Data for Name: espacos; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3108 (class 0 OID 31228)
-- Dependencies: 223
-- Data for Name: estacionamentos; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3110 (class 0 OID 31237)
-- Dependencies: 225
-- Data for Name: gestao; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3112 (class 0 OID 31248)
-- Dependencies: 227
-- Data for Name: piscinas; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3114 (class 0 OID 31257)
-- Dependencies: 229
-- Data for Name: portarias; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3116 (class 0 OID 31266)
-- Dependencies: 231
-- Data for Name: quadras; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3118 (class 0 OID 31275)
-- Dependencies: 233
-- Data for Name: reserva; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3120 (class 0 OID 31284)
-- Dependencies: 235
-- Data for Name: vagas; Type: TABLE DATA; Schema: administracao; Owner: postgres
--



--
-- TOC entry 3122 (class 0 OID 31293)
-- Dependencies: 237
-- Data for Name: artigos; Type: TABLE DATA; Schema: cms; Owner: postgres
--



--
-- TOC entry 3124 (class 0 OID 31302)
-- Dependencies: 239
-- Data for Name: comunicados; Type: TABLE DATA; Schema: cms; Owner: postgres
--



--
-- TOC entry 3126 (class 0 OID 31311)
-- Dependencies: 241
-- Data for Name: bloqueios_ctrl_acesso; Type: TABLE DATA; Schema: config; Owner: postgres
--



--
-- TOC entry 3128 (class 0 OID 31320)
-- Dependencies: 243
-- Data for Name: tipo_cadastro; Type: TABLE DATA; Schema: config; Owner: postgres
--

INSERT INTO config.tipo_cadastro (id, firstdate, lastdate, purgedate, firstuser, lasttuser, purgeuser, nome) VALUES (1, '2019-10-15 17:48:25.896191', NULL, NULL, NULL, NULL, NULL, 'Condômino');
INSERT INTO config.tipo_cadastro (id, firstdate, lastdate, purgedate, firstuser, lasttuser, purgeuser, nome) VALUES (2, '2019-10-15 17:48:50.970734', NULL, NULL, NULL, NULL, NULL, 'Pré-Autorizado');
INSERT INTO config.tipo_cadastro (id, firstdate, lastdate, purgedate, firstuser, lasttuser, purgeuser, nome) VALUES (3, '2019-10-15 17:49:05.283275', NULL, NULL, NULL, NULL, NULL, 'Visitante');
INSERT INTO config.tipo_cadastro (id, firstdate, lastdate, purgedate, firstuser, lasttuser, purgeuser, nome) VALUES (4, '2019-10-15 17:49:15.148864', NULL, NULL, NULL, NULL, NULL, 'Prestador de serviços');
INSERT INTO config.tipo_cadastro (id, firstdate, lastdate, purgedate, firstuser, lasttuser, purgeuser, nome) VALUES (5, '2019-10-15 17:49:26.339765', NULL, NULL, NULL, NULL, NULL, 'Entregador');
INSERT INTO config.tipo_cadastro (id, firstdate, lastdate, purgedate, firstuser, lasttuser, purgeuser, nome) VALUES (6, '2019-10-15 17:49:40.437973', NULL, NULL, NULL, NULL, NULL, 'Funcionário da unidade');
INSERT INTO config.tipo_cadastro (id, firstdate, lastdate, purgedate, firstuser, lasttuser, purgeuser, nome) VALUES (7, '2019-10-15 17:49:51.042097', NULL, NULL, NULL, NULL, NULL, 'Funcionário do condomínio');


--
-- TOC entry 3132 (class 0 OID 31339)
-- Dependencies: 247
-- Data for Name: autorizacao_veicular; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3134 (class 0 OID 31349)
-- Dependencies: 249
-- Data for Name: correspondencias; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3136 (class 0 OID 31358)
-- Dependencies: 251
-- Data for Name: diario; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3138 (class 0 OID 31367)
-- Dependencies: 253
-- Data for Name: emails; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3140 (class 0 OID 31384)
-- Dependencies: 255
-- Data for Name: incidentes; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3142 (class 0 OID 31393)
-- Dependencies: 257
-- Data for Name: login; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3130 (class 0 OID 31329)
-- Dependencies: 245
-- Data for Name: pessoal_autorizacao; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3144 (class 0 OID 31402)
-- Dependencies: 259
-- Data for Name: pessoal_cadastro; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3145 (class 0 OID 31406)
-- Dependencies: 260
-- Data for Name: pessoal_contato; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3147 (class 0 OID 31415)
-- Dependencies: 262
-- Data for Name: pessoal_documentos; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3149 (class 0 OID 31424)
-- Dependencies: 264
-- Data for Name: pessoal_particularidades; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3152 (class 0 OID 31435)
-- Dependencies: 267
-- Data for Name: pets; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3154 (class 0 OID 31441)
-- Dependencies: 269
-- Data for Name: pre_autorizacao; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3159 (class 0 OID 31458)
-- Dependencies: 274
-- Data for Name: reservas; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3161 (class 0 OID 31464)
-- Dependencies: 276
-- Data for Name: solicitacoes; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3163 (class 0 OID 31473)
-- Dependencies: 278
-- Data for Name: tipo_diario; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3165 (class 0 OID 31491)
-- Dependencies: 280
-- Data for Name: tipo_solicitacao; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3167 (class 0 OID 31500)
-- Dependencies: 282
-- Data for Name: tipo_veiculo; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3157 (class 0 OID 31449)
-- Dependencies: 272
-- Data for Name: unidade; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3169 (class 0 OID 31509)
-- Dependencies: 284
-- Data for Name: veiculos; Type: TABLE DATA; Schema: conveniencia; Owner: postgres
--



--
-- TOC entry 3171 (class 0 OID 31515)
-- Dependencies: 286
-- Data for Name: achados_perdidos; Type: TABLE DATA; Schema: operacional; Owner: postgres
--



--
-- TOC entry 3173 (class 0 OID 31524)
-- Dependencies: 288
-- Data for Name: atendimentos; Type: TABLE DATA; Schema: operacional; Owner: postgres
--



--
-- TOC entry 3175 (class 0 OID 31530)
-- Dependencies: 290
-- Data for Name: contratos; Type: TABLE DATA; Schema: operacional; Owner: postgres
--



--
-- TOC entry 3177 (class 0 OID 31536)
-- Dependencies: 292
-- Data for Name: estoque; Type: TABLE DATA; Schema: operacional; Owner: postgres
--



--
-- TOC entry 3179 (class 0 OID 31545)
-- Dependencies: 294
-- Data for Name: fornecedores; Type: TABLE DATA; Schema: operacional; Owner: postgres
--



--
-- TOC entry 3181 (class 0 OID 31554)
-- Dependencies: 296
-- Data for Name: inventario; Type: TABLE DATA; Schema: operacional; Owner: postgres
--



--
-- TOC entry 3183 (class 0 OID 31563)
-- Dependencies: 298
-- Data for Name: reformas; Type: TABLE DATA; Schema: operacional; Owner: postgres
--



--
-- TOC entry 3185 (class 0 OID 31572)
-- Dependencies: 300
-- Data for Name: tipo_servico; Type: TABLE DATA; Schema: operacional; Owner: postgres
--



--
-- TOC entry 3294 (class 0 OID 0)
-- Dependencies: 204
-- Name: academias_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.academias_id_seq', 1, false);


--
-- TOC entry 3295 (class 0 OID 0)
-- Dependencies: 206
-- Name: assembleias_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.assembleias_id_seq', 1, false);


--
-- TOC entry 3296 (class 0 OID 0)
-- Dependencies: 208
-- Name: blocos_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.blocos_id_seq', 1, false);


--
-- TOC entry 3297 (class 0 OID 0)
-- Dependencies: 210
-- Name: churrasqueiras_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.churrasqueiras_id_seq', 1, false);


--
-- TOC entry 3298 (class 0 OID 0)
-- Dependencies: 212
-- Name: condominio_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.condominio_id_seq', 1, false);


--
-- TOC entry 3299 (class 0 OID 0)
-- Dependencies: 214
-- Name: designacoes_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.designacoes_id_seq', 1, false);


--
-- TOC entry 3300 (class 0 OID 0)
-- Dependencies: 216
-- Name: documentos_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.documentos_id_seq', 1, false);


--
-- TOC entry 3301 (class 0 OID 0)
-- Dependencies: 218
-- Name: elevadores_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.elevadores_id_seq', 1, false);


--
-- TOC entry 3302 (class 0 OID 0)
-- Dependencies: 220
-- Name: enquetes_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.enquetes_id_seq', 1, false);


--
-- TOC entry 3303 (class 0 OID 0)
-- Dependencies: 222
-- Name: espacos_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.espacos_id_seq', 1, false);


--
-- TOC entry 3304 (class 0 OID 0)
-- Dependencies: 224
-- Name: estacionamentos_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.estacionamentos_id_seq', 1, false);


--
-- TOC entry 3305 (class 0 OID 0)
-- Dependencies: 226
-- Name: gestao_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.gestao_id_seq', 1, false);


--
-- TOC entry 3306 (class 0 OID 0)
-- Dependencies: 228
-- Name: piscinas_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.piscinas_id_seq', 1, false);


--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 230
-- Name: portarias_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.portarias_id_seq', 1, false);


--
-- TOC entry 3308 (class 0 OID 0)
-- Dependencies: 232
-- Name: quadras_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.quadras_id_seq', 1, false);


--
-- TOC entry 3309 (class 0 OID 0)
-- Dependencies: 234
-- Name: reserva_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.reserva_id_seq', 1, false);


--
-- TOC entry 3310 (class 0 OID 0)
-- Dependencies: 236
-- Name: vagas_id_seq; Type: SEQUENCE SET; Schema: administracao; Owner: postgres
--

SELECT pg_catalog.setval('administracao.vagas_id_seq', 1, false);


--
-- TOC entry 3311 (class 0 OID 0)
-- Dependencies: 238
-- Name: artigos_id_seq; Type: SEQUENCE SET; Schema: cms; Owner: postgres
--

SELECT pg_catalog.setval('cms.artigos_id_seq', 1, false);


--
-- TOC entry 3312 (class 0 OID 0)
-- Dependencies: 240
-- Name: comunicados_id_seq; Type: SEQUENCE SET; Schema: cms; Owner: postgres
--

SELECT pg_catalog.setval('cms.comunicados_id_seq', 1, false);


--
-- TOC entry 3313 (class 0 OID 0)
-- Dependencies: 242
-- Name: bloqueios_ctrl_acesso_id_seq; Type: SEQUENCE SET; Schema: config; Owner: postgres
--

SELECT pg_catalog.setval('config.bloqueios_ctrl_acesso_id_seq', 1, false);


--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 244
-- Name: tipo_cadastro_id_seq; Type: SEQUENCE SET; Schema: config; Owner: postgres
--

SELECT pg_catalog.setval('config.tipo_cadastro_id_seq', 7, true);


--
-- TOC entry 3315 (class 0 OID 0)
-- Dependencies: 246
-- Name: autorizacao_pessoal_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.autorizacao_pessoal_id_seq', 1, false);


--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 248
-- Name: autorizacao_veicular_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.autorizacao_veicular_id_seq', 1, false);


--
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 250
-- Name: correspondencias_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.correspondencias_id_seq', 1, false);


--
-- TOC entry 3318 (class 0 OID 0)
-- Dependencies: 252
-- Name: diario_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.diario_id_seq', 1, false);


--
-- TOC entry 3319 (class 0 OID 0)
-- Dependencies: 254
-- Name: emails_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.emails_id_seq', 1, false);


--
-- TOC entry 3320 (class 0 OID 0)
-- Dependencies: 256
-- Name: incidentes_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.incidentes_id_seq', 1, false);


--
-- TOC entry 3321 (class 0 OID 0)
-- Dependencies: 258
-- Name: login_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.login_id_seq', 1, false);


--
-- TOC entry 3322 (class 0 OID 0)
-- Dependencies: 261
-- Name: pessoal_contato_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.pessoal_contato_id_seq', 1, false);


--
-- TOC entry 3323 (class 0 OID 0)
-- Dependencies: 263
-- Name: pessoal_documentos_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.pessoal_documentos_id_seq', 1, false);


--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 265
-- Name: pessoal_particularidades_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.pessoal_particularidades_id_seq', 1, false);


--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 266
-- Name: pessoas_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.pessoas_id_seq', 1, false);


--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 268
-- Name: pets_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.pets_id_seq', 1, false);


--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 270
-- Name: pre_autorizacao_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.pre_autorizacao_id_seq', 1, false);


--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 271
-- Name: pre_autorizacao_pessoa_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.pre_autorizacao_pessoa_seq', 1, false);


--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 273
-- Name: registro_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.registro_id_seq', 1, false);


--
-- TOC entry 3330 (class 0 OID 0)
-- Dependencies: 275
-- Name: reservas_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.reservas_id_seq', 1, false);


--
-- TOC entry 3331 (class 0 OID 0)
-- Dependencies: 277
-- Name: solicitacoes_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.solicitacoes_id_seq', 1, false);


--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 279
-- Name: tipo_diario_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.tipo_diario_id_seq', 1, false);


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 281
-- Name: tipo_solicitacao_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.tipo_solicitacao_id_seq', 1, false);


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 283
-- Name: tipo_veiculo_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.tipo_veiculo_id_seq', 1, false);


--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 285
-- Name: veiculos_id_seq; Type: SEQUENCE SET; Schema: conveniencia; Owner: postgres
--

SELECT pg_catalog.setval('conveniencia.veiculos_id_seq', 1, false);


--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 287
-- Name: achados_perdidos_id_seq; Type: SEQUENCE SET; Schema: operacional; Owner: postgres
--

SELECT pg_catalog.setval('operacional.achados_perdidos_id_seq', 1, false);


--
-- TOC entry 3337 (class 0 OID 0)
-- Dependencies: 289
-- Name: atendimentos_id_seq; Type: SEQUENCE SET; Schema: operacional; Owner: postgres
--

SELECT pg_catalog.setval('operacional.atendimentos_id_seq', 1, false);


--
-- TOC entry 3338 (class 0 OID 0)
-- Dependencies: 291
-- Name: contratos_id_seq; Type: SEQUENCE SET; Schema: operacional; Owner: postgres
--

SELECT pg_catalog.setval('operacional.contratos_id_seq', 1, false);


--
-- TOC entry 3339 (class 0 OID 0)
-- Dependencies: 293
-- Name: estoque_id_seq; Type: SEQUENCE SET; Schema: operacional; Owner: postgres
--

SELECT pg_catalog.setval('operacional.estoque_id_seq', 1, false);


--
-- TOC entry 3340 (class 0 OID 0)
-- Dependencies: 295
-- Name: fornecedores_id_seq; Type: SEQUENCE SET; Schema: operacional; Owner: postgres
--

SELECT pg_catalog.setval('operacional.fornecedores_id_seq', 1, false);


--
-- TOC entry 3341 (class 0 OID 0)
-- Dependencies: 297
-- Name: inventario_id_seq; Type: SEQUENCE SET; Schema: operacional; Owner: postgres
--

SELECT pg_catalog.setval('operacional.inventario_id_seq', 1, false);


--
-- TOC entry 3342 (class 0 OID 0)
-- Dependencies: 299
-- Name: reformas_id_seq; Type: SEQUENCE SET; Schema: operacional; Owner: postgres
--

SELECT pg_catalog.setval('operacional.reformas_id_seq', 1, false);


--
-- TOC entry 3343 (class 0 OID 0)
-- Dependencies: 301
-- Name: tipo_servico_id_seq; Type: SEQUENCE SET; Schema: operacional; Owner: postgres
--

SELECT pg_catalog.setval('operacional.tipo_servico_id_seq', 1, false);


--
-- TOC entry 2820 (class 2606 OID 31633)
-- Name: academias primarykey_adm_academias; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.academias
    ADD CONSTRAINT primarykey_adm_academias PRIMARY KEY (id);


--
-- TOC entry 2822 (class 2606 OID 31635)
-- Name: assembleias primarykey_adm_assembleias; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.assembleias
    ADD CONSTRAINT primarykey_adm_assembleias PRIMARY KEY (id);


--
-- TOC entry 2824 (class 2606 OID 31637)
-- Name: bloco primarykey_adm_blocos; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.bloco
    ADD CONSTRAINT primarykey_adm_blocos PRIMARY KEY (id);


--
-- TOC entry 2826 (class 2606 OID 31639)
-- Name: churrasqueiras primarykey_adm_churrasqueiras; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.churrasqueiras
    ADD CONSTRAINT primarykey_adm_churrasqueiras PRIMARY KEY (id);


--
-- TOC entry 2828 (class 2606 OID 31641)
-- Name: condominio primarykey_adm_condominio; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.condominio
    ADD CONSTRAINT primarykey_adm_condominio PRIMARY KEY (id);


--
-- TOC entry 2830 (class 2606 OID 31643)
-- Name: designacoes primarykey_adm_designacoes; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.designacoes
    ADD CONSTRAINT primarykey_adm_designacoes PRIMARY KEY (id);


--
-- TOC entry 2832 (class 2606 OID 31645)
-- Name: documentos primarykey_adm_documentos; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.documentos
    ADD CONSTRAINT primarykey_adm_documentos PRIMARY KEY (id);


--
-- TOC entry 2834 (class 2606 OID 31647)
-- Name: elevadores primarykey_adm_elevadores; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.elevadores
    ADD CONSTRAINT primarykey_adm_elevadores PRIMARY KEY (id);


--
-- TOC entry 2836 (class 2606 OID 31649)
-- Name: enquetes primarykey_adm_enquetes; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.enquetes
    ADD CONSTRAINT primarykey_adm_enquetes PRIMARY KEY (id);


--
-- TOC entry 2838 (class 2606 OID 31651)
-- Name: espacos primarykey_adm_espacos; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.espacos
    ADD CONSTRAINT primarykey_adm_espacos PRIMARY KEY (id);


--
-- TOC entry 2840 (class 2606 OID 31653)
-- Name: estacionamentos primarykey_adm_estacionamentos; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.estacionamentos
    ADD CONSTRAINT primarykey_adm_estacionamentos PRIMARY KEY (id);


--
-- TOC entry 2842 (class 2606 OID 31655)
-- Name: gestao primarykey_adm_gestao; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao
    ADD CONSTRAINT primarykey_adm_gestao PRIMARY KEY (id);


--
-- TOC entry 2844 (class 2606 OID 31657)
-- Name: piscinas primarykey_adm_piscinas; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.piscinas
    ADD CONSTRAINT primarykey_adm_piscinas PRIMARY KEY (id);


--
-- TOC entry 2846 (class 2606 OID 31659)
-- Name: portarias primarykey_adm_portarias; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.portarias
    ADD CONSTRAINT primarykey_adm_portarias PRIMARY KEY (id);


--
-- TOC entry 2848 (class 2606 OID 31661)
-- Name: quadras primarykey_adm_quadras; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.quadras
    ADD CONSTRAINT primarykey_adm_quadras PRIMARY KEY (id);


--
-- TOC entry 2850 (class 2606 OID 31663)
-- Name: reserva primarykey_adm_reserva; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.reserva
    ADD CONSTRAINT primarykey_adm_reserva PRIMARY KEY (id);


--
-- TOC entry 2852 (class 2606 OID 31665)
-- Name: vagas primarykey_adm_vagas; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.vagas
    ADD CONSTRAINT primarykey_adm_vagas PRIMARY KEY (id);


--
-- TOC entry 2854 (class 2606 OID 31667)
-- Name: artigos primarykey_cms_artigos; Type: CONSTRAINT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.artigos
    ADD CONSTRAINT primarykey_cms_artigos PRIMARY KEY (id);


--
-- TOC entry 2856 (class 2606 OID 31669)
-- Name: comunicados primarykey_cms_comunicados; Type: CONSTRAINT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.comunicados
    ADD CONSTRAINT primarykey_cms_comunicados PRIMARY KEY (id);


--
-- TOC entry 2858 (class 2606 OID 31671)
-- Name: bloqueios_ctrl_acesso bloqueios_ctrl_acesso_pk; Type: CONSTRAINT; Schema: config; Owner: postgres
--

ALTER TABLE ONLY config.bloqueios_ctrl_acesso
    ADD CONSTRAINT bloqueios_ctrl_acesso_pk PRIMARY KEY (id);


--
-- TOC entry 2860 (class 2606 OID 31673)
-- Name: tipo_cadastro tipo_cadastro_pk; Type: CONSTRAINT; Schema: config; Owner: postgres
--

ALTER TABLE ONLY config.tipo_cadastro
    ADD CONSTRAINT tipo_cadastro_pk PRIMARY KEY (id);


--
-- TOC entry 2878 (class 2606 OID 31675)
-- Name: pessoal_contato primarykey_residencial_pessoal_contato; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_contato
    ADD CONSTRAINT primarykey_residencial_pessoal_contato PRIMARY KEY (id);


--
-- TOC entry 2880 (class 2606 OID 31677)
-- Name: pessoal_documentos primarykey_residencial_pessoal_documentacao; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_documentos
    ADD CONSTRAINT primarykey_residencial_pessoal_documentacao PRIMARY KEY (id);


--
-- TOC entry 2882 (class 2606 OID 31679)
-- Name: pessoal_particularidades primarykey_residencial_pessoal_particularidades; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_particularidades
    ADD CONSTRAINT primarykey_residencial_pessoal_particularidades PRIMARY KEY (id);


--
-- TOC entry 2862 (class 2606 OID 31681)
-- Name: pessoal_autorizacao primarykey_unidade_autorizacao_pessoal; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao
    ADD CONSTRAINT primarykey_unidade_autorizacao_pessoal PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 31683)
-- Name: autorizacao_veicular primarykey_unidade_autorizacao_veicular; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular
    ADD CONSTRAINT primarykey_unidade_autorizacao_veicular PRIMARY KEY (id);


--
-- TOC entry 2866 (class 2606 OID 31685)
-- Name: correspondencias primarykey_unidade_correspondencias; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.correspondencias
    ADD CONSTRAINT primarykey_unidade_correspondencias PRIMARY KEY (id);


--
-- TOC entry 2868 (class 2606 OID 31687)
-- Name: diario primarykey_unidade_diario; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario
    ADD CONSTRAINT primarykey_unidade_diario PRIMARY KEY (id);


--
-- TOC entry 2870 (class 2606 OID 31689)
-- Name: emails primarykey_unidade_emails; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.emails
    ADD CONSTRAINT primarykey_unidade_emails PRIMARY KEY (id);


--
-- TOC entry 2872 (class 2606 OID 31691)
-- Name: incidentes primarykey_unidade_incidentes; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.incidentes
    ADD CONSTRAINT primarykey_unidade_incidentes PRIMARY KEY (id);


--
-- TOC entry 2874 (class 2606 OID 31693)
-- Name: login primarykey_unidade_login; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.login
    ADD CONSTRAINT primarykey_unidade_login PRIMARY KEY (id);


--
-- TOC entry 2876 (class 2606 OID 31695)
-- Name: pessoal_cadastro primarykey_unidade_pessoas; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro
    ADD CONSTRAINT primarykey_unidade_pessoas PRIMARY KEY (id);


--
-- TOC entry 2884 (class 2606 OID 31697)
-- Name: pets primarykey_unidade_pets; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pets
    ADD CONSTRAINT primarykey_unidade_pets PRIMARY KEY (id);


--
-- TOC entry 2886 (class 2606 OID 31699)
-- Name: pre_autorizacao primarykey_unidade_pre_autorizacao; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao
    ADD CONSTRAINT primarykey_unidade_pre_autorizacao PRIMARY KEY (id);


--
-- TOC entry 2888 (class 2606 OID 31701)
-- Name: unidade primarykey_unidade_registro; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.unidade
    ADD CONSTRAINT primarykey_unidade_registro PRIMARY KEY (id);


--
-- TOC entry 2890 (class 2606 OID 31703)
-- Name: reservas primarykey_unidade_reservas; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.reservas
    ADD CONSTRAINT primarykey_unidade_reservas PRIMARY KEY (id);


--
-- TOC entry 2892 (class 2606 OID 31705)
-- Name: solicitacoes primarykey_unidade_solicitacoes; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes
    ADD CONSTRAINT primarykey_unidade_solicitacoes PRIMARY KEY (id);


--
-- TOC entry 2894 (class 2606 OID 31707)
-- Name: tipo_diario primarykey_unidade_tipo_diario; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_diario
    ADD CONSTRAINT primarykey_unidade_tipo_diario PRIMARY KEY (id);


--
-- TOC entry 2896 (class 2606 OID 31711)
-- Name: tipo_solicitacao primarykey_unidade_tipo_solicitacao; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_solicitacao
    ADD CONSTRAINT primarykey_unidade_tipo_solicitacao PRIMARY KEY (id);


--
-- TOC entry 2898 (class 2606 OID 31713)
-- Name: tipo_veiculo primarykey_unidade_tipo_veiculo; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_veiculo
    ADD CONSTRAINT primarykey_unidade_tipo_veiculo PRIMARY KEY (id);


--
-- TOC entry 2900 (class 2606 OID 31715)
-- Name: veiculos primarykey_unidade_veiculos; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT primarykey_unidade_veiculos PRIMARY KEY (id);


--
-- TOC entry 2904 (class 2606 OID 31717)
-- Name: atendimentos primarykey_adm_atendimentos; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.atendimentos
    ADD CONSTRAINT primarykey_adm_atendimentos PRIMARY KEY (id);


--
-- TOC entry 2906 (class 2606 OID 31719)
-- Name: contratos primarykey_adm_contratos; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.contratos
    ADD CONSTRAINT primarykey_adm_contratos PRIMARY KEY (id);


--
-- TOC entry 2910 (class 2606 OID 31721)
-- Name: fornecedores primarykey_adm_fornecedores; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores
    ADD CONSTRAINT primarykey_adm_fornecedores PRIMARY KEY (id);


--
-- TOC entry 2902 (class 2606 OID 31723)
-- Name: achados_perdidos primarykey_operacional_achados_perdidos; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.achados_perdidos
    ADD CONSTRAINT primarykey_operacional_achados_perdidos PRIMARY KEY (id);


--
-- TOC entry 2908 (class 2606 OID 31725)
-- Name: estoque primarykey_operacional_estoque; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.estoque
    ADD CONSTRAINT primarykey_operacional_estoque PRIMARY KEY (id);


--
-- TOC entry 2912 (class 2606 OID 31727)
-- Name: inventario primarykey_operacional_inventario; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.inventario
    ADD CONSTRAINT primarykey_operacional_inventario PRIMARY KEY (id);


--
-- TOC entry 2914 (class 2606 OID 31729)
-- Name: reformas primarykey_operacional_reformas; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.reformas
    ADD CONSTRAINT primarykey_operacional_reformas PRIMARY KEY (id);


--
-- TOC entry 2916 (class 2606 OID 31731)
-- Name: tipo_servico primarykey_unidade_tipo_servico; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.tipo_servico
    ADD CONSTRAINT primarykey_unidade_tipo_servico PRIMARY KEY (id);


--
-- TOC entry 2917 (class 2606 OID 31732)
-- Name: academias academias_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.academias
    ADD CONSTRAINT academias_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2918 (class 2606 OID 31737)
-- Name: assembleias assembleias_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.assembleias
    ADD CONSTRAINT assembleias_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2919 (class 2606 OID 31742)
-- Name: bloco blocos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.bloco
    ADD CONSTRAINT blocos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2920 (class 2606 OID 31747)
-- Name: churrasqueiras churrasqueiras_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.churrasqueiras
    ADD CONSTRAINT churrasqueiras_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2921 (class 2606 OID 31752)
-- Name: documentos documentos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.documentos
    ADD CONSTRAINT documentos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2922 (class 2606 OID 31757)
-- Name: elevadores elevadores_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.elevadores
    ADD CONSTRAINT elevadores_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2923 (class 2606 OID 31762)
-- Name: enquetes enquetes_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.enquetes
    ADD CONSTRAINT enquetes_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2924 (class 2606 OID 31767)
-- Name: espacos espacos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.espacos
    ADD CONSTRAINT espacos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2925 (class 2606 OID 31772)
-- Name: estacionamentos estacionamentos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.estacionamentos
    ADD CONSTRAINT estacionamentos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2926 (class 2606 OID 31777)
-- Name: gestao gestao_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao
    ADD CONSTRAINT gestao_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2927 (class 2606 OID 31782)
-- Name: gestao gestao_designacoes_fk; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao
    ADD CONSTRAINT gestao_designacoes_fk FOREIGN KEY (designacao) REFERENCES administracao.designacoes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2928 (class 2606 OID 31787)
-- Name: piscinas piscinas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.piscinas
    ADD CONSTRAINT piscinas_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2929 (class 2606 OID 31792)
-- Name: portarias portarias_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.portarias
    ADD CONSTRAINT portarias_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2930 (class 2606 OID 31797)
-- Name: quadras quadras_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.quadras
    ADD CONSTRAINT quadras_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2931 (class 2606 OID 31802)
-- Name: reserva reserva_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.reserva
    ADD CONSTRAINT reserva_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2932 (class 2606 OID 31807)
-- Name: vagas vagas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.vagas
    ADD CONSTRAINT vagas_condominio_foreignkey FOREIGN KEY (estacionamento) REFERENCES administracao.estacionamentos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2933 (class 2606 OID 31812)
-- Name: artigos artigos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.artigos
    ADD CONSTRAINT artigos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2934 (class 2606 OID 31817)
-- Name: comunicados comunicados_condominio_foreignkey; Type: FK CONSTRAINT; Schema: cms; Owner: postgres
--

ALTER TABLE ONLY cms.comunicados
    ADD CONSTRAINT comunicados_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2935 (class 2606 OID 31822)
-- Name: pessoal_autorizacao autorizacao_pessoa_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao
    ADD CONSTRAINT autorizacao_pessoa_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2936 (class 2606 OID 31827)
-- Name: pessoal_autorizacao autorizacao_unidade_tipo_bloqueio_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao
    ADD CONSTRAINT autorizacao_unidade_tipo_bloqueio_foreignkey FOREIGN KEY (bloqueio) REFERENCES config.bloqueios_ctrl_acesso(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2937 (class 2606 OID 31832)
-- Name: autorizacao_veicular autorizacao_veicular_tipo_bloqueio_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular
    ADD CONSTRAINT autorizacao_veicular_tipo_bloqueio_fk FOREIGN KEY (bloqueio) REFERENCES config.bloqueios_ctrl_acesso(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2938 (class 2606 OID 31837)
-- Name: autorizacao_veicular autorizacao_veiculo_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular
    ADD CONSTRAINT autorizacao_veiculo_foreignkey FOREIGN KEY (veiculo) REFERENCES conveniencia.veiculos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2939 (class 2606 OID 31842)
-- Name: correspondencias correspondencias_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.correspondencias
    ADD CONSTRAINT correspondencias_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2940 (class 2606 OID 31847)
-- Name: diario diario_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario
    ADD CONSTRAINT diario_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2941 (class 2606 OID 31852)
-- Name: diario diario_unidade_tipo_diario_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario
    ADD CONSTRAINT diario_unidade_tipo_diario_foreignkey FOREIGN KEY (diario) REFERENCES conveniencia.tipo_diario(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2942 (class 2606 OID 31857)
-- Name: emails emails_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.emails
    ADD CONSTRAINT emails_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2943 (class 2606 OID 31862)
-- Name: incidentes incidentes_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.incidentes
    ADD CONSTRAINT incidentes_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2944 (class 2606 OID 31867)
-- Name: login login_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.login
    ADD CONSTRAINT login_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2945 (class 2606 OID 31983)
-- Name: pessoal_cadastro pessoal_cadastro_tipo_cadastro_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro
    ADD CONSTRAINT pessoal_cadastro_tipo_cadastro_fk FOREIGN KEY (tipo) REFERENCES config.tipo_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2946 (class 2606 OID 31877)
-- Name: pessoal_cadastro pessoas_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro
    ADD CONSTRAINT pessoas_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2950 (class 2606 OID 31882)
-- Name: pets pets_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pets
    ADD CONSTRAINT pets_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2951 (class 2606 OID 31887)
-- Name: pre_autorizacao pre_autorizacao_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao
    ADD CONSTRAINT pre_autorizacao_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2952 (class 2606 OID 31892)
-- Name: unidade registro_bloco_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.unidade
    ADD CONSTRAINT registro_bloco_foreignkey FOREIGN KEY (bloco) REFERENCES administracao.bloco(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2953 (class 2606 OID 31897)
-- Name: reservas reservas_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.reservas
    ADD CONSTRAINT reservas_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2947 (class 2606 OID 31902)
-- Name: pessoal_contato residencial_pessoa_contato_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_contato
    ADD CONSTRAINT residencial_pessoa_contato_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2948 (class 2606 OID 31907)
-- Name: pessoal_documentos residencial_pessoa_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_documentos
    ADD CONSTRAINT residencial_pessoa_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2949 (class 2606 OID 31912)
-- Name: pessoal_particularidades residencial_pessoa_particularidades_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_particularidades
    ADD CONSTRAINT residencial_pessoa_particularidades_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2954 (class 2606 OID 31917)
-- Name: solicitacoes solicitacoes_tipo_solicitacao_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes
    ADD CONSTRAINT solicitacoes_tipo_solicitacao_fk FOREIGN KEY (tipo) REFERENCES conveniencia.tipo_solicitacao(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2955 (class 2606 OID 31922)
-- Name: solicitacoes solicitacoes_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes
    ADD CONSTRAINT solicitacoes_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2956 (class 2606 OID 31988)
-- Name: veiculos veiculos_tipo_registro_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT veiculos_tipo_registro_fk FOREIGN KEY (tipo_registro) REFERENCES config.tipo_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2957 (class 2606 OID 31932)
-- Name: veiculos veiculos_tipo_veiculo_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT veiculos_tipo_veiculo_fk FOREIGN KEY (tipo_veiculo) REFERENCES conveniencia.tipo_veiculo(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2958 (class 2606 OID 31937)
-- Name: veiculos veiculos_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT veiculos_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2959 (class 2606 OID 31942)
-- Name: achados_perdidos achados_perdidos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.achados_perdidos
    ADD CONSTRAINT achados_perdidos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2960 (class 2606 OID 31947)
-- Name: atendimentos atendimentos_fornecedores_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.atendimentos
    ADD CONSTRAINT atendimentos_fornecedores_foreignkey FOREIGN KEY (fornecedor) REFERENCES operacional.fornecedores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2961 (class 2606 OID 31952)
-- Name: contratos contratos_fornecedores_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.contratos
    ADD CONSTRAINT contratos_fornecedores_foreignkey FOREIGN KEY (fornecedor) REFERENCES operacional.fornecedores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2962 (class 2606 OID 31957)
-- Name: estoque estoque_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.estoque
    ADD CONSTRAINT estoque_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2963 (class 2606 OID 31962)
-- Name: fornecedores fornecedores_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores
    ADD CONSTRAINT fornecedores_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2964 (class 2606 OID 31967)
-- Name: fornecedores fornecedores_tipo_servico_fk; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores
    ADD CONSTRAINT fornecedores_tipo_servico_fk FOREIGN KEY (tipo_servico) REFERENCES operacional.tipo_servico(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2965 (class 2606 OID 31972)
-- Name: inventario inventario_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.inventario
    ADD CONSTRAINT inventario_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2966 (class 2606 OID 31977)
-- Name: reformas reformas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.reformas
    ADD CONSTRAINT reformas_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2019-10-15 18:32:32 -03

--
-- PostgreSQL database dump complete
--

