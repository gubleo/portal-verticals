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

DROP DATABASE vlaccess;
--
-- TOC entry 2409 (class 1262 OID 29267)
-- Name: vlaccess; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE vlaccess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';


ALTER DATABASE vlaccess OWNER TO postgres;

\connect vlaccess

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

-- Completed on 2019-10-15 19:09:48 -03

--
-- PostgreSQL database dump complete
--

