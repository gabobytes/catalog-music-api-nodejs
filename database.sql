--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: catalog; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE catalog (
    oid smallint NOT NULL,
    artist character varying(80),
    album character varying(100),
    year character varying(4)
);


ALTER TABLE catalog OWNER TO postgres;

--
-- Name: catalog_oid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE catalog_oid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE catalog_oid_seq OWNER TO postgres;

--
-- Name: catalog_oid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE catalog_oid_seq OWNED BY catalog.oid;


--
-- Name: oid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog ALTER COLUMN oid SET DEFAULT nextval('catalog_oid_seq'::regclass);


--
-- Data for Name: catalog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY catalog (oid, artist, album, year) FROM stdin;
1	poison	look what the cat dragged in	1986
2	guns n roses	appetite for destruction	1988
3	metallica	metallica	1990
4	heroes del silencio	el espiritu del vino	1993
5	megadeth	rust in peace	1990
6	black sabbath	Technical Ecstasy	1976
7	iron maiden	powerslave	1984
8	motley crue	dr feelgood	1990
\.


--
-- Name: catalog_oid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('catalog_oid_seq', 8, true);


--
-- Name: catalog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY catalog
    ADD CONSTRAINT catalog_pkey PRIMARY KEY (oid);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

