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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(128) NOT NULL,
    has_life boolean,
    description text,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: 
freecodecamp
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
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY 
public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(128),
    has_life boolean NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: 
freecodecamp
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
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: 
freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(128) NOT NULL,
    has_life boolean,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: 
freecodecamp
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
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY 
public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(128) NOT NULL,
    has_life boolean NOT NULL,
    description text,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: 
freecodecamp
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
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: 
freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: tmp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tmp (
    tmp_id integer NOT NULL,
    name character varying(128) NOT NULL,
    remark text NOT NULL
);


ALTER TABLE public.tmp OWNER TO freecodecamp;

--
-- Name: tmp_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.tmp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tmp_id_seq OWNER TO freecodecamp;

--
-- Name: tmp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: 
freecodecamp
--

ALTER SEQUENCE public.tmp_id_seq OWNED BY public.tmp.tmp_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT 
nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT 
nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT 
nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT 
nextval('public.star_star_id_seq'::regclass);


--
-- Name: tmp tmp_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tmp ALTER COLUMN tmp_id SET DEFAULT 
nextval('public.tmp_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: 
freecodecamp
--

COPY public.galaxy (galaxy_id, name, has_life, description, is_spherical) 
FROM stdin;
1	XY_Selestrial91	t	random text	f
2	XY_Selestrial56	t	random text	f
3	XY_Selestrial87	t	random text	f
4	XY_Selestrial7	t	random text	f
5	XY_Selestrial72	t	random text	f
6	XY_Selestrial35	t	random text	f
7	XY_Selestrial3	t	random text	f
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: 
freecodecamp
--

COPY public.moon (moon_id, name, has_life, description, is_spherical, 
distance_from_earth, planet_id) FROM stdin;
1	MOON_Selestrial45	t	random text	f	4708	1
2	MOON_Selestrial98	t	random text	f	5129	2
3	MOON_Selestrial43	t	random text	f	877	3
4	MOON_Selestrial11	t	random text	f	7290	4
5	MOON_Selestrial29	t	random text	f	950	5
6	MOON_Selestrial94	t	random text	f	7754	5
7	MOON_Selestrial70	t	random text	f	6640	5
9	MOON_Selestrial5	t	random text	f	1568	7
10	MOON_Selestrial46	t	random text	f	710	7
11	MOON_Selestrial8	t	random text	f	4162	7
12	MOON_Selestrial61	t	random text	f	1420	8
13	MOON_Selestrial24	t	random text	f	1092	9
14	MOON_Selestrial99	t	random text	f	3850	10
15	MOON_Selestrial66	t	random text	f	5615	11
16	MOON_Selestrial92	t	random text	f	4691	12
19	MOON_Selestrial34	t	random text	f	6429	12
20	MOON_Selestrial57	t	random text	f	3188	11
21	MOON_Selestrial51	t	random text	f	602	10
22	MOON_Selestrial67	t	random text	f	2248	10
23	MOON_Selestrial71	t	random text	f	1638	10
24	MOON_Selestrial33	t	random text	f	2561	10
26	MOON_Selestrial95	t	random text	f	1721	2
27	MOON_Selestrial75	t	random text	f	9130	3
28	MOON_Selestrial36	t	random text	f	621	4
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: 
freecodecamp
--

COPY public.planet (planet_id, name, has_life, description, is_spherical, 
age_in_millions_of_years, distance_from_earth, star_id) FROM stdin;
1	PLANAT_Selestrial96	t	random text	f	922	
602.204895597305	1
2	PLANAT_Selestrial15	t	random text	f	8686	
710.940971722049	2
3	PLANAT_Selestrial18	t	random text	f	1225	
790.920294410839	3
4	PLANAT_Selestrial75	t	random text	f	6305	
734.676375060507	4
5	PLANAT_Selestrial79	t	random text	f	2782	
781.180617440136	5
7	PLANAT_Selestrial4	t	random text	f	8565	
947.992249369319	7
8	PLANAT_Selestrial85	t	random text	f	3198	
68.5948937675608	1
9	PLANAT_Selestrial55	t	random text	f	8694	
87.8229314646256	2
10	PLANAT_Selestrial3	t	random text	f	4356	
901.540012537656	3
11	PLANAT_Selestrial26	t	random text	f	5635	
796.233298125262	4
12	PLANAT_Selestrial90	t	random text	f	7535	
200.285673515863	5
13	PLANAT_Selestrial91	t	random text	f	3340	
273.052895426734	5
15	PLANAT_Selestrial7	t	random text	f	9809	
748.157276030338	7
16	PLANAT_Selestrial34	t	random text	f	8659	
442.131200917603	7
17	PLANAT_Selestrial5	t	random text	f	5401	
697.907243272136	4
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: 
freecodecamp
--

COPY public.star (star_id, name, has_life, description, is_spherical, 
galaxy_id) FROM stdin;
1	AB_Selestrial78	t	random text	f	1
2	AB_Selestrial93	t	random text	f	2
3	AB_Selestrial68	t	random text	f	3
4	AB_Selestrial55	t	random text	f	4
5	AB_Selestrial9	t	random text	f	5
7	AB_Selestrial36	t	random text	f	7
\.


--
-- Data for Name: tmp; Type: TABLE DATA; Schema: public; Owner: 
freecodecamp
--

COPY public.tmp (tmp_id, name, remark) FROM stdin;
1	random	random
3	random2	random
4	random3	random
5	random4	random
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: 
freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: 
freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 29, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: 
freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: 
freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: tmp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: 
freecodecamp
--

SELECT pg_catalog.setval('public.tmp_id_seq', 5, true);


--
-- Name: tmp akd; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tmp
    ADD CONSTRAINT akd UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: tmp tmp_pkey; Type: CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.tmp
    ADD CONSTRAINT tmp_pkey PRIMARY KEY (tmp_id);


--
-- Name: moon unq_moon_name; Type: CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unq_moon_name UNIQUE (name);


--
-- Name: galaxy unq_name; Type: CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unq_name UNIQUE (name);


--
-- Name: planet unq_plnt_name; Type: CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unq_plnt_name UNIQUE (name);


--
-- Name: star unq_st_name; Type: CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unq_st_name UNIQUE (name);


--
-- Name: moon moon_const; Type: FK CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_const FOREIGN KEY (planet_id) REFERENCES 
public.planet(planet_id);


--
-- Name: planet plnt_const; Type: FK CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plnt_const FOREIGN KEY (star_id) REFERENCES 
public.star(star_id);


--
-- Name: star str_const; Type: FK CONSTRAINT; Schema: public; Owner: 
freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT str_const FOREIGN KEY (galaxy_id) REFERENCES 
public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


