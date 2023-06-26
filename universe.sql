--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_millions integer,
    lucky_number integer,
    pie_interpretation numeric,
    w_iscurrent boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    age_in_millions integer,
    lucky_number integer,
    pie_interpretation numeric,
    w_iscurrent boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    age_in_millions integer,
    lucky_number integer,
    pie_interpretation numeric,
    w_iscurrent boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_millions integer,
    lucky_number integer,
    pie_interpretation numeric,
    w_iscurrent boolean,
    poem text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_dust; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_dust (
    star_dust_id integer NOT NULL,
    description text,
    luck_number integer,
    name character varying NOT NULL
);


ALTER TABLE public.star_dust OWNER TO freecodecamp;

--
-- Name: star_dust_dust_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_dust_dust_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_dust_dust_id_seq OWNER TO freecodecamp;

--
-- Name: star_dust_dust_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_dust_dust_id_seq OWNED BY public.star_dust.star_dust_id;


--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star_dust star_dust_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_dust ALTER COLUMN star_dust_id SET DEFAULT nextval('public.star_dust_dust_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Glop', NULL, NULL, NULL, true);
INSERT INTO public.galaxy VALUES (2, 'hans', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'jan', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'jane', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'kane', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Kane', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Lane', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (21, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (22, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (13, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Glup', NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.star VALUES (2, '2', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (3, '3', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (4, '4', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (5, '5', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (6, '6', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (7, '7', NULL, NULL, NULL, NULL, NULL, 7);


--
-- Data for Name: star_dust; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_dust VALUES (1, NULL, NULL, 'Hans');
INSERT INTO public.star_dust VALUES (2, NULL, NULL, 'Hans');
INSERT INTO public.star_dust VALUES (3, NULL, NULL, 'Hans');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_dust_dust_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_dust_dust_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star_dust star_dust_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_dust
    ADD CONSTRAINT star_dust_pkey PRIMARY KEY (star_dust_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy u_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT u_constraint UNIQUE (galaxy_id);


--
-- Name: moon u_constraint_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT u_constraint_moon UNIQUE (moon_id);


--
-- Name: planet u_constraint_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT u_constraint_planet UNIQUE (planet_id);


--
-- Name: star u_constraint_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT u_constraint_star UNIQUE (star_id);


--
-- Name: star_dust u_constraint_star_dust; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_dust
    ADD CONSTRAINT u_constraint_star_dust UNIQUE (star_dust_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

