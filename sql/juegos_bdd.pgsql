--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)

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

--
-- Name: juegos_bdd; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA juegos_bdd;


ALTER SCHEMA juegos_bdd OWNER TO admin;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: comunidadesautonomas; Type: TABLE; Schema: juegos_bdd; Owner: postgres
--

CREATE TABLE juegos_bdd.comunidadesautonomas (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE juegos_bdd.comunidadesautonomas OWNER TO admin;

--
-- Name: comunidadesautonomas_id_seq; Type: SEQUENCE; Schema: juegos_bdd; Owner: postgres
--

CREATE SEQUENCE juegos_bdd.comunidadesautonomas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE juegos_bdd.comunidadesautonomas_id_seq OWNER TO admin;

--
-- Name: comunidadesautonomas_id_seq; Type: SEQUENCE OWNED BY; Schema: juegos_bdd; Owner: postgres
--

ALTER SEQUENCE juegos_bdd.comunidadesautonomas_id_seq OWNED BY juegos_bdd.comunidadesautonomas.id;


--
-- Name: direcciones; Type: TABLE; Schema: juegos_bdd; Owner: postgres
--

CREATE TABLE juegos_bdd.direcciones (
    id bigint NOT NULL,
    nombre character varying(45) NOT NULL,
    apellidos character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    codigo_postal integer NOT NULL,
    ciudad character varying(45) NOT NULL,
    telefono character varying(25) NOT NULL,
    email character varying(255) NOT NULL,
    id_usuario bigint NOT NULL,
    id_provincia bigint NOT NULL,
    id_comunidad bigint NOT NULL,
    active smallint NOT NULL
);


ALTER TABLE juegos_bdd.direcciones OWNER TO admin;

--
-- Name: direcciones_id_seq; Type: SEQUENCE; Schema: juegos_bdd; Owner: postgres
--

CREATE SEQUENCE juegos_bdd.direcciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE juegos_bdd.direcciones_id_seq OWNER TO admin;

--
-- Name: direcciones_id_seq; Type: SEQUENCE OWNED BY; Schema: juegos_bdd; Owner: postgres
--

ALTER SEQUENCE juegos_bdd.direcciones_id_seq OWNED BY juegos_bdd.direcciones.id;


--
-- Name: juegos; Type: TABLE; Schema: juegos_bdd; Owner: postgres
--

CREATE TABLE juegos_bdd.juegos (
    id bigint NOT NULL,
    nombre character varying(45) NOT NULL,
    autor character varying(45) NOT NULL,
    editorial character varying(45) NOT NULL,
    imagen character varying(255) NOT NULL,
    fecha_publicacion date NOT NULL,
    id_mecanica bigint NOT NULL,
    precio double precision NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE juegos_bdd.juegos OWNER TO admin;

--
-- Name: juegos_id_seq; Type: SEQUENCE; Schema: juegos_bdd; Owner: postgres
--

CREATE SEQUENCE juegos_bdd.juegos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE juegos_bdd.juegos_id_seq OWNER TO admin;

--
-- Name: juegos_id_seq; Type: SEQUENCE OWNED BY; Schema: juegos_bdd; Owner: postgres
--

ALTER SEQUENCE juegos_bdd.juegos_id_seq OWNED BY juegos_bdd.juegos.id;


--
-- Name: mecanicas; Type: TABLE; Schema: juegos_bdd; Owner: postgres
--

CREATE TABLE juegos_bdd.mecanicas (
    id bigint NOT NULL,
    nombre character varying(45) NOT NULL,
    descripcion text
);


ALTER TABLE juegos_bdd.mecanicas OWNER TO admin;

--
-- Name: mecanicas_id_seq; Type: SEQUENCE; Schema: juegos_bdd; Owner: postgres
--

CREATE SEQUENCE juegos_bdd.mecanicas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE juegos_bdd.mecanicas_id_seq OWNER TO admin;

--
-- Name: mecanicas_id_seq; Type: SEQUENCE OWNED BY; Schema: juegos_bdd; Owner: postgres
--

ALTER SEQUENCE juegos_bdd.mecanicas_id_seq OWNED BY juegos_bdd.mecanicas.id;


--
-- Name: provincias; Type: TABLE; Schema: juegos_bdd; Owner: postgres
--

CREATE TABLE juegos_bdd.provincias (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    id_comunidad bigint NOT NULL
);


ALTER TABLE juegos_bdd.provincias OWNER TO admin;

--
-- Name: provincias_id_seq; Type: SEQUENCE; Schema: juegos_bdd; Owner: postgres
--

CREATE SEQUENCE juegos_bdd.provincias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE juegos_bdd.provincias_id_seq OWNER TO admin;

--
-- Name: provincias_id_seq; Type: SEQUENCE OWNED BY; Schema: juegos_bdd; Owner: postgres
--

ALTER SEQUENCE juegos_bdd.provincias_id_seq OWNED BY juegos_bdd.provincias.id;


--
-- Name: reservas; Type: TABLE; Schema: juegos_bdd; Owner: postgres
--

CREATE TABLE juegos_bdd.reservas (
    id bigint NOT NULL,
    total double precision NOT NULL,
    cantidad integer NOT NULL,
    idusuario bigint NOT NULL,
    idjuego bigint NOT NULL,
    fecha date NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE juegos_bdd.reservas OWNER TO admin;

--
-- Name: reservas_id_seq; Type: SEQUENCE; Schema: juegos_bdd; Owner: postgres
--

CREATE SEQUENCE juegos_bdd.reservas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE juegos_bdd.reservas_id_seq OWNER TO admin;

--
-- Name: reservas_id_seq; Type: SEQUENCE OWNED BY; Schema: juegos_bdd; Owner: postgres
--

ALTER SEQUENCE juegos_bdd.reservas_id_seq OWNED BY juegos_bdd.reservas.id;


--
-- Name: roles; Type: TABLE; Schema: juegos_bdd; Owner: postgres
--

CREATE TABLE juegos_bdd.roles (
    id bigint NOT NULL,
    nombre character varying(45),
    descripcion text
);


ALTER TABLE juegos_bdd.roles OWNER TO admin;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: juegos_bdd; Owner: postgres
--

CREATE SEQUENCE juegos_bdd.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE juegos_bdd.roles_id_seq OWNER TO admin;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: juegos_bdd; Owner: postgres
--

ALTER SEQUENCE juegos_bdd.roles_id_seq OWNED BY juegos_bdd.roles.id;


--
-- Name: usuarios; Type: TABLE; Schema: juegos_bdd; Owner: postgres
--

CREATE TABLE juegos_bdd.usuarios (
    id bigint NOT NULL,
    nombre character varying(45) NOT NULL,
    apellidos character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    edad bigint,
    fecha_registro date NOT NULL,
    id_rol bigint,
    password character varying(255) NOT NULL
);


ALTER TABLE juegos_bdd.usuarios OWNER TO admin;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: juegos_bdd; Owner: postgres
--

CREATE SEQUENCE juegos_bdd.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE juegos_bdd.usuarios_id_seq OWNER TO admin;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: juegos_bdd; Owner: postgres
--

ALTER SEQUENCE juegos_bdd.usuarios_id_seq OWNED BY juegos_bdd.usuarios.id;


--
-- Name: comunidadesautonomas id; Type: DEFAULT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.comunidadesautonomas ALTER COLUMN id SET DEFAULT nextval('juegos_bdd.comunidadesautonomas_id_seq'::regclass);


--
-- Name: direcciones id; Type: DEFAULT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.direcciones ALTER COLUMN id SET DEFAULT nextval('juegos_bdd.direcciones_id_seq'::regclass);


--
-- Name: juegos id; Type: DEFAULT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.juegos ALTER COLUMN id SET DEFAULT nextval('juegos_bdd.juegos_id_seq'::regclass);


--
-- Name: mecanicas id; Type: DEFAULT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.mecanicas ALTER COLUMN id SET DEFAULT nextval('juegos_bdd.mecanicas_id_seq'::regclass);


--
-- Name: provincias id; Type: DEFAULT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.provincias ALTER COLUMN id SET DEFAULT nextval('juegos_bdd.provincias_id_seq'::regclass);


--
-- Name: reservas id; Type: DEFAULT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.reservas ALTER COLUMN id SET DEFAULT nextval('juegos_bdd.reservas_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.roles ALTER COLUMN id SET DEFAULT nextval('juegos_bdd.roles_id_seq'::regclass);


--
-- Name: usuarios id; Type: DEFAULT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.usuarios ALTER COLUMN id SET DEFAULT nextval('juegos_bdd.usuarios_id_seq'::regclass);


--
-- Data for Name: comunidadesautonomas; Type: TABLE DATA; Schema: juegos_bdd; Owner: postgres
--

COPY juegos_bdd.comunidadesautonomas (id, nombre) FROM stdin;
1	Andalucia
2	Aragon
3	Asturias
4	Islas Baleares
5	Canarias
6	Cantabria
7	Castilla-La Mancha
8	Castilla y Leon
9	Cataluña
10	Comunidad Valenciana
11	Extremadura
12	Galicia
13	La Rioja
14	Comunidad de Madrid
15	Region de Murcia
16	Comunidad Foral de Navarra
17	Pais Vasco
\.


--
-- Data for Name: direcciones; Type: TABLE DATA; Schema: juegos_bdd; Owner: postgres
--

COPY juegos_bdd.direcciones (id, nombre, apellidos, direccion, codigo_postal, ciudad, telefono, email, id_usuario, id_provincia, id_comunidad, active) FROM stdin;
1	Raul	Lopez Hernando	C/ Gran Via Nº 1 4-A	48910	Sestao	661096741	raullopezhernando@gmail.com	1	48	17	1
2	Itxaso	Libano Ortiz 	C/ Gran Via Nº 1 4-A	48910	Sestao	678901856	itxasolibano@gmail.com	2	48	17	0
3	Jasone	Hernando Ortuzar	C/ Correos Nº40 5 Ext-Dcha	48920	Portugalete	678921345	jasonehernandoortuzar@gmail.com	3	48	17	1
4	Perico	Palas	C/ Austria Nº 5 1-B	48008	Bilbao	765432198	pericopalas@gmail.com	4	48	17	1
5	Sandra	Perez Cantalapiedra	C/ Mugakoa Nº10 5-C	48910	Portugalete	643567891	sandracantalapiedra@gmail.com	5	48	17	1
6	Patxi	Lopez	C/ Herriko KIrola Nº18 3-A	48902	Barakaldo	678008912	patxilopez@gmail.com	6	48	17	1
24	Itxaso	Libano Ortiz De Zarate	C/ Gran Via Nº 1 4-A	48910	Sestao	678901856	itxasolibano@gmail.com	2	48	17	0
25	Itxaso	Libano 	C/ Gran Via Nº 1 4-A	48910	Sestao	678901856	itxasolibano@gmail.com	2	48	17	0
26	Itxaso	Libano 	C/ Gran Via Nº 1 4-A	48910	Sestao	678901856	itxasolibano@gmail.com	2	48	17	0
\.


--
-- Data for Name: juegos; Type: TABLE DATA; Schema: juegos_bdd; Owner: postgres
--

COPY juegos_bdd.juegos (id, nombre, autor, editorial, imagen, fecha_publicacion, id_mecanica, precio, active) FROM stdin;
1	The Red Cathedral	Isra y Shei	Devir2	https://juegosdelamesaredonda.com/10232-47074-thickbox_default/the-red-cathedral.jpg	2020-09-15	2	25.9499999999999993	t
3	Mondrian	Isra y Shae	Tranjis Games	https://www.invasiontalavera.es/images/stories/virtuemart/product/foto_mondrian_1_.jpg	2020-12-08	2	18	t
4	Its aWonderful World	Frédéric Guérard	Tranjis Games	https://hotelvader.top/wp-content/uploads/2019/11/pic4651175.jpg	2020-06-09	1	36.9500000000000028	t
5	Arquitectos del Reino del Oeste	Shem Phillips	Ediciones Primigenio	https://www.ludonauta.es/files/ludico/juegos-mesas/juego-mesa-arquitectos-del-reino-del-oeste-2018-305510682.jpg	2020-04-15	2	44.9500000000000028	f
6	Rhino Hero Super Battle	Scott Fresco	Haba	https://bebeamordor.com/wp-content/uploads/2017/12/rhino-hero-super-battle-haba.jpg?w=300	2019-10-15	1	25	t
7	Plenus 2	Inka y Marcus Brand	Devir	https://jugamosuna.es/tienda/23941-large_default/comprar-plenus-ii-barato.jpg	2019-06-10	1	14.9499999999999993	t
11	Optimus	Wolfang Warsch	Devir	https://juegosdelamesaredonda.com/8378-38700-large_default/optimus.jpg	2020-11-12	1	14.9499999999999993	t
12	Opitimus2	Wolfang Warch	Devir	https://media.zacatrus.es/catalog/product/cache/3be2b7bb42f58e7a30e73042a1209c2b/o/p/optimus2.jpg	2020-12-11	1	14.9499999999999993	t
\.


--
-- Data for Name: mecanicas; Type: TABLE DATA; Schema: juegos_bdd; Owner: postgres
--

COPY juegos_bdd.mecanicas (id, nombre, descripcion) FROM stdin;
1	Roll and Write	Roll and Write
2	Colocacion de Trabajadores	Colocacion de Trabajadores
\.


--
-- Data for Name: provincias; Type: TABLE DATA; Schema: juegos_bdd; Owner: postgres
--

COPY juegos_bdd.provincias (id, nombre, id_comunidad) FROM stdin;
1	Alava	17
2	Albacete	7
3	Alicante	10
4	Almeria	1
5	Asturias	3
6	Avila	8
7	Badajoz	11
8	Barcelona	9
9	Burgos	8
10	Caceres	11
11	Cadiz	1
12	Cantabria	6
13	Castellon	10
14	Ciudad Real	7
15	Cordoba	1
16	Cuenca	7
17	Gerona	9
18	Granada	1
19	Guadalajara	7
20	Gupuzkoa	17
21	Huelva	1
22	Huesca	2
23	Islas Baleares	4
24	Jaen	1
25	La Coruña	12
26	La Rioja	13
27	Las Palmas	5
28	Leon	8
29	Lerida	9
30	Lugo	12
31	Madrid	14
32	Malaga	1
33	Murcia	15
34	Navarra	16
35	Orense	12
36	Palencia	8
37	Pontevedra	12
38	Salamanca	8
39	Santa Cruz De Tenerife	5
40	Segovia	8
41	Sevilla	1
42	Soria	8
43	Tarragona	9
44	Teruel	2
45	Toledo	7
46	Valencia	10
47	Valladolid	8
48	Bizkaia	17
49	Zamora	8
50	Zaragoza	2
\.


--
-- Data for Name: reservas; Type: TABLE DATA; Schema: juegos_bdd; Owner: postgres
--

COPY juegos_bdd.reservas (id, total, cantidad, idusuario, idjuego, fecha, active) FROM stdin;
1	30.4499999999999993	2	3	4	2020-12-01	t
2	25.9499999999999993	1	4	1	2020-12-05	t
3	45	3	5	4	2020-12-13	t
4	75	2	3	3	2020-12-16	t
6	25.9499999999999993	1	2	1	2020-12-17	t
7	25.9499999999999993	1	2	1	2020-12-17	t
8	18	1	2	3	2020-12-18	t
9	77.8499999999999943	3	2	1	2020-12-18	t
10	14.9499999999999993	1	2	11	2020-12-18	t
11	44.9500000000000028	1	2	5	2020-12-18	t
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: juegos_bdd; Owner: postgres
--

COPY juegos_bdd.roles (id, nombre, descripcion) FROM stdin;
1	administrador	Este es el administrador de la base de datos
2	usuario	Rol de usuario basico de la base de datos
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: juegos_bdd; Owner: postgres
--

COPY juegos_bdd.usuarios (id, nombre, apellidos, email, edad, fecha_registro, id_rol, password) FROM stdin;
1	Raul	Lopez Hernando	raullopezhernando@gmail.com	34	2020-12-11	1	$2a$10$7xkU6hVZeQEqzuEziQHdl.pH3fqDBNqXSzImhGkcY.fcPBz.yXqyG
2	Itxaso	Libano Ortiz De Zarate	itxasolibano@gmail.com	29	2020-12-11	2	$2a$10$7xkU6hVZeQEqzuEziQHdl.pH3fqDBNqXSzImhGkcY.fcPBz.yXqyG
3	Miren Jasone	Hernando Ortuzar	jasonehernandoortuzar@gmail.com	56	2020-12-11	3	$2a$10$7xkU6hVZeQEqzuEziQHdl.pH3fqDBNqXSzImhGkcY.fcPBz.yXqyG
4	Perico	Palas	pericopalas@gmail.com	22	2020-12-11	2	$2a$10$7xkU6hVZeQEqzuEziQHdl.pH3fqDBNqXSzImhGkcY.fcPBz.yXqyG
5	Sandra	Cantalapiedra	sandracantalapiedra@gmail.com	33	2020-12-11	2	$2a$10$7xkU6hVZeQEqzuEziQHdl.pH3fqDBNqXSzImhGkcY.fcPBz.yXqyG
6	Patxi	Lopez	patxilopez@gmail.com	34	2020-12-12	2	$2a$10$7xkU6hVZeQEqzuEziQHdl.pH3fqDBNqXSzImhGkcY.fcPBz.yXqyG
7	Laura	Garcia	lauragarcia@gmail.com	38	2020-12-12	2	$2a$10$7xkU6hVZeQEqzuEziQHdl.pH3fqDBNqXSzImhGkcY.fcPBz.yXqyG
8	Andres	Pajares	andrespajares@gmail.com	67	2020-12-20	2	$2a$10$l9bhgLi4tgGgBMzNF5Y5qOiCFZArhZX2mIYThaHiCHYkffYepsylq
\.


--
-- Name: comunidadesautonomas_id_seq; Type: SEQUENCE SET; Schema: juegos_bdd; Owner: postgres
--

SELECT pg_catalog.setval('juegos_bdd.comunidadesautonomas_id_seq', 17, true);


--
-- Name: direcciones_id_seq; Type: SEQUENCE SET; Schema: juegos_bdd; Owner: postgres
--

SELECT pg_catalog.setval('juegos_bdd.direcciones_id_seq', 26, true);


--
-- Name: juegos_id_seq; Type: SEQUENCE SET; Schema: juegos_bdd; Owner: postgres
--

SELECT pg_catalog.setval('juegos_bdd.juegos_id_seq', 12, true);


--
-- Name: mecanicas_id_seq; Type: SEQUENCE SET; Schema: juegos_bdd; Owner: postgres
--

SELECT pg_catalog.setval('juegos_bdd.mecanicas_id_seq', 2, true);


--
-- Name: provincias_id_seq; Type: SEQUENCE SET; Schema: juegos_bdd; Owner: postgres
--

SELECT pg_catalog.setval('juegos_bdd.provincias_id_seq', 50, true);


--
-- Name: reservas_id_seq; Type: SEQUENCE SET; Schema: juegos_bdd; Owner: postgres
--

SELECT pg_catalog.setval('juegos_bdd.reservas_id_seq', 11, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: juegos_bdd; Owner: postgres
--

SELECT pg_catalog.setval('juegos_bdd.roles_id_seq', 2, true);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: juegos_bdd; Owner: postgres
--

SELECT pg_catalog.setval('juegos_bdd.usuarios_id_seq', 8, true);


--
-- Name: comunidadesautonomas idx_24580_primary; Type: CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.comunidadesautonomas
    ADD CONSTRAINT idx_24580_primary PRIMARY KEY (id);


--
-- Name: direcciones idx_24586_primary; Type: CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.direcciones
    ADD CONSTRAINT idx_24586_primary PRIMARY KEY (id);


--
-- Name: juegos idx_24595_primary; Type: CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.juegos
    ADD CONSTRAINT idx_24595_primary PRIMARY KEY (id);


--
-- Name: mecanicas idx_24601_primary; Type: CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.mecanicas
    ADD CONSTRAINT idx_24601_primary PRIMARY KEY (id);


--
-- Name: provincias idx_24610_primary; Type: CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.provincias
    ADD CONSTRAINT idx_24610_primary PRIMARY KEY (id);


--
-- Name: reservas idx_24616_primary; Type: CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.reservas
    ADD CONSTRAINT idx_24616_primary PRIMARY KEY (id);


--
-- Name: roles idx_24622_primary; Type: CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.roles
    ADD CONSTRAINT idx_24622_primary PRIMARY KEY (id);


--
-- Name: usuarios idx_24631_primary; Type: CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.usuarios
    ADD CONSTRAINT idx_24631_primary PRIMARY KEY (id);


--
-- Name: idx_24586_fk_direcciones_comunidad_idx; Type: INDEX; Schema: juegos_bdd; Owner: postgres
--

CREATE INDEX idx_24586_fk_direcciones_comunidad_idx ON juegos_bdd.direcciones USING btree (id_comunidad);


--
-- Name: idx_24586_fk_direcciones_provincia_idx; Type: INDEX; Schema: juegos_bdd; Owner: postgres
--

CREATE INDEX idx_24586_fk_direcciones_provincia_idx ON juegos_bdd.direcciones USING btree (id_provincia);


--
-- Name: idx_24586_fk_direcciones_usuario_idx; Type: INDEX; Schema: juegos_bdd; Owner: postgres
--

CREATE INDEX idx_24586_fk_direcciones_usuario_idx ON juegos_bdd.direcciones USING btree (id_usuario);


--
-- Name: idx_24595_fk_juegosmecanica_idx; Type: INDEX; Schema: juegos_bdd; Owner: postgres
--

CREATE INDEX idx_24595_fk_juegosmecanica_idx ON juegos_bdd.juegos USING btree (id_mecanica);


--
-- Name: idx_24595_id_unique; Type: INDEX; Schema: juegos_bdd; Owner: postgres
--

CREATE UNIQUE INDEX idx_24595_id_unique ON juegos_bdd.juegos USING btree (id);


--
-- Name: idx_24601_nombre_unique; Type: INDEX; Schema: juegos_bdd; Owner: postgres
--

CREATE UNIQUE INDEX idx_24601_nombre_unique ON juegos_bdd.mecanicas USING btree (nombre);


--
-- Name: idx_24610_fk_provincias_comunidades_idx; Type: INDEX; Schema: juegos_bdd; Owner: postgres
--

CREATE INDEX idx_24610_fk_provincias_comunidades_idx ON juegos_bdd.provincias USING btree (id_comunidad);


--
-- Name: idx_24616_fk_reserva_usuario_idx; Type: INDEX; Schema: juegos_bdd; Owner: postgres
--

CREATE INDEX idx_24616_fk_reserva_usuario_idx ON juegos_bdd.reservas USING btree (idusuario);


--
-- Name: idx_24616_fk_reservas_juego_idx; Type: INDEX; Schema: juegos_bdd; Owner: postgres
--

CREATE INDEX idx_24616_fk_reservas_juego_idx ON juegos_bdd.reservas USING btree (idjuego);


--
-- Name: idx_24631_email_unique; Type: INDEX; Schema: juegos_bdd; Owner: postgres
--

CREATE UNIQUE INDEX idx_24631_email_unique ON juegos_bdd.usuarios USING btree (email);


--
-- Name: idx_24631_fk_usuarios_roles_idx; Type: INDEX; Schema: juegos_bdd; Owner: postgres
--

CREATE INDEX idx_24631_fk_usuarios_roles_idx ON juegos_bdd.usuarios USING btree (id_rol);


--
-- Name: direcciones fk_direcciones_comunidad; Type: FK CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.direcciones
    ADD CONSTRAINT fk_direcciones_comunidad FOREIGN KEY (id_comunidad) REFERENCES juegos_bdd.comunidadesautonomas(id);


--
-- Name: direcciones fk_direcciones_provincia; Type: FK CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.direcciones
    ADD CONSTRAINT fk_direcciones_provincia FOREIGN KEY (id_provincia) REFERENCES juegos_bdd.provincias(id);


--
-- Name: direcciones fk_direcciones_usuario; Type: FK CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.direcciones
    ADD CONSTRAINT fk_direcciones_usuario FOREIGN KEY (id_usuario) REFERENCES juegos_bdd.usuarios(id);


--
-- Name: juegos fk_juegosmecanica; Type: FK CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.juegos
    ADD CONSTRAINT fk_juegosmecanica FOREIGN KEY (id_mecanica) REFERENCES juegos_bdd.mecanicas(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: provincias fk_provincias_comunidad; Type: FK CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.provincias
    ADD CONSTRAINT fk_provincias_comunidad FOREIGN KEY (id_comunidad) REFERENCES juegos_bdd.comunidadesautonomas(id);


--
-- Name: reservas fk_reserva_usuario; Type: FK CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.reservas
    ADD CONSTRAINT fk_reserva_usuario FOREIGN KEY (idusuario) REFERENCES juegos_bdd.usuarios(id);


--
-- Name: reservas fk_reservas_juego; Type: FK CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.reservas
    ADD CONSTRAINT fk_reservas_juego FOREIGN KEY (idjuego) REFERENCES juegos_bdd.juegos(id);


--
-- Name: usuarios fk_usuarios_roles; Type: FK CONSTRAINT; Schema: juegos_bdd; Owner: postgres
--

ALTER TABLE ONLY juegos_bdd.usuarios
    ADD CONSTRAINT fk_usuarios_roles FOREIGN KEY (id_rol) REFERENCES juegos_bdd.usuarios(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

