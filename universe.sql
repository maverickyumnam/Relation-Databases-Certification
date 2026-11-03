--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(30),
    age integer NOT NULL,
    description text,
    proximity numeric(3,2),
    accessed boolean,
    habitable boolean
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
    name character varying(30),
    planet_id integer,
    age integer NOT NULL,
    description text,
    proximity numeric(3,2),
    accessed boolean
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
    name character varying(30),
    star_id integer,
    age integer NOT NULL,
    description text,
    proximity numeric(3,2),
    accessed boolean,
    habitable boolean
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    description text,
    proximity numeric(3,2),
    accessed boolean
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer,
    age integer NOT NULL,
    description text,
    proximity numeric(3,2),
    accessed boolean
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 'Our home galaxy', 0.00, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'A large spiral galaxy', 2.54, true, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10000, 'A nearby spiral galaxy', 3.00, true, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 9000, 'A spiral galaxy', 4.50, false, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 13000, 'A bright galaxy', 6.25, false, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 10000, 'A face-on spiral galaxy', 9.00, false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 4500, 'Earth natural satellite', 1.00, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 4500, 'Inner moon of Mars', 0.01, true);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 4500, 'Outer moon of Mars', 0.02, true);
INSERT INTO public.moon VALUES (4, 'Io', 5, 4500, 'Volcanically active moon of Jupiter', 1.00, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 4500, 'Icy moon of Jupiter', 2.00, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 4500, 'Largest moon in the solar system', 3.00, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 4500, 'Outer moon of Jupiter', 4.00, true);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 4500, 'Largest moon of Saturn', 1.50, true);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 4500, 'Icy moon of Saturn', 2.00, true);
INSERT INTO public.moon VALUES (10, 'Mimas', 6, 4500, 'Small inner moon of Saturn', 3.00, true);
INSERT INTO public.moon VALUES (11, 'Rhea', 6, 4500, 'Moon of Saturn', 4.00, true);
INSERT INTO public.moon VALUES (12, 'Iapetus', 6, 4500, 'Distant moon of Saturn', 5.00, true);
INSERT INTO public.moon VALUES (13, 'Titania', 7, 4500, 'Largest moon of Uranus', 1.00, true);
INSERT INTO public.moon VALUES (14, 'Oberon', 7, 4500, 'Outer moon of Uranus', 2.00, true);
INSERT INTO public.moon VALUES (15, 'Umbriel', 7, 4500, 'Dark moon of Uranus', 3.00, true);
INSERT INTO public.moon VALUES (16, 'Ariel', 7, 4500, 'Moon of Uranus', 4.00, true);
INSERT INTO public.moon VALUES (17, 'Miranda', 7, 4500, 'Small moon of Uranus', 5.00, true);
INSERT INTO public.moon VALUES (18, 'Triton', 8, 4500, 'Largest moon of Neptune', 1.00, true);
INSERT INTO public.moon VALUES (19, 'Nereid', 8, 4500, 'Distant moon of Neptune', 2.00, true);
INSERT INTO public.moon VALUES (20, 'Proteus', 8, 4500, 'Irregular moon of Neptune', 3.00, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 4500, 'Smallest planet in our solar system', 0.39, true, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 4500, 'Hot planet with a thick atmosphere', 0.72, true, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 4500, 'Our home planet', 1.00, true, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 4500, 'The red planet', 1.52, true, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 4600, 'Largest planet in our solar system', 5.20, true, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 4600, 'Planet famous for its rings', 9.58, true, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 4500, 'An ice giant planet', 8.00, false, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 4500, 'A distant ice giant', 9.90, false, false);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 3, 4000, 'An exoplanet in the habitable zone', 2.40, false, true);
INSERT INTO public.planet VALUES (10, 'Proxima b', 4, 4800, 'An exoplanet orbiting Proxima Centauri', 1.20, false, true);
INSERT INTO public.planet VALUES (11, 'Kepler-452b', 5, 6000, 'An exoplanet orbiting a distant star', 4.50, false, true);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 6, 7000, 'An exoplanet in the TRAPPIST-1 system', 3.00, false, true);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'ISS', 25, 'International Space Station orbiting Earth', 1.00, true);
INSERT INTO public.satellite VALUES (2, 'Hubble', 36, 'Space telescope observing distant galaxies', 2.50, true);
INSERT INTO public.satellite VALUES (3, 'Voyager 1', 49, 'Space probe exploring interstellar space', 9.50, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4600, 'The star at the center of our solar system', 0.00, true);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 242, 'The brightest star in the night sky', 8.60, true);
INSERT INTO public.star VALUES (3, 'Vega', 1, 455, 'A bright star in the constellation Lyra', 7.50, true);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 1, 4850, 'The closest known star to the Sun', 4.20, true);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1, 10000, 'A red supergiant star in Orion', 9.00, true);
INSERT INTO public.star VALUES (6, 'Rigel', 1, 8000, 'A bright blue supergiant in Orion', 6.80, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

