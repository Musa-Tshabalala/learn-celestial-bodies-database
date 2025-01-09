--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size character varying(10),
    has_human boolean,
    has_animals boolean
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    type character varying(60),
    age_in_million_years integer,
    distance_from_earth_in_million_lightyears numeric(6,2)
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
    name character varying(40) NOT NULL,
    closest_planet character varying(40) NOT NULL,
    distance_from_earth numeric(6,2),
    size character varying(40)
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
    name character varying(40) NOT NULL,
    closest_star character varying(40) NOT NULL,
    description text,
    distance_from_earth_in_million_km numeric(6,2),
    is_sphere boolean,
    has_life boolean
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
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy character varying(40) NOT NULL,
    age_in_million_years integer,
    distance_from_earth_in_million_lightyears numeric(6,2)
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'Africa', 'Medium', true, true);
INSERT INTO public.continent VALUES (2, 'Asia', 'Large', true, true);
INSERT INTO public.continent VALUES (3, 'Europe', 'Medium', true, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 13600, 0.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10000, 2.54);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 12000, 3.00);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 10000, 23.00);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Lenticular', 13000, 31.00);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Dwarf Irregular', 10000, 9999.99);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon (Luna)', 'Earth', 0.38, 'Medium');
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars', 54.60, 'Small');
INSERT INTO public.moon VALUES (3, 'Io', 'Jupiter', 628.30, 'Medium');
INSERT INTO public.moon VALUES (4, 'Deimos', 'Mars', 54.60, 'Small');
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter', 628.30, 'Medium');
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter', 628.30, 'Large');
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter', 628.30, 'Large');
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn', 1200.00, 'Large');
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Saturn', 1200.00, 'Small');
INSERT INTO public.moon VALUES (10, 'Rhea', 'Saturn', 1200.00, 'Medium');
INSERT INTO public.moon VALUES (11, 'Triton', 'Neptune', 4300.00, 'Medium');
INSERT INTO public.moon VALUES (12, 'Nereid', 'Neptune', 4300.00, 'Small');
INSERT INTO public.moon VALUES (13, 'Oberon', 'Uranus', 2600.00, 'Medium');
INSERT INTO public.moon VALUES (14, 'Titania', 'Uranus', 2600.00, 'Medium');
INSERT INTO public.moon VALUES (15, 'Miranda', 'Uranus', 2600.00, 'Small');
INSERT INTO public.moon VALUES (16, 'Charon', 'Pluto', 5900.00, 'Small');
INSERT INTO public.moon VALUES (17, 'Styx', 'Pluto', 5900.00, 'Small');
INSERT INTO public.moon VALUES (18, 'Nix', 'Pluto', 5900.00, 'Small');
INSERT INTO public.moon VALUES (19, 'Hydra', 'Pluto', 5900.00, 'Small');
INSERT INTO public.moon VALUES (20, 'Proxima b Moon', 'Proxima b', 9999.99, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 'Sun', 'Abundant with land water and life', 0.00, true, true);
INSERT INTO public.planet VALUES (5, 'Mercury', 'Sun', 'Smallest planet, with extreme temperatures', 77.30, true, false);
INSERT INTO public.planet VALUES (4, 'Venus', 'Sun', 'Has thick toxic atmosphere', 41.00, true, false);
INSERT INTO public.planet VALUES (6, 'Mars', 'Sun', 'Known as the Red Planet', 54.60, true, false);
INSERT INTO public.planet VALUES (7, 'Jupiter', 'Sun', 'Largest planet, famous for its Great Red Spot', 588.00, true, false);
INSERT INTO public.planet VALUES (8, 'Saturn', 'Sun', 'Known for its prominent ring system', 1200.00, true, false);
INSERT INTO public.planet VALUES (9, 'Uranus', 'Sun', 'Icy giant with a unique sideways rotation', 2600.00, true, false);
INSERT INTO public.planet VALUES (10, 'Neptune', 'Sun', 'Farthest planet known for its deep blue color', 4300.00, true, false);
INSERT INTO public.planet VALUES (11, 'Pluto', 'Sun', 'A dwarf planet in the Kuiper Belt, cold and icy', 5900.00, true, false);
INSERT INTO public.planet VALUES (12, 'Proxima b', 'Proxima Centauri', 'Exoplanet orbiting the closest star to the Sun', 9999.99, true, NULL);
INSERT INTO public.planet VALUES (13, 'Kepler 452b', 'Kepler-452', 'A "super-Earth" located in the habitable zone of its star', 9999.99, true, NULL);
INSERT INTO public.planet VALUES (14, 'Gliese 581g', 'Gliese 581', 'Potentially habitable exoplanet in the Gliese system', 9999.99, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Sun', 'Milky Way', 4600, 0.00);
INSERT INTO public.star VALUES (8, 'Proxima Centauri', 'Milky Way', 4850, 424.00);
INSERT INTO public.star VALUES (9, 'Kepler-452', 'Milky Way', 6000, 1400.00);
INSERT INTO public.star VALUES (10, 'Gliese 581', 'Milky Way', 7000, 20.40);
INSERT INTO public.star VALUES (11, 'Betelgeuse', 'Milky Way', 10, 642.50);
INSERT INTO public.star VALUES (12, 'R136a1', 'Large Magellanic Cloud', 1, 9999.99);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


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
-- Name: moon moon_closest_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_closest_planet_fkey FOREIGN KEY (closest_planet) REFERENCES public.planet(name);


--
-- Name: planet planet_closest_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_closest_star_fkey FOREIGN KEY (closest_star) REFERENCES public.star(name);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy) REFERENCES public.galaxy(name);


--
-- PostgreSQL database dump complete
--

