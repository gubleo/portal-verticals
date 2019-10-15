--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 11.5

-- Started on 2019-10-15 16:53:24 -03

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
-- TOC entry 7 (class 2615 OID 28319)
-- Name: administracao; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA administracao;


ALTER SCHEMA administracao OWNER TO postgres;

--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA administracao; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA administracao IS 'tabelas de gestão do condomínio';


--
-- TOC entry 12 (class 2615 OID 28320)
-- Name: conveniencia; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA conveniencia;


ALTER SCHEMA conveniencia OWNER TO postgres;

--
-- TOC entry 6 (class 2615 OID 29266)
-- Name: financeiro; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA financeiro;


ALTER SCHEMA financeiro OWNER TO postgres;

--
-- TOC entry 11 (class 2615 OID 29131)
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
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- TOC entry 781 (class 1247 OID 28407)
-- Name: email; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.email AS public.citext
	CONSTRAINT email_check CHECK ((VALUE OPERATOR(public.~) '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$'::public.citext));


ALTER DOMAIN public.email OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 28409)
-- Name: academias; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.academias (
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


ALTER TABLE administracao.academias OWNER TO postgres;

--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 201
-- Name: TABLE academias; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.academias IS 'Cadastro de informações pertinentes do funcionamento das academias do condomínio';


--
-- TOC entry 202 (class 1259 OID 28416)
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
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 202
-- Name: academias_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.academias_id_seq OWNED BY administracao.academias.id;


--
-- TOC entry 203 (class 1259 OID 28418)
-- Name: bloco; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.bloco (
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


ALTER TABLE administracao.bloco OWNER TO postgres;

--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE bloco; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.bloco IS 'Informações a respeito dos blocos do condomínio';


--
-- TOC entry 204 (class 1259 OID 28425)
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
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 204
-- Name: blocos_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.blocos_id_seq OWNED BY administracao.bloco.id;


--
-- TOC entry 205 (class 1259 OID 28427)
-- Name: churrasqueiras; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.churrasqueiras (
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


ALTER TABLE administracao.churrasqueiras OWNER TO postgres;

--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE churrasqueiras; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.churrasqueiras IS 'Informações de gestão das churrasqueiras';


--
-- TOC entry 206 (class 1259 OID 28434)
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
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 206
-- Name: churrasqueiras_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.churrasqueiras_id_seq OWNED BY administracao.churrasqueiras.id;


--
-- TOC entry 207 (class 1259 OID 28436)
-- Name: condominio; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.condominio (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.condominio OWNER TO postgres;

--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE condominio; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.condominio IS 'informações detalhadas do condomínio que serão utilizados em todos os módulos do sistema Verticals';


--
-- TOC entry 208 (class 1259 OID 28443)
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
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 208
-- Name: condominio_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.condominio_id_seq OWNED BY administracao.condominio.id;


--
-- TOC entry 209 (class 1259 OID 28445)
-- Name: designacoes; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.designacoes (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE administracao.designacoes OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 28452)
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
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 210
-- Name: designacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.designacoes_id_seq OWNED BY administracao.designacoes.id;


--
-- TOC entry 211 (class 1259 OID 28454)
-- Name: elevadores; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.elevadores (
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


ALTER TABLE administracao.elevadores OWNER TO postgres;

--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE elevadores; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.elevadores IS 'Informações de gestão das elevadores';


--
-- TOC entry 212 (class 1259 OID 28461)
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
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 212
-- Name: elevadores_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.elevadores_id_seq OWNED BY administracao.elevadores.id;


--
-- TOC entry 213 (class 1259 OID 28463)
-- Name: espacos; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.espacos (
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


ALTER TABLE administracao.espacos OWNER TO postgres;

--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE espacos; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.espacos IS 'Detalhes dos salões e suas atividades';


--
-- TOC entry 214 (class 1259 OID 28470)
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
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 214
-- Name: espacos_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.espacos_id_seq OWNED BY administracao.espacos.id;


--
-- TOC entry 215 (class 1259 OID 28472)
-- Name: estacionamentos; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.estacionamentos (
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


ALTER TABLE administracao.estacionamentos OWNER TO postgres;

--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE estacionamentos; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.estacionamentos IS 'Informações de gestão das estacionamentos';


--
-- TOC entry 216 (class 1259 OID 28479)
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
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 216
-- Name: estacionamentos_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.estacionamentos_id_seq OWNED BY administracao.estacionamentos.id;


--
-- TOC entry 217 (class 1259 OID 28481)
-- Name: gestao; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.gestao (
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


ALTER TABLE administracao.gestao OWNER TO postgres;

--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE gestao; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.gestao IS 'Registra os tipos de cargos ou designações existentes no condominio';


--
-- TOC entry 218 (class 1259 OID 28490)
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
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 218
-- Name: gestao_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.gestao_id_seq OWNED BY administracao.gestao.id;


--
-- TOC entry 219 (class 1259 OID 28492)
-- Name: piscinas; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.piscinas (
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


ALTER TABLE administracao.piscinas OWNER TO postgres;

--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE piscinas; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.piscinas IS 'Gestão das piscinas';


--
-- TOC entry 220 (class 1259 OID 28499)
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
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 220
-- Name: piscinas_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.piscinas_id_seq OWNED BY administracao.piscinas.id;


--
-- TOC entry 221 (class 1259 OID 28501)
-- Name: portarias; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.portarias (
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


ALTER TABLE administracao.portarias OWNER TO postgres;

--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE portarias; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.portarias IS 'Informações de gestão das portarias';


--
-- TOC entry 222 (class 1259 OID 28508)
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
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 222
-- Name: portarias_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.portarias_id_seq OWNED BY administracao.portarias.id;


--
-- TOC entry 265 (class 1259 OID 29055)
-- Name: quadras; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.quadras (
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


ALTER TABLE administracao.quadras OWNER TO postgres;

--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 265
-- Name: TABLE quadras; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.quadras IS 'Informações de gestão das quadras';


--
-- TOC entry 264 (class 1259 OID 29053)
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
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 264
-- Name: quadras_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.quadras_id_seq OWNED BY administracao.quadras.id;


--
-- TOC entry 223 (class 1259 OID 28510)
-- Name: vagas; Type: TABLE; Schema: administracao; Owner: postgres
--

CREATE TABLE administracao.vagas (
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


ALTER TABLE administracao.vagas OWNER TO postgres;

--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE vagas; Type: COMMENT; Schema: administracao; Owner: postgres
--

COMMENT ON TABLE administracao.vagas IS 'Controle de vagas dos estacionamentos';


--
-- TOC entry 224 (class 1259 OID 28517)
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
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 224
-- Name: vagas_id_seq; Type: SEQUENCE OWNED BY; Schema: administracao; Owner: postgres
--

ALTER SEQUENCE administracao.vagas_id_seq OWNED BY administracao.vagas.id;


--
-- TOC entry 250 (class 1259 OID 28892)
-- Name: pessoal_autorizacao; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pessoal_autorizacao (
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


ALTER TABLE conveniencia.pessoal_autorizacao OWNER TO postgres;

--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 250
-- Name: TABLE pessoal_autorizacao; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_autorizacao IS 'Registro de autorização do controle de acesso';


--
-- TOC entry 249 (class 1259 OID 28890)
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
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 249
-- Name: autorizacao_pessoal_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.autorizacao_pessoal_id_seq OWNED BY conveniencia.pessoal_autorizacao.id;


--
-- TOC entry 248 (class 1259 OID 28869)
-- Name: autorizacao_veicular; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.autorizacao_veicular (
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


ALTER TABLE conveniencia.autorizacao_veicular OWNER TO postgres;

--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 248
-- Name: TABLE autorizacao_veicular; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.autorizacao_veicular IS 'Registro de autorização do controle de acesso';


--
-- TOC entry 247 (class 1259 OID 28867)
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
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 247
-- Name: autorizacao_veicular_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.autorizacao_veicular_id_seq OWNED BY conveniencia.autorizacao_veicular.id;


--
-- TOC entry 240 (class 1259 OID 28735)
-- Name: correspondencias; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.correspondencias (
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


ALTER TABLE conveniencia.correspondencias OWNER TO postgres;

--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 240
-- Name: TABLE correspondencias; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.correspondencias IS 'Tabela de controle das correspondências do condomínio';


--
-- TOC entry 239 (class 1259 OID 28733)
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
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 239
-- Name: correspondencias_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.correspondencias_id_seq OWNED BY conveniencia.correspondencias.id;


--
-- TOC entry 242 (class 1259 OID 28752)
-- Name: diario; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.diario (
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


ALTER TABLE conveniencia.diario OWNER TO postgres;

--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 242
-- Name: TABLE diario; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.diario IS 'Registra os tipos de eventos que ocorrem na unidade, ex: mudança de entrada, reformas etc.';


--
-- TOC entry 241 (class 1259 OID 28750)
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
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 241
-- Name: diario_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.diario_id_seq OWNED BY conveniencia.diario.id;


--
-- TOC entry 225 (class 1259 OID 28519)
-- Name: emails; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.emails (
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


ALTER TABLE conveniencia.emails OWNER TO postgres;

--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE emails; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.emails IS 'Endereços e tipos de entrega de informação aos condôminos';


--
-- TOC entry 226 (class 1259 OID 28533)
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
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 226
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.emails_id_seq OWNED BY conveniencia.emails.id;


--
-- TOC entry 260 (class 1259 OID 29016)
-- Name: incidentes; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.incidentes (
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


ALTER TABLE conveniencia.incidentes OWNER TO postgres;

--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 260
-- Name: TABLE incidentes; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.incidentes IS 'Registra multas, notificações e ocorrências da unidade';


--
-- TOC entry 259 (class 1259 OID 29014)
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
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 259
-- Name: incidentes_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.incidentes_id_seq OWNED BY conveniencia.incidentes.id;


--
-- TOC entry 258 (class 1259 OID 28998)
-- Name: login; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.login (
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


ALTER TABLE conveniencia.login OWNER TO postgres;

--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 258
-- Name: TABLE login; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.login IS 'Usuário do condômino';


--
-- TOC entry 257 (class 1259 OID 28996)
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
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 257
-- Name: login_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.login_id_seq OWNED BY conveniencia.login.id;


--
-- TOC entry 227 (class 1259 OID 28535)
-- Name: pessoal_cadastro; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pessoal_cadastro (
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


ALTER TABLE conveniencia.pessoal_cadastro OWNER TO postgres;

--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE pessoal_cadastro; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_cadastro IS 'Registro geral de pessoas no condomínio';


--
-- TOC entry 269 (class 1259 OID 29099)
-- Name: pessoal_contato; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pessoal_contato (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
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
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE pessoal_contato; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_contato IS 'Registra os dados de contato da pessoa';


--
-- TOC entry 268 (class 1259 OID 29097)
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
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 268
-- Name: pessoal_contato_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoal_contato_id_seq OWNED BY conveniencia.pessoal_contato.id;


--
-- TOC entry 267 (class 1259 OID 29072)
-- Name: pessoal_documentos; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pessoal_documentos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
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
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE pessoal_documentos; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_documentos IS 'Registra um documento específico da pessoa';


--
-- TOC entry 266 (class 1259 OID 29070)
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
-- TOC entry 3065 (class 0 OID 0)
-- Dependencies: 266
-- Name: pessoal_documentos_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoal_documentos_id_seq OWNED BY conveniencia.pessoal_documentos.id;


--
-- TOC entry 271 (class 1259 OID 29116)
-- Name: pessoal_particularidades; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pessoal_particularidades (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
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
-- TOC entry 3066 (class 0 OID 0)
-- Dependencies: 271
-- Name: TABLE pessoal_particularidades; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pessoal_particularidades IS 'Registra as particularidades da pessoa';


--
-- TOC entry 270 (class 1259 OID 29114)
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
-- TOC entry 3067 (class 0 OID 0)
-- Dependencies: 270
-- Name: pessoal_particularidades_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoal_particularidades_id_seq OWNED BY conveniencia.pessoal_particularidades.id;


--
-- TOC entry 228 (class 1259 OID 28539)
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
-- TOC entry 3068 (class 0 OID 0)
-- Dependencies: 228
-- Name: pessoas_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pessoas_id_seq OWNED BY conveniencia.pessoal_cadastro.id;


--
-- TOC entry 229 (class 1259 OID 28541)
-- Name: pets; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pets (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    unidade integer NOT NULL
);


ALTER TABLE conveniencia.pets OWNER TO postgres;

--
-- TOC entry 3069 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE pets; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pets IS 'Registro geral de pets da unidade';


--
-- TOC entry 230 (class 1259 OID 28545)
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
-- TOC entry 3070 (class 0 OID 0)
-- Dependencies: 230
-- Name: pets_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pets_id_seq OWNED BY conveniencia.pets.id;


--
-- TOC entry 263 (class 1259 OID 29035)
-- Name: pre_autorizacao; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.pre_autorizacao (
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


ALTER TABLE conveniencia.pre_autorizacao OWNER TO postgres;

--
-- TOC entry 3071 (class 0 OID 0)
-- Dependencies: 263
-- Name: TABLE pre_autorizacao; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.pre_autorizacao IS 'Efetua a pré-autorização de visitantes, parentes próximos e prestadores de serviço';


--
-- TOC entry 261 (class 1259 OID 29031)
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
-- TOC entry 3072 (class 0 OID 0)
-- Dependencies: 261
-- Name: pre_autorizacao_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pre_autorizacao_id_seq OWNED BY conveniencia.pre_autorizacao.id;


--
-- TOC entry 262 (class 1259 OID 29033)
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
-- TOC entry 3073 (class 0 OID 0)
-- Dependencies: 262
-- Name: pre_autorizacao_pessoa_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.pre_autorizacao_pessoa_seq OWNED BY conveniencia.pre_autorizacao.pessoa;


--
-- TOC entry 231 (class 1259 OID 28547)
-- Name: unidade; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.unidade (
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


ALTER TABLE conveniencia.unidade OWNER TO postgres;

--
-- TOC entry 3074 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE unidade; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.unidade IS 'Informações gerais da unidade';


--
-- TOC entry 232 (class 1259 OID 28554)
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
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 232
-- Name: registro_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.registro_id_seq OWNED BY conveniencia.unidade.id;


--
-- TOC entry 256 (class 1259 OID 28976)
-- Name: reservas; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.reservas (
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


ALTER TABLE conveniencia.reservas OWNER TO postgres;

--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 256
-- Name: TABLE reservas; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.reservas IS 'Registro de reserva de espaços';


--
-- TOC entry 255 (class 1259 OID 28974)
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
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 255
-- Name: reservas_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.reservas_id_seq OWNED BY conveniencia.reservas.id;


--
-- TOC entry 252 (class 1259 OID 28933)
-- Name: solicitacoes; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.solicitacoes (
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


ALTER TABLE conveniencia.solicitacoes OWNER TO postgres;

--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 252
-- Name: TABLE solicitacoes; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.solicitacoes IS 'Registro de solicitações dos condôminos';


--
-- TOC entry 251 (class 1259 OID 28931)
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
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 251
-- Name: solicitacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.solicitacoes_id_seq OWNED BY conveniencia.solicitacoes.id;


--
-- TOC entry 246 (class 1259 OID 28818)
-- Name: tipo_bloqueio; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.tipo_bloqueio (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE conveniencia.tipo_bloqueio OWNER TO postgres;

--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 246
-- Name: TABLE tipo_bloqueio; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.tipo_bloqueio IS 'Informa os tipos de bloqueios utilizados nas operações de controle de acesso';


--
-- TOC entry 245 (class 1259 OID 28816)
-- Name: tipo_bloqueio_id_seq; Type: SEQUENCE; Schema: conveniencia; Owner: postgres
--

CREATE SEQUENCE conveniencia.tipo_bloqueio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conveniencia.tipo_bloqueio_id_seq OWNER TO postgres;

--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 245
-- Name: tipo_bloqueio_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_bloqueio_id_seq OWNED BY conveniencia.tipo_bloqueio.id;


--
-- TOC entry 244 (class 1259 OID 28769)
-- Name: tipo_diario; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.tipo_diario (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE conveniencia.tipo_diario OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 28767)
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
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 243
-- Name: tipo_diario_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_diario_id_seq OWNED BY conveniencia.tipo_diario.id;


--
-- TOC entry 233 (class 1259 OID 28556)
-- Name: tipo_registro; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.tipo_registro (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE conveniencia.tipo_registro OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 28563)
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
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 234
-- Name: tipo_registro_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_registro_id_seq OWNED BY conveniencia.tipo_registro.id;


--
-- TOC entry 254 (class 1259 OID 28950)
-- Name: tipo_solicitacao; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.tipo_solicitacao (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE conveniencia.tipo_solicitacao OWNER TO postgres;

--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 254
-- Name: TABLE tipo_solicitacao; Type: COMMENT; Schema: conveniencia; Owner: postgres
--

COMMENT ON TABLE conveniencia.tipo_solicitacao IS 'Informa os tipos de solicitacaos utilizados na abertura do pedido efetuado pelo condômino';


--
-- TOC entry 253 (class 1259 OID 28948)
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
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 253
-- Name: tipo_solicitacao_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_solicitacao_id_seq OWNED BY conveniencia.tipo_solicitacao.id;


--
-- TOC entry 235 (class 1259 OID 28565)
-- Name: tipo_veiculo; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.tipo_veiculo (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE conveniencia.tipo_veiculo OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 28572)
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
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 236
-- Name: tipo_veiculo_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.tipo_veiculo_id_seq OWNED BY conveniencia.tipo_veiculo.id;


--
-- TOC entry 237 (class 1259 OID 28574)
-- Name: veiculos; Type: TABLE; Schema: conveniencia; Owner: postgres
--

CREATE TABLE conveniencia.veiculos (
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


ALTER TABLE conveniencia.veiculos OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 28578)
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
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 238
-- Name: veiculos_id_seq; Type: SEQUENCE OWNED BY; Schema: conveniencia; Owner: postgres
--

ALTER SEQUENCE conveniencia.veiculos_id_seq OWNED BY conveniencia.veiculos.id;


--
-- TOC entry 279 (class 1259 OID 29185)
-- Name: atendimentos; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.atendimentos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    fornecedor integer NOT NULL,
    contrato integer
);


ALTER TABLE operacional.atendimentos OWNER TO postgres;

--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE atendimentos; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.atendimentos IS 'Acompanha os atendimentos com os prestadores de serviços do condomínio';


--
-- TOC entry 278 (class 1259 OID 29183)
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
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 278
-- Name: atendimentos_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.atendimentos_id_seq OWNED BY operacional.atendimentos.id;


--
-- TOC entry 275 (class 1259 OID 29151)
-- Name: contratos; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.contratos (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
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
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 275
-- Name: TABLE contratos; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.contratos IS 'Acompanha os contratos com os prestadores de serviços do condomínio';


--
-- TOC entry 274 (class 1259 OID 29149)
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
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 274
-- Name: contratos_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.contratos_id_seq OWNED BY operacional.contratos.id;


--
-- TOC entry 287 (class 1259 OID 29251)
-- Name: estoque; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.estoque (
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


ALTER TABLE operacional.estoque OWNER TO postgres;

--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 287
-- Name: TABLE estoque; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.estoque IS 'Registro de materiais em estoque';


--
-- TOC entry 286 (class 1259 OID 29249)
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
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 286
-- Name: estoque_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.estoque_id_seq OWNED BY operacional.estoque.id;


--
-- TOC entry 273 (class 1259 OID 29134)
-- Name: fornecedores; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.fornecedores (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
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
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 273
-- Name: TABLE fornecedores; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.fornecedores IS 'Cadastro de pessoas e empresas prestadoras de serviço do condomínio';


--
-- TOC entry 272 (class 1259 OID 29132)
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
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 272
-- Name: fornecedores_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.fornecedores_id_seq OWNED BY operacional.fornecedores.id;


--
-- TOC entry 283 (class 1259 OID 29212)
-- Name: funcionarios; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.funcionarios (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    condominio integer NOT NULL,
    nome character varying(500) NOT NULL,
    cargo integer NOT NULL
);


ALTER TABLE operacional.funcionarios OWNER TO postgres;

--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 283
-- Name: TABLE funcionarios; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.funcionarios IS 'Cadastro de funcionários do condomínio';


--
-- TOC entry 282 (class 1259 OID 29210)
-- Name: funcionarios_id_seq; Type: SEQUENCE; Schema: operacional; Owner: postgres
--

CREATE SEQUENCE operacional.funcionarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operacional.funcionarios_id_seq OWNER TO postgres;

--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 282
-- Name: funcionarios_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.funcionarios_id_seq OWNED BY operacional.funcionarios.id;


--
-- TOC entry 285 (class 1259 OID 29234)
-- Name: inventario; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.inventario (
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


ALTER TABLE operacional.inventario OWNER TO postgres;

--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 285
-- Name: TABLE inventario; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.inventario IS 'Registro de bens proprietários do condomínio';


--
-- TOC entry 284 (class 1259 OID 29232)
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
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 284
-- Name: inventario_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.inventario_id_seq OWNED BY operacional.inventario.id;


--
-- TOC entry 281 (class 1259 OID 29199)
-- Name: tipo_cargo; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.tipo_cargo (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE operacional.tipo_cargo OWNER TO postgres;

--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 281
-- Name: TABLE tipo_cargo; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.tipo_cargo IS 'Registra os cargos dos funcionários do condomínio';


--
-- TOC entry 280 (class 1259 OID 29197)
-- Name: tipo_cargo_id_seq; Type: SEQUENCE; Schema: operacional; Owner: postgres
--

CREATE SEQUENCE operacional.tipo_cargo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operacional.tipo_cargo_id_seq OWNER TO postgres;

--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 280
-- Name: tipo_cargo_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.tipo_cargo_id_seq OWNED BY operacional.tipo_cargo.id;


--
-- TOC entry 277 (class 1259 OID 29168)
-- Name: tipo_servico; Type: TABLE; Schema: operacional; Owner: postgres
--

CREATE TABLE operacional.tipo_servico (
    id integer NOT NULL,
    firstdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lastdate timestamp without time zone NOT NULL,
    purgedate timestamp without time zone NOT NULL,
    firstuser character varying(15) NOT NULL,
    lasttuser character varying(15) NOT NULL,
    purgeuser character varying(15) NOT NULL,
    nome character varying(500) NOT NULL
);


ALTER TABLE operacional.tipo_servico OWNER TO postgres;

--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 277
-- Name: TABLE tipo_servico; Type: COMMENT; Schema: operacional; Owner: postgres
--

COMMENT ON TABLE operacional.tipo_servico IS 'registra os tipos de atividades dos pretadores de serviços ao condomínio';


--
-- TOC entry 276 (class 1259 OID 29166)
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
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 276
-- Name: tipo_servico_id_seq; Type: SEQUENCE OWNED BY; Schema: operacional; Owner: postgres
--

ALTER SEQUENCE operacional.tipo_servico_id_seq OWNED BY operacional.tipo_servico.id;


--
-- TOC entry 2666 (class 2604 OID 28580)
-- Name: academias id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.academias ALTER COLUMN id SET DEFAULT nextval('administracao.academias_id_seq'::regclass);


--
-- TOC entry 2668 (class 2604 OID 28581)
-- Name: bloco id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.bloco ALTER COLUMN id SET DEFAULT nextval('administracao.blocos_id_seq'::regclass);


--
-- TOC entry 2670 (class 2604 OID 28582)
-- Name: churrasqueiras id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.churrasqueiras ALTER COLUMN id SET DEFAULT nextval('administracao.churrasqueiras_id_seq'::regclass);


--
-- TOC entry 2672 (class 2604 OID 28583)
-- Name: condominio id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.condominio ALTER COLUMN id SET DEFAULT nextval('administracao.condominio_id_seq'::regclass);


--
-- TOC entry 2674 (class 2604 OID 28584)
-- Name: designacoes id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.designacoes ALTER COLUMN id SET DEFAULT nextval('administracao.designacoes_id_seq'::regclass);


--
-- TOC entry 2676 (class 2604 OID 28585)
-- Name: elevadores id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.elevadores ALTER COLUMN id SET DEFAULT nextval('administracao.elevadores_id_seq'::regclass);


--
-- TOC entry 2678 (class 2604 OID 28586)
-- Name: espacos id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.espacos ALTER COLUMN id SET DEFAULT nextval('administracao.espacos_id_seq'::regclass);


--
-- TOC entry 2680 (class 2604 OID 28587)
-- Name: estacionamentos id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.estacionamentos ALTER COLUMN id SET DEFAULT nextval('administracao.estacionamentos_id_seq'::regclass);


--
-- TOC entry 2684 (class 2604 OID 28588)
-- Name: gestao id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao ALTER COLUMN id SET DEFAULT nextval('administracao.gestao_id_seq'::regclass);


--
-- TOC entry 2686 (class 2604 OID 28589)
-- Name: piscinas id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.piscinas ALTER COLUMN id SET DEFAULT nextval('administracao.piscinas_id_seq'::regclass);


--
-- TOC entry 2688 (class 2604 OID 28590)
-- Name: portarias id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.portarias ALTER COLUMN id SET DEFAULT nextval('administracao.portarias_id_seq'::regclass);


--
-- TOC entry 2740 (class 2604 OID 29058)
-- Name: quadras id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.quadras ALTER COLUMN id SET DEFAULT nextval('administracao.quadras_id_seq'::regclass);


--
-- TOC entry 2690 (class 2604 OID 28591)
-- Name: vagas id; Type: DEFAULT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.vagas ALTER COLUMN id SET DEFAULT nextval('administracao.vagas_id_seq'::regclass);


--
-- TOC entry 2721 (class 2604 OID 28872)
-- Name: autorizacao_veicular id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular ALTER COLUMN id SET DEFAULT nextval('conveniencia.autorizacao_veicular_id_seq'::regclass);


--
-- TOC entry 2713 (class 2604 OID 28738)
-- Name: correspondencias id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.correspondencias ALTER COLUMN id SET DEFAULT nextval('conveniencia.correspondencias_id_seq'::regclass);


--
-- TOC entry 2715 (class 2604 OID 28755)
-- Name: diario id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario ALTER COLUMN id SET DEFAULT nextval('conveniencia.diario_id_seq'::regclass);


--
-- TOC entry 2700 (class 2604 OID 28592)
-- Name: emails id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.emails ALTER COLUMN id SET DEFAULT nextval('conveniencia.emails_id_seq'::regclass);


--
-- TOC entry 2735 (class 2604 OID 29019)
-- Name: incidentes id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.incidentes ALTER COLUMN id SET DEFAULT nextval('conveniencia.incidentes_id_seq'::regclass);


--
-- TOC entry 2733 (class 2604 OID 29001)
-- Name: login id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.login ALTER COLUMN id SET DEFAULT nextval('conveniencia.login_id_seq'::regclass);


--
-- TOC entry 2724 (class 2604 OID 28895)
-- Name: pessoal_autorizacao id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao ALTER COLUMN id SET DEFAULT nextval('conveniencia.autorizacao_pessoal_id_seq'::regclass);


--
-- TOC entry 2702 (class 2604 OID 28593)
-- Name: pessoal_cadastro id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoas_id_seq'::regclass);


--
-- TOC entry 2744 (class 2604 OID 29102)
-- Name: pessoal_contato id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_contato ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoal_contato_id_seq'::regclass);


--
-- TOC entry 2742 (class 2604 OID 29075)
-- Name: pessoal_documentos id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_documentos ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoal_documentos_id_seq'::regclass);


--
-- TOC entry 2746 (class 2604 OID 29119)
-- Name: pessoal_particularidades id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_particularidades ALTER COLUMN id SET DEFAULT nextval('conveniencia.pessoal_particularidades_id_seq'::regclass);


--
-- TOC entry 2704 (class 2604 OID 28594)
-- Name: pets id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pets ALTER COLUMN id SET DEFAULT nextval('conveniencia.pets_id_seq'::regclass);


--
-- TOC entry 2737 (class 2604 OID 29038)
-- Name: pre_autorizacao id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao ALTER COLUMN id SET DEFAULT nextval('conveniencia.pre_autorizacao_id_seq'::regclass);


--
-- TOC entry 2739 (class 2604 OID 29040)
-- Name: pre_autorizacao pessoa; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao ALTER COLUMN pessoa SET DEFAULT nextval('conveniencia.pre_autorizacao_pessoa_seq'::regclass);


--
-- TOC entry 2731 (class 2604 OID 28979)
-- Name: reservas id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.reservas ALTER COLUMN id SET DEFAULT nextval('conveniencia.reservas_id_seq'::regclass);


--
-- TOC entry 2727 (class 2604 OID 28936)
-- Name: solicitacoes id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes ALTER COLUMN id SET DEFAULT nextval('conveniencia.solicitacoes_id_seq'::regclass);


--
-- TOC entry 2719 (class 2604 OID 28821)
-- Name: tipo_bloqueio id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_bloqueio ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_bloqueio_id_seq'::regclass);


--
-- TOC entry 2717 (class 2604 OID 28772)
-- Name: tipo_diario id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_diario ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_diario_id_seq'::regclass);


--
-- TOC entry 2708 (class 2604 OID 28596)
-- Name: tipo_registro id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_registro ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_registro_id_seq'::regclass);


--
-- TOC entry 2729 (class 2604 OID 28953)
-- Name: tipo_solicitacao id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_solicitacao ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_solicitacao_id_seq'::regclass);


--
-- TOC entry 2710 (class 2604 OID 28597)
-- Name: tipo_veiculo id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_veiculo ALTER COLUMN id SET DEFAULT nextval('conveniencia.tipo_veiculo_id_seq'::regclass);


--
-- TOC entry 2706 (class 2604 OID 28595)
-- Name: unidade id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.unidade ALTER COLUMN id SET DEFAULT nextval('conveniencia.registro_id_seq'::regclass);


--
-- TOC entry 2712 (class 2604 OID 28598)
-- Name: veiculos id; Type: DEFAULT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos ALTER COLUMN id SET DEFAULT nextval('conveniencia.veiculos_id_seq'::regclass);


--
-- TOC entry 2754 (class 2604 OID 29188)
-- Name: atendimentos id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.atendimentos ALTER COLUMN id SET DEFAULT nextval('operacional.atendimentos_id_seq'::regclass);


--
-- TOC entry 2750 (class 2604 OID 29154)
-- Name: contratos id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.contratos ALTER COLUMN id SET DEFAULT nextval('operacional.contratos_id_seq'::regclass);


--
-- TOC entry 2762 (class 2604 OID 29254)
-- Name: estoque id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.estoque ALTER COLUMN id SET DEFAULT nextval('operacional.estoque_id_seq'::regclass);


--
-- TOC entry 2748 (class 2604 OID 29137)
-- Name: fornecedores id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores ALTER COLUMN id SET DEFAULT nextval('operacional.fornecedores_id_seq'::regclass);


--
-- TOC entry 2758 (class 2604 OID 29215)
-- Name: funcionarios id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.funcionarios ALTER COLUMN id SET DEFAULT nextval('operacional.funcionarios_id_seq'::regclass);


--
-- TOC entry 2760 (class 2604 OID 29237)
-- Name: inventario id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.inventario ALTER COLUMN id SET DEFAULT nextval('operacional.inventario_id_seq'::regclass);


--
-- TOC entry 2756 (class 2604 OID 29202)
-- Name: tipo_cargo id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.tipo_cargo ALTER COLUMN id SET DEFAULT nextval('operacional.tipo_cargo_id_seq'::regclass);


--
-- TOC entry 2752 (class 2604 OID 29171)
-- Name: tipo_servico id; Type: DEFAULT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.tipo_servico ALTER COLUMN id SET DEFAULT nextval('operacional.tipo_servico_id_seq'::regclass);


--
-- TOC entry 2765 (class 2606 OID 28600)
-- Name: academias primarykey_adm_academias; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.academias
    ADD CONSTRAINT primarykey_adm_academias PRIMARY KEY (id);


--
-- TOC entry 2767 (class 2606 OID 28602)
-- Name: bloco primarykey_adm_blocos; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.bloco
    ADD CONSTRAINT primarykey_adm_blocos PRIMARY KEY (id);


--
-- TOC entry 2769 (class 2606 OID 28604)
-- Name: churrasqueiras primarykey_adm_churrasqueiras; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.churrasqueiras
    ADD CONSTRAINT primarykey_adm_churrasqueiras PRIMARY KEY (id);


--
-- TOC entry 2771 (class 2606 OID 28606)
-- Name: condominio primarykey_adm_condominio; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.condominio
    ADD CONSTRAINT primarykey_adm_condominio PRIMARY KEY (id);


--
-- TOC entry 2773 (class 2606 OID 28608)
-- Name: designacoes primarykey_adm_designacoes; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.designacoes
    ADD CONSTRAINT primarykey_adm_designacoes PRIMARY KEY (id);


--
-- TOC entry 2775 (class 2606 OID 28610)
-- Name: elevadores primarykey_adm_elevadores; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.elevadores
    ADD CONSTRAINT primarykey_adm_elevadores PRIMARY KEY (id);


--
-- TOC entry 2777 (class 2606 OID 28612)
-- Name: espacos primarykey_adm_espacos; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.espacos
    ADD CONSTRAINT primarykey_adm_espacos PRIMARY KEY (id);


--
-- TOC entry 2779 (class 2606 OID 28614)
-- Name: estacionamentos primarykey_adm_estacionamentos; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.estacionamentos
    ADD CONSTRAINT primarykey_adm_estacionamentos PRIMARY KEY (id);


--
-- TOC entry 2781 (class 2606 OID 28616)
-- Name: gestao primarykey_adm_gestao; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao
    ADD CONSTRAINT primarykey_adm_gestao PRIMARY KEY (id);


--
-- TOC entry 2783 (class 2606 OID 28618)
-- Name: piscinas primarykey_adm_piscinas; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.piscinas
    ADD CONSTRAINT primarykey_adm_piscinas PRIMARY KEY (id);


--
-- TOC entry 2785 (class 2606 OID 28620)
-- Name: portarias primarykey_adm_portarias; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.portarias
    ADD CONSTRAINT primarykey_adm_portarias PRIMARY KEY (id);


--
-- TOC entry 2827 (class 2606 OID 29064)
-- Name: quadras primarykey_adm_quadras; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.quadras
    ADD CONSTRAINT primarykey_adm_quadras PRIMARY KEY (id);


--
-- TOC entry 2787 (class 2606 OID 28622)
-- Name: vagas primarykey_adm_vagas; Type: CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.vagas
    ADD CONSTRAINT primarykey_adm_vagas PRIMARY KEY (id);


--
-- TOC entry 2831 (class 2606 OID 29108)
-- Name: pessoal_contato primarykey_residencial_pessoal_contato; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_contato
    ADD CONSTRAINT primarykey_residencial_pessoal_contato PRIMARY KEY (id);


--
-- TOC entry 2829 (class 2606 OID 29081)
-- Name: pessoal_documentos primarykey_residencial_pessoal_documentacao; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_documentos
    ADD CONSTRAINT primarykey_residencial_pessoal_documentacao PRIMARY KEY (id);


--
-- TOC entry 2833 (class 2606 OID 29125)
-- Name: pessoal_particularidades primarykey_residencial_pessoal_particularidades; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_particularidades
    ADD CONSTRAINT primarykey_residencial_pessoal_particularidades PRIMARY KEY (id);


--
-- TOC entry 2813 (class 2606 OID 28902)
-- Name: pessoal_autorizacao primarykey_unidade_autorizacao_pessoal; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao
    ADD CONSTRAINT primarykey_unidade_autorizacao_pessoal PRIMARY KEY (id);


--
-- TOC entry 2811 (class 2606 OID 28879)
-- Name: autorizacao_veicular primarykey_unidade_autorizacao_veicular; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular
    ADD CONSTRAINT primarykey_unidade_autorizacao_veicular PRIMARY KEY (id);


--
-- TOC entry 2803 (class 2606 OID 28744)
-- Name: correspondencias primarykey_unidade_correspondencias; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.correspondencias
    ADD CONSTRAINT primarykey_unidade_correspondencias PRIMARY KEY (id);


--
-- TOC entry 2805 (class 2606 OID 28761)
-- Name: diario primarykey_unidade_diario; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario
    ADD CONSTRAINT primarykey_unidade_diario PRIMARY KEY (id);


--
-- TOC entry 2789 (class 2606 OID 28624)
-- Name: emails primarykey_unidade_emails; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.emails
    ADD CONSTRAINT primarykey_unidade_emails PRIMARY KEY (id);


--
-- TOC entry 2823 (class 2606 OID 29025)
-- Name: incidentes primarykey_unidade_incidentes; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.incidentes
    ADD CONSTRAINT primarykey_unidade_incidentes PRIMARY KEY (id);


--
-- TOC entry 2821 (class 2606 OID 29007)
-- Name: login primarykey_unidade_login; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.login
    ADD CONSTRAINT primarykey_unidade_login PRIMARY KEY (id);


--
-- TOC entry 2791 (class 2606 OID 28626)
-- Name: pessoal_cadastro primarykey_unidade_pessoas; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro
    ADD CONSTRAINT primarykey_unidade_pessoas PRIMARY KEY (id);


--
-- TOC entry 2793 (class 2606 OID 28628)
-- Name: pets primarykey_unidade_pets; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pets
    ADD CONSTRAINT primarykey_unidade_pets PRIMARY KEY (id);


--
-- TOC entry 2825 (class 2606 OID 29042)
-- Name: pre_autorizacao primarykey_unidade_pre_autorizacao; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao
    ADD CONSTRAINT primarykey_unidade_pre_autorizacao PRIMARY KEY (id);


--
-- TOC entry 2795 (class 2606 OID 28630)
-- Name: unidade primarykey_unidade_registro; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.unidade
    ADD CONSTRAINT primarykey_unidade_registro PRIMARY KEY (id);


--
-- TOC entry 2819 (class 2606 OID 28982)
-- Name: reservas primarykey_unidade_reservas; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.reservas
    ADD CONSTRAINT primarykey_unidade_reservas PRIMARY KEY (id);


--
-- TOC entry 2815 (class 2606 OID 28942)
-- Name: solicitacoes primarykey_unidade_solicitacoes; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes
    ADD CONSTRAINT primarykey_unidade_solicitacoes PRIMARY KEY (id);


--
-- TOC entry 2809 (class 2606 OID 28827)
-- Name: tipo_bloqueio primarykey_unidade_tipo_bloqueio; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_bloqueio
    ADD CONSTRAINT primarykey_unidade_tipo_bloqueio PRIMARY KEY (id);


--
-- TOC entry 2807 (class 2606 OID 28778)
-- Name: tipo_diario primarykey_unidade_tipo_diario; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_diario
    ADD CONSTRAINT primarykey_unidade_tipo_diario PRIMARY KEY (id);


--
-- TOC entry 2797 (class 2606 OID 28632)
-- Name: tipo_registro primarykey_unidade_tipo_registro; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_registro
    ADD CONSTRAINT primarykey_unidade_tipo_registro PRIMARY KEY (id);


--
-- TOC entry 2817 (class 2606 OID 28959)
-- Name: tipo_solicitacao primarykey_unidade_tipo_solicitacao; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_solicitacao
    ADD CONSTRAINT primarykey_unidade_tipo_solicitacao PRIMARY KEY (id);


--
-- TOC entry 2799 (class 2606 OID 28634)
-- Name: tipo_veiculo primarykey_unidade_tipo_veiculo; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.tipo_veiculo
    ADD CONSTRAINT primarykey_unidade_tipo_veiculo PRIMARY KEY (id);


--
-- TOC entry 2801 (class 2606 OID 28636)
-- Name: veiculos primarykey_unidade_veiculos; Type: CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT primarykey_unidade_veiculos PRIMARY KEY (id);


--
-- TOC entry 2841 (class 2606 OID 29191)
-- Name: atendimentos primarykey_adm_atendimentos; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.atendimentos
    ADD CONSTRAINT primarykey_adm_atendimentos PRIMARY KEY (id);


--
-- TOC entry 2837 (class 2606 OID 29160)
-- Name: contratos primarykey_adm_contratos; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.contratos
    ADD CONSTRAINT primarykey_adm_contratos PRIMARY KEY (id);


--
-- TOC entry 2835 (class 2606 OID 29143)
-- Name: fornecedores primarykey_adm_fornecedores; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores
    ADD CONSTRAINT primarykey_adm_fornecedores PRIMARY KEY (id);


--
-- TOC entry 2845 (class 2606 OID 29221)
-- Name: funcionarios primarykey_adm_funcionarios; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.funcionarios
    ADD CONSTRAINT primarykey_adm_funcionarios PRIMARY KEY (id);


--
-- TOC entry 2849 (class 2606 OID 29260)
-- Name: estoque primarykey_operacional_estoque; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.estoque
    ADD CONSTRAINT primarykey_operacional_estoque PRIMARY KEY (id);


--
-- TOC entry 2847 (class 2606 OID 29243)
-- Name: inventario primarykey_operacional_inventario; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.inventario
    ADD CONSTRAINT primarykey_operacional_inventario PRIMARY KEY (id);


--
-- TOC entry 2843 (class 2606 OID 29208)
-- Name: tipo_cargo primarykey_operacional_tipo_cargo; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.tipo_cargo
    ADD CONSTRAINT primarykey_operacional_tipo_cargo PRIMARY KEY (id);


--
-- TOC entry 2839 (class 2606 OID 29177)
-- Name: tipo_servico primarykey_unidade_tipo_servico; Type: CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.tipo_servico
    ADD CONSTRAINT primarykey_unidade_tipo_servico PRIMARY KEY (id);


--
-- TOC entry 2850 (class 2606 OID 28637)
-- Name: academias academias_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.academias
    ADD CONSTRAINT academias_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2851 (class 2606 OID 28642)
-- Name: bloco blocos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.bloco
    ADD CONSTRAINT blocos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2852 (class 2606 OID 28647)
-- Name: churrasqueiras churrasqueiras_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.churrasqueiras
    ADD CONSTRAINT churrasqueiras_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2853 (class 2606 OID 28652)
-- Name: elevadores elevadores_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.elevadores
    ADD CONSTRAINT elevadores_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2854 (class 2606 OID 28657)
-- Name: espacos espacos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.espacos
    ADD CONSTRAINT espacos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2855 (class 2606 OID 28662)
-- Name: estacionamentos estacionamentos_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.estacionamentos
    ADD CONSTRAINT estacionamentos_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2856 (class 2606 OID 28667)
-- Name: gestao gestao_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao
    ADD CONSTRAINT gestao_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2857 (class 2606 OID 28672)
-- Name: gestao gestao_designacoes_fk; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.gestao
    ADD CONSTRAINT gestao_designacoes_fk FOREIGN KEY (designacao) REFERENCES administracao.designacoes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2858 (class 2606 OID 28677)
-- Name: piscinas piscinas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.piscinas
    ADD CONSTRAINT piscinas_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2859 (class 2606 OID 28682)
-- Name: portarias portarias_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.portarias
    ADD CONSTRAINT portarias_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2882 (class 2606 OID 29065)
-- Name: quadras quadras_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.quadras
    ADD CONSTRAINT quadras_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2860 (class 2606 OID 28687)
-- Name: vagas vagas_condominio_foreignkey; Type: FK CONSTRAINT; Schema: administracao; Owner: postgres
--

ALTER TABLE ONLY administracao.vagas
    ADD CONSTRAINT vagas_condominio_foreignkey FOREIGN KEY (estacionamento) REFERENCES administracao.estacionamentos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2874 (class 2606 OID 28903)
-- Name: pessoal_autorizacao autorizacao_pessoa_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao
    ADD CONSTRAINT autorizacao_pessoa_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2873 (class 2606 OID 28885)
-- Name: autorizacao_veicular autorizacao_unidade_tipo_bloqueio_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular
    ADD CONSTRAINT autorizacao_unidade_tipo_bloqueio_foreignkey FOREIGN KEY (bloqueio) REFERENCES conveniencia.tipo_bloqueio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2875 (class 2606 OID 28908)
-- Name: pessoal_autorizacao autorizacao_unidade_tipo_bloqueio_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_autorizacao
    ADD CONSTRAINT autorizacao_unidade_tipo_bloqueio_foreignkey FOREIGN KEY (bloqueio) REFERENCES conveniencia.tipo_bloqueio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2872 (class 2606 OID 28880)
-- Name: autorizacao_veicular autorizacao_veiculo_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.autorizacao_veicular
    ADD CONSTRAINT autorizacao_veiculo_foreignkey FOREIGN KEY (veiculo) REFERENCES conveniencia.veiculos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2869 (class 2606 OID 28745)
-- Name: correspondencias correspondencias_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.correspondencias
    ADD CONSTRAINT correspondencias_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2870 (class 2606 OID 28762)
-- Name: diario diario_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario
    ADD CONSTRAINT diario_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2871 (class 2606 OID 28779)
-- Name: diario diario_unidade_tipo_diario_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.diario
    ADD CONSTRAINT diario_unidade_tipo_diario_foreignkey FOREIGN KEY (diario) REFERENCES conveniencia.tipo_diario(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2861 (class 2606 OID 28692)
-- Name: emails emails_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.emails
    ADD CONSTRAINT emails_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2880 (class 2606 OID 29026)
-- Name: incidentes incidentes_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.incidentes
    ADD CONSTRAINT incidentes_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2879 (class 2606 OID 29008)
-- Name: login login_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.login
    ADD CONSTRAINT login_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2862 (class 2606 OID 28697)
-- Name: pessoal_cadastro pessoas_tipo_registro_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro
    ADD CONSTRAINT pessoas_tipo_registro_foreignkey FOREIGN KEY (tipo) REFERENCES conveniencia.tipo_registro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2863 (class 2606 OID 28702)
-- Name: pessoal_cadastro pessoas_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_cadastro
    ADD CONSTRAINT pessoas_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2864 (class 2606 OID 28707)
-- Name: pets pets_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pets
    ADD CONSTRAINT pets_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2881 (class 2606 OID 29043)
-- Name: pre_autorizacao pre_autorizacao_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pre_autorizacao
    ADD CONSTRAINT pre_autorizacao_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2865 (class 2606 OID 28712)
-- Name: unidade registro_bloco_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.unidade
    ADD CONSTRAINT registro_bloco_foreignkey FOREIGN KEY (bloco) REFERENCES administracao.bloco(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2878 (class 2606 OID 28983)
-- Name: reservas reservas_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.reservas
    ADD CONSTRAINT reservas_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2884 (class 2606 OID 29109)
-- Name: pessoal_contato residencial_pessoa_contato_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_contato
    ADD CONSTRAINT residencial_pessoa_contato_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2883 (class 2606 OID 29082)
-- Name: pessoal_documentos residencial_pessoa_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_documentos
    ADD CONSTRAINT residencial_pessoa_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2885 (class 2606 OID 29126)
-- Name: pessoal_particularidades residencial_pessoa_particularidades_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.pessoal_particularidades
    ADD CONSTRAINT residencial_pessoa_particularidades_foreignkey FOREIGN KEY (usuario) REFERENCES conveniencia.pessoal_cadastro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2877 (class 2606 OID 29048)
-- Name: solicitacoes solicitacoes_tipo_solicitacao_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes
    ADD CONSTRAINT solicitacoes_tipo_solicitacao_fk FOREIGN KEY (tipo) REFERENCES conveniencia.tipo_solicitacao(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2876 (class 2606 OID 28943)
-- Name: solicitacoes solicitacoes_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.solicitacoes
    ADD CONSTRAINT solicitacoes_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2866 (class 2606 OID 28717)
-- Name: veiculos veiculos_tipo_registro_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT veiculos_tipo_registro_fk FOREIGN KEY (tipo_registro) REFERENCES conveniencia.tipo_registro(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2867 (class 2606 OID 28722)
-- Name: veiculos veiculos_tipo_veiculo_fk; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT veiculos_tipo_veiculo_fk FOREIGN KEY (tipo_veiculo) REFERENCES conveniencia.tipo_veiculo(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2868 (class 2606 OID 28727)
-- Name: veiculos veiculos_unidade_foreignkey; Type: FK CONSTRAINT; Schema: conveniencia; Owner: postgres
--

ALTER TABLE ONLY conveniencia.veiculos
    ADD CONSTRAINT veiculos_unidade_foreignkey FOREIGN KEY (unidade) REFERENCES conveniencia.unidade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2889 (class 2606 OID 29192)
-- Name: atendimentos atendimentos_fornecedores_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.atendimentos
    ADD CONSTRAINT atendimentos_fornecedores_foreignkey FOREIGN KEY (fornecedor) REFERENCES operacional.fornecedores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2888 (class 2606 OID 29161)
-- Name: contratos contratos_fornecedores_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.contratos
    ADD CONSTRAINT contratos_fornecedores_foreignkey FOREIGN KEY (fornecedor) REFERENCES operacional.fornecedores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2893 (class 2606 OID 29261)
-- Name: estoque estoque_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.estoque
    ADD CONSTRAINT estoque_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2886 (class 2606 OID 29144)
-- Name: fornecedores fornecedores_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores
    ADD CONSTRAINT fornecedores_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2887 (class 2606 OID 29178)
-- Name: fornecedores fornecedores_tipo_servico_fk; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.fornecedores
    ADD CONSTRAINT fornecedores_tipo_servico_fk FOREIGN KEY (tipo_servico) REFERENCES operacional.tipo_servico(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2890 (class 2606 OID 29222)
-- Name: funcionarios funcionarios_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.funcionarios
    ADD CONSTRAINT funcionarios_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2891 (class 2606 OID 29227)
-- Name: funcionarios funcionarios_tipo_scargo_fk; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.funcionarios
    ADD CONSTRAINT funcionarios_tipo_scargo_fk FOREIGN KEY (cargo) REFERENCES operacional.tipo_cargo(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2892 (class 2606 OID 29244)
-- Name: inventario inventario_condominio_foreignkey; Type: FK CONSTRAINT; Schema: operacional; Owner: postgres
--

ALTER TABLE ONLY operacional.inventario
    ADD CONSTRAINT inventario_condominio_foreignkey FOREIGN KEY (condominio) REFERENCES administracao.condominio(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2019-10-15 16:53:25 -03

--
-- PostgreSQL database dump complete
--

