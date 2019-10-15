--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 11.5

-- Started on 2019-10-15 19:09:48 -03

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

DROP DATABASE vlimage;
--
-- TOC entry 2441 (class 1262 OID 29268)
-- Name: vlimage; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE vlimage WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';


ALTER DATABASE vlimage OWNER TO postgres;

\connect vlimage

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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 31994)
-- Name: pessoal_avatar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pessoal_avatar (
    id bigint NOT NULL,
    avatar character varying NOT NULL
);


ALTER TABLE public.pessoal_avatar OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 32002)
-- Name: pessoal_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pessoal_profile (
    id bigint NOT NULL,
    profile character varying NOT NULL
);


ALTER TABLE public.pessoal_profile OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 32010)
-- Name: veiculo_avatar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.veiculo_avatar (
    id bigint NOT NULL,
    avatar character varying NOT NULL
);


ALTER TABLE public.veiculo_avatar OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 32018)
-- Name: veiculo_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.veiculo_profile (
    id bigint NOT NULL,
    profile character varying NOT NULL
);


ALTER TABLE public.veiculo_profile OWNER TO postgres;

--
-- TOC entry 2432 (class 0 OID 31994)
-- Dependencies: 196
-- Data for Name: pessoal_avatar; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2433 (class 0 OID 32002)
-- Dependencies: 197
-- Data for Name: pessoal_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2434 (class 0 OID 32010)
-- Dependencies: 198
-- Data for Name: veiculo_avatar; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2435 (class 0 OID 32018)
-- Dependencies: 199
-- Data for Name: veiculo_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2304 (class 2606 OID 32001)
-- Name: pessoal_avatar pessoal_avatar_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoal_avatar
    ADD CONSTRAINT pessoal_avatar_pk PRIMARY KEY (id);


--
-- TOC entry 2306 (class 2606 OID 32009)
-- Name: pessoal_profile pessoal_profile_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoal_profile
    ADD CONSTRAINT pessoal_profile_pk PRIMARY KEY (id);


--
-- TOC entry 2308 (class 2606 OID 32017)
-- Name: veiculo_avatar veiculo_avatar_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veiculo_avatar
    ADD CONSTRAINT veiculo_avatar_pk PRIMARY KEY (id);


--
-- TOC entry 2310 (class 2606 OID 32025)
-- Name: veiculo_profile veiculo_profile_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veiculo_profile
    ADD CONSTRAINT veiculo_profile_pk PRIMARY KEY (id);


-- Completed on 2019-10-15 19:09:48 -03

--
-- PostgreSQL database dump complete
--

