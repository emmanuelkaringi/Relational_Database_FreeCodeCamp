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
    name character varying(60) NOT NULL,
    description text,
    galaxy_type character varying(60),
    age_in_years integer,
    random_fact character varying(60)
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
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    size_in_km numeric,
    planet_id integer,
    random_fact character varying(60)
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
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    is_size_in_km integer,
    random_fact character varying(60),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.planet_moon OWNER TO freecodecamp;

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
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    distance_from_earth_km integer,
    galaxy_id integer NOT NULL,
    random_fact character varying(60)
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Latin name Lactea', 'Sagittarius', 50000000, 'Houses Earth and Sun');
INSERT INTO public.galaxy VALUES (2, 'Needle Galaxy', 'Has narrow profile', 'Coma Berenices', 50000000, 'First recorded in 1785');
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 'Werty', 'Adromeda', 2500000, 'asdfg');
INSERT INTO public.galaxy VALUES (4, 'Antennae Galaxies', 'Wertyui', 'Corvus', 5000000, 'asdfgh');
INSERT INTO public.galaxy VALUES (5, 'Backward Galaxy', 'Wertyuiop', 'Centaurus', 9000000, 'asdfghj');
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 'Wertyuas', 'Coma Berenices', 23000000, 'asdfghjk');
INSERT INTO public.galaxy VALUES (7, 'Bode Galaxy', 'Wertyuafg', 'Ursa Major', 53000000, 'asdfghjkl');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Supports life', 20000, 3, 'qwe');
INSERT INTO public.moon VALUES (4, 'Phobos', 'wer', 30000, 5, 'qwer');
INSERT INTO public.moon VALUES (5, 'Deimos', 'wert', 40000, 5, 'qwert');
INSERT INTO public.moon VALUES (7, 'Ganymede', 'wert', 50000, 6, 'qwerty');
INSERT INTO public.moon VALUES (8, 'Europa', 'werty', 50000, 6, 'qwertyu');
INSERT INTO public.moon VALUES (9, 'Lo', 'wertyu', 60000, 6, 'qwertyui');
INSERT INTO public.moon VALUES (10, 'Enceladus', 'zxc', 60000, 7, 'asd');
INSERT INTO public.moon VALUES (11, 'Titan', 'zxcv', 70000, 7, 'asdf');
INSERT INTO public.moon VALUES (12, 'Miranda', 'zxcvb', 80000, 7, 'asdfg');
INSERT INTO public.moon VALUES (13, 'Triton', 'zxcvbn', 60000, 9, 'asfgh');
INSERT INTO public.moon VALUES (14, 'Charon', 'zxcvbnm', 70000, 10, 'asdfghj');
INSERT INTO public.moon VALUES (15, 'Dysnomia', 'zxcvbnmm', 80000, 8, 'asdfhjg');
INSERT INTO public.moon VALUES (16, 'Hiiaka', 'sdf', 78000, 13, 'qwy');
INSERT INTO public.moon VALUES (17, 'Namaka', 'dfr', 45000, 13, 'ryt');
INSERT INTO public.moon VALUES (18, 'Amalthea', 'werf', 23000, 6, 'asvd');
INSERT INTO public.moon VALUES (19, 'Dione', 'sfg', 48000, 7, 'qfg');
INSERT INTO public.moon VALUES (20, 'Iapetus', 'dfrf', 455000, 7, 'ryrt');
INSERT INTO public.moon VALUES (21, 'Pan', 'werfd', 2435000, 8, 'asvdn');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, true, 20000, 'Qwerty', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, true, 10000, 'Qwertyu', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 40000, 'Qwertyui', 1);
INSERT INTO public.planet VALUES (5, 'Mars', false, true, 70000, 'Qwertyuio', 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, true, 170000, 'Qwertyuiop', 1);
INSERT INTO public.planet VALUES (7, 'Satan', false, true, 600000, 'asdfg', 1);
INSERT INTO public.planet VALUES (8, 'Uranus', false, true, 700000, 'asdfgh', 1);
INSERT INTO public.planet VALUES (9, 'Neptune', false, true, 800000, 'asdfghj', 1);
INSERT INTO public.planet VALUES (10, 'Pluto', false, true, 900000, 'asdfghjk', 1);
INSERT INTO public.planet VALUES (11, 'Ceres', false, true, 600000, 'asdfghjkl', 2);
INSERT INTO public.planet VALUES (12, 'Orcus', false, true, 120000, 'zxc', 3);
INSERT INTO public.planet VALUES (13, 'Haumea', false, true, 130000, 'zxcv', 4);
INSERT INTO public.planet VALUES (14, 'Quaoar', false, true, 230000, 'zxcvb', 5);


--
-- Data for Name: planet_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'Qwerty', 8600000, 1, 'Werty');
INSERT INTO public.star VALUES (2, 'Conopus', 'Qwertyu', 74000000, 2, 'Wertyu');
INSERT INTO public.star VALUES (3, 'Rigel Kentarus', 'Qwertyui', 4300000, 3, 'Wertyui');
INSERT INTO public.star VALUES (4, 'Arcturus', 'Qwertyuio', 54300000, 4, 'Wertyuio');
INSERT INTO public.star VALUES (5, 'Vega', 'Qwertyuiop', 74300000, 5, 'Wertyuiop');
INSERT INTO public.star VALUES (6, 'Capela', 'asdfg', 84300000, 6, 'sdfg');
INSERT INTO public.star VALUES (7, 'Rigel', 'asdfgh', 56300000, 7, 'sdfgh');
INSERT INTO public.star VALUES (8, 'Procyon', 'asdfghj', 56000000, 1, 'sdfghj');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_random_fact_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_random_fact_key UNIQUE (random_fact);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_random_fact_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_random_fact_key UNIQUE (random_fact);


--
-- Name: planet_moon planet_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_moon
    ADD CONSTRAINT planet_moon_pkey PRIMARY KEY (planet_id, moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_random_fact_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_random_fact_key UNIQUE (random_fact);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_random_fact_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_random_fact_key UNIQUE (random_fact);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet_moon planet_moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_moon
    ADD CONSTRAINT planet_moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet_moon planet_moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_moon
    ADD CONSTRAINT planet_moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

