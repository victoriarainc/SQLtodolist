--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: todos; Type: TABLE; Schema: public; Owner: victoria
--

CREATE TABLE todos (
    id integer NOT NULL,
    title character varying(100),
    details character varying(100),
    priority integer,
    created_at character varying(100),
    completed_by character varying(100)
);


ALTER TABLE todos OWNER TO victoria;

--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: public; Owner: victoria
--

CREATE SEQUENCE todos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE todos_id_seq OWNER TO victoria;

--
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: victoria
--

ALTER SEQUENCE todos_id_seq OWNED BY todos.id;


--
-- Name: todos id; Type: DEFAULT; Schema: public; Owner: victoria
--

ALTER TABLE ONLY todos ALTER COLUMN id SET DEFAULT nextval('todos_id_seq'::regclass);


--
-- Data for Name: todos; Type: TABLE DATA; Schema: public; Owner: victoria
--

COPY todos (id, title, details, priority, created_at, completed_by) FROM stdin;
3	Yard	Mow front lawn	\N	August 8th	\N
4	Dust	All hard surfaces including fans	\N	August 8th	\N
2	Groceries	All fruits and meats for the week	\N	August 8th	\N
\.


--
-- Name: todos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: victoria
--

SELECT pg_catalog.setval('todos_id_seq', 5, true);


--
-- PostgreSQL database dump complete
--

