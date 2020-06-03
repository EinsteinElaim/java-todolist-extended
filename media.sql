--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Ubuntu 12.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.3 (Ubuntu 12.3-1.pgdg20.04+1)

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

SET default_table_access_method = heap;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: einstein
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.categories OWNER TO einstein;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: einstein
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO einstein;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: einstein
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: tasks; Type: TABLE; Schema: public; Owner: einstein
--

CREATE TABLE public.tasks (
    id integer NOT NULL,
    description character varying,
    completed boolean,
    categoryid integer
);


ALTER TABLE public.tasks OWNER TO einstein;

--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: einstein
--

CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasks_id_seq OWNER TO einstein;

--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: einstein
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: einstein
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: einstein
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: einstein
--

COPY public.categories (id, name) FROM stdin;
1	school stuff
\.


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: einstein
--

COPY public.tasks (id, description, completed, categoryid) FROM stdin;
1	got to school	\N	1
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: einstein
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, true);


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: einstein
--

SELECT pg_catalog.setval('public.tasks_id_seq', 1, true);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: einstein
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: einstein
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

