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
    name character varying NOT NULL,
    galaxy_types character varying NOT NULL,
    age integer NOT NULL,
    has_life boolean,
    galaxy_id integer NOT NULL,
    numbers numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    age integer,
    description character varying,
    distance_from_earth character varying,
    moon_id integer NOT NULL,
    numbers numeric,
    galaxy_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    has_life boolean,
    description text,
    age integer,
    planet_id integer NOT NULL,
    numbers numeric,
    galaxy_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    has_life boolean,
    description text,
    age integer,
    star_id integer NOT NULL,
    numbers numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.system (
    name character varying NOT NULL,
    description character varying,
    system_id integer NOT NULL,
    numbers numeric
);


ALTER TABLE public.system OWNER TO freecodecamp;

--
-- Name: system_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.system_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_system_id_seq OWNER TO freecodecamp;

--
-- Name: system_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.system_system_id_seq OWNED BY public.system.system_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: system system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system ALTER COLUMN system_id SET DEFAULT nextval('public.system_system_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda galaxy', 'unknown', 5, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES ('Backward galaxy', 'unknown', 5, NULL, 2, NULL);
INSERT INTO public.galaxy VALUES ('Black Eye galaxy', 'unknown', 5, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES ('Bodes galaxy', 'unknown', 5, NULL, 4, NULL);
INSERT INTO public.galaxy VALUES ('Cartwheel galaxy', 'unknown', 5, NULL, 5, NULL);
INSERT INTO public.galaxy VALUES ('Cigar galaxy', 'unknown', 5, NULL, 6, NULL);
INSERT INTO public.galaxy VALUES ('Milky Way Galaxy', 'unknown', 5, NULL, 7, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Titan', NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Ganymede', NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Mneme', NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Valetudo', NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Ananke', NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Carme', NULL, NULL, NULL, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Isonoe', NULL, NULL, NULL, 8, NULL, NULL);
INSERT INTO public.moon VALUES ('Praxidike', NULL, NULL, NULL, 9, NULL, NULL);
INSERT INTO public.moon VALUES ('Europa', NULL, NULL, NULL, 10, NULL, NULL);
INSERT INTO public.moon VALUES ('Enceladus', NULL, NULL, NULL, 11, NULL, NULL);
INSERT INTO public.moon VALUES ('Himalia', NULL, NULL, NULL, 12, NULL, NULL);
INSERT INTO public.moon VALUES ('Pasiphae', NULL, NULL, NULL, 13, NULL, NULL);
INSERT INTO public.moon VALUES ('Themisto', NULL, NULL, NULL, 14, NULL, NULL);
INSERT INTO public.moon VALUES ('Harpalyke', NULL, NULL, NULL, 15, NULL, NULL);
INSERT INTO public.moon VALUES ('Locaste', NULL, NULL, NULL, 16, NULL, NULL);
INSERT INTO public.moon VALUES ('Euporie', NULL, NULL, NULL, 17, NULL, NULL);
INSERT INTO public.moon VALUES ('Thyone', NULL, NULL, NULL, 18, NULL, NULL);
INSERT INTO public.moon VALUES ('Taygete', NULL, NULL, NULL, 19, NULL, NULL);
INSERT INTO public.moon VALUES ('Sponde', NULL, NULL, NULL, 20, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', true, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('Mars', false, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES ('Neptun', false, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES ('Jupiter', false, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES ('Mercury', false, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES ('Uranus', false, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.planet VALUES ('Saturn', false, NULL, NULL, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Venus', false, NULL, NULL, 8, NULL, NULL);
INSERT INTO public.planet VALUES ('14 Andromedaeb', NULL, NULL, NULL, 9, NULL, NULL);
INSERT INTO public.planet VALUES ('18 Delphini b', NULL, NULL, NULL, 10, NULL, NULL);
INSERT INTO public.planet VALUES ('42 Draconis b', NULL, NULL, NULL, 11, NULL, NULL);
INSERT INTO public.planet VALUES ('51 Pegasi b', NULL, NULL, NULL, 12, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Alpheratz', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Mirach', NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.star VALUES ('Almach', NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.star VALUES ('Sun', NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.star VALUES ('Vega', NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.star VALUES ('Sirius', NULL, NULL, NULL, 6, NULL, NULL);


--
-- Data for Name: system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.system VALUES ('some data', NULL, 1, NULL);
INSERT INTO public.system VALUES ('some data', NULL, 2, NULL);
INSERT INTO public.system VALUES ('some data', NULL, 3, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: system_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.system_system_id_seq', 3, true);


--
-- Name: galaxy galaxy_numbers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_numbers_key UNIQUE (numbers);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_numbers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_numbers_key UNIQUE (numbers);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_numbers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_numbers_key UNIQUE (numbers);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_numbers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_numbers_key UNIQUE (numbers);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: system system_numbers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_numbers_key UNIQUE (numbers);


--
-- Name: system system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_pkey PRIMARY KEY (system_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

