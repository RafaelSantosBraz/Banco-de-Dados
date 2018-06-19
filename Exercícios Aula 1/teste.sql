--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 10.3

-- Started on 2018-06-19 05:28:39

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 40970)
-- Name: aluno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aluno (
    matricula character(5) NOT NULL,
    nome character varying(50),
    endereco character varying(60),
    bairro character varying(40),
    dt_nascimento date,
    sexo character(1)
);


ALTER TABLE public.aluno OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 40995)
-- Name: aluno_na_disciplina; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aluno_na_disciplina (
    matricula character(5) NOT NULL,
    cod_disciplina integer NOT NULL,
    periodo integer NOT NULL,
    nota_final real
);


ALTER TABLE public.aluno_na_disciplina OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 40975)
-- Name: curso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.curso (
    cod_curso integer NOT NULL,
    descricao character varying(50)
);


ALTER TABLE public.curso OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 40980)
-- Name: disciplina; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disciplina (
    cod_disciplina integer NOT NULL,
    descricao character varying(50),
    num_creditos integer,
    cod_curso integer,
    cod_disciplina_pre_requisito integer
);


ALTER TABLE public.disciplina OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 41010)
-- Name: grade_conceito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grade_conceito (
    conceito integer NOT NULL,
    nota_inicial real,
    nota_final real
);


ALTER TABLE public.grade_conceito OWNER TO postgres;

--
-- TOC entry 2146 (class 0 OID 40970)
-- Dependencies: 185
-- Data for Name: aluno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aluno (matricula, nome, endereco, bairro, dt_nascimento, sexo) FROM stdin;
\.


--
-- TOC entry 2149 (class 0 OID 40995)
-- Dependencies: 188
-- Data for Name: aluno_na_disciplina; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aluno_na_disciplina (matricula, cod_disciplina, periodo, nota_final) FROM stdin;
\.


--
-- TOC entry 2147 (class 0 OID 40975)
-- Dependencies: 186
-- Data for Name: curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.curso (cod_curso, descricao) FROM stdin;
\.


--
-- TOC entry 2148 (class 0 OID 40980)
-- Dependencies: 187
-- Data for Name: disciplina; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.disciplina (cod_disciplina, descricao, num_creditos, cod_curso, cod_disciplina_pre_requisito) FROM stdin;
\.


--
-- TOC entry 2150 (class 0 OID 41010)
-- Dependencies: 189
-- Data for Name: grade_conceito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grade_conceito (conceito, nota_inicial, nota_final) FROM stdin;
\.


--
-- TOC entry 2016 (class 2606 OID 40974)
-- Name: aluno pk_aluno; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT pk_aluno PRIMARY KEY (matricula);


--
-- TOC entry 2022 (class 2606 OID 40999)
-- Name: aluno_na_disciplina pk_aluno_na_disciplina; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno_na_disciplina
    ADD CONSTRAINT pk_aluno_na_disciplina PRIMARY KEY (matricula, cod_disciplina, periodo);


--
-- TOC entry 2018 (class 2606 OID 40979)
-- Name: curso pk_curso; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT pk_curso PRIMARY KEY (cod_curso);


--
-- TOC entry 2020 (class 2606 OID 40984)
-- Name: disciplina pk_disciplina; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplina
    ADD CONSTRAINT pk_disciplina PRIMARY KEY (cod_disciplina);


--
-- TOC entry 2024 (class 2606 OID 41014)
-- Name: grade_conceito pk_grade_conceito; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grade_conceito
    ADD CONSTRAINT pk_grade_conceito PRIMARY KEY (conceito);


--
-- TOC entry 2027 (class 2606 OID 41000)
-- Name: aluno_na_disciplina fk_aluno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno_na_disciplina
    ADD CONSTRAINT fk_aluno FOREIGN KEY (matricula) REFERENCES public.aluno(matricula);


--
-- TOC entry 2025 (class 2606 OID 40985)
-- Name: disciplina fk_curso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplina
    ADD CONSTRAINT fk_curso FOREIGN KEY (cod_curso) REFERENCES public.curso(cod_curso);


--
-- TOC entry 2026 (class 2606 OID 40990)
-- Name: disciplina fk_disciplina; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplina
    ADD CONSTRAINT fk_disciplina FOREIGN KEY (cod_disciplina_pre_requisito) REFERENCES public.disciplina(cod_disciplina);


--
-- TOC entry 2028 (class 2606 OID 41005)
-- Name: aluno_na_disciplina fk_disciplina; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno_na_disciplina
    ADD CONSTRAINT fk_disciplina FOREIGN KEY (cod_disciplina) REFERENCES public.disciplina(cod_disciplina);


-- Completed on 2018-06-19 05:28:40

--
-- PostgreSQL database dump complete
--

