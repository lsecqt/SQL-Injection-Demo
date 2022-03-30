--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-03-30 22:04:29

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
-- TOC entry 3324 (class 1262 OID 16394)
-- Name: sqlidb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE sqlidb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE sqlidb OWNER TO postgres;

\connect sqlidb

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
-- TOC entry 5 (class 2615 OID 16395)
-- Name: sqlischema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sqlischema;


ALTER SCHEMA sqlischema OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16427)
-- Name: products_id_seq; Type: SEQUENCE; Schema: sqlischema; Owner: postgres
--

CREATE SEQUENCE sqlischema.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sqlischema.products_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 212 (class 1259 OID 16420)
-- Name: Products; Type: TABLE; Schema: sqlischema; Owner: postgres
--

CREATE TABLE sqlischema."Products" (
    id bigint DEFAULT nextval('sqlischema.products_id_seq'::regclass) NOT NULL,
    name character varying NOT NULL,
    cost double precision NOT NULL,
    "userId" bigint
);


ALTER TABLE sqlischema."Products" OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16418)
-- Name: users_id_seq; Type: SEQUENCE; Schema: sqlischema; Owner: postgres
--

CREATE SEQUENCE sqlischema.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sqlischema.users_id_seq OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16408)
-- Name: Users; Type: TABLE; Schema: sqlischema; Owner: postgres
--

CREATE TABLE sqlischema."Users" (
    id bigint DEFAULT nextval('sqlischema.users_id_seq'::regclass) NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL
);


ALTER TABLE sqlischema."Users" OWNER TO postgres;

--
-- TOC entry 3317 (class 0 OID 16420)
-- Dependencies: 212
-- Data for Name: Products; Type: TABLE DATA; Schema: sqlischema; Owner: postgres
--

INSERT INTO sqlischema."Products" (id, name, cost, "userId") VALUES (1, 'vape', 25.2, 1);
INSERT INTO sqlischema."Products" (id, name, cost, "userId") VALUES (2, 'keyboard', 20.1, 1);
INSERT INTO sqlischema."Products" (id, name, cost, "userId") VALUES (3, 'monitor', 140.5, 1);


--
-- TOC entry 3315 (class 0 OID 16408)
-- Dependencies: 210
-- Data for Name: Users; Type: TABLE DATA; Schema: sqlischema; Owner: postgres
--

INSERT INTO sqlischema."Users" (id, username, password) VALUES (1, 'admin', 'admin');


--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 213
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: sqlischema; Owner: postgres
--

SELECT pg_catalog.setval('sqlischema.products_id_seq', 1, false);


--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 211
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: sqlischema; Owner: postgres
--

SELECT pg_catalog.setval('sqlischema.users_id_seq', 1, false);


--
-- TOC entry 3175 (class 2606 OID 16426)
-- Name: Products Products_pkey; Type: CONSTRAINT; Schema: sqlischema; Owner: postgres
--

ALTER TABLE ONLY sqlischema."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY (id);


--
-- TOC entry 3173 (class 2606 OID 16414)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: sqlischema; Owner: postgres
--

ALTER TABLE ONLY sqlischema."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


-- Completed on 2022-03-30 22:04:29

--
-- PostgreSQL database dump complete
--

