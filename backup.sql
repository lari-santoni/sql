--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: sistema-web
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO "sistema-web";

--
-- Name: checklist; Type: TABLE; Schema: public; Owner: sistema-web
--

CREATE TABLE public.checklist (
    id text NOT NULL,
    student_id text NOT NULL,
    quest_id text NOT NULL,
    answer text NOT NULL,
    quest_type text NOT NULL
);


ALTER TABLE public.checklist OWNER TO "sistema-web";

--
-- Name: professors; Type: TABLE; Schema: public; Owner: sistema-web
--

CREATE TABLE public.professors (
    id text NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    birthday text NOT NULL,
    adm boolean NOT NULL
);


ALTER TABLE public.professors OWNER TO "sistema-web";

--
-- Name: quests; Type: TABLE; Schema: public; Owner: sistema-web
--

CREATE TABLE public.quests (
    id text NOT NULL,
    question text NOT NULL,
    type text NOT NULL,
    min_age double precision NOT NULL,
    max_age double precision NOT NULL
);


ALTER TABLE public.quests OWNER TO "sistema-web";

--
-- Name: result; Type: TABLE; Schema: public; Owner: sistema-web
--

CREATE TABLE public.result (
    id text NOT NULL,
    student_id text NOT NULL,
    tdah_sum integer NOT NULL,
    tdah_result double precision NOT NULL,
    tea_sum integer NOT NULL,
    tea_result double precision NOT NULL,
    teap_sum integer NOT NULL,
    teap_result double precision NOT NULL,
    di_sum integer NOT NULL,
    di_result double precision NOT NULL
);


ALTER TABLE public.result OWNER TO "sistema-web";

--
-- Name: students; Type: TABLE; Schema: public; Owner: sistema-web
--

CREATE TABLE public.students (
    id text NOT NULL,
    name text NOT NULL,
    age double precision NOT NULL,
    gender text NOT NULL,
    ethnicity text NOT NULL,
    school text NOT NULL,
    classrom text NOT NULL,
    diagnostic text,
    assessment integer NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone,
    professor_id text NOT NULL,
    time_class double precision NOT NULL
);


ALTER TABLE public.students OWNER TO "sistema-web";

--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: sistema-web
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
d254d6ab-89e6-47db-a389-213b50177940	55cc74fd6e877480dbb6eba29faa42c895f7bebba18d4d4e1390bc7b57af3b19	2024-02-04 12:12:22.132568+00	20240204121222_create_professors_and_students	\N	\N	2024-02-04 12:12:22.118727+00	1
5f17d5d7-01f8-4fe7-b5b3-ac72151e5f8a	45a818fbc7294d7e5d4e21db19613ffa46e3078204cd949858d28202f07e39af	2024-03-30 18:41:58.352391+00	20240330184158_change_variable_type	\N	\N	2024-03-30 18:41:58.348263+00	1
0abbeb3f-c3e2-4c51-bd05-547464d524df	e1ff7fb4db48dc95f996abb864fae9f6d62e16211178d91a0ffdc4405b2e738a	2024-02-08 18:36:07.300393+00	20240208183607_null_variable_possible	\N	\N	2024-02-08 18:36:07.296423+00	1
d847d3d4-f4a5-4158-87b3-6c2f5aaa26eb	cf5aa499fb2161374f67dba72e11770a4a3e048d7992864361859974358a37b7	2024-02-08 20:13:18.324281+00	20240208201318_add_professor_birthday_variable	\N	\N	2024-02-08 20:13:18.321091+00	1
e52e6520-3949-435c-a5e1-1636fc49a593	1d47bb3a28bc2e4fcf3595152a782b3473ac093ad89691c05c31a35c879da8a6	2024-02-09 11:33:42.494644+00	20240209113342_new_tables	\N	\N	2024-02-09 11:33:42.473984+00	1
6eb0de6d-9f8e-4189-9ad7-8038921c2685	e147ecf249bc14709c32f57d5a64922ca5121c8e5d55bc28bbcf95fbc508bee1	2024-03-30 18:56:08.769569+00	20240330185608_change_variable_type	\N	\N	2024-03-30 18:56:08.757999+00	1
64603a8a-cc45-4636-9a15-f324459c4d1b	2560895f42b3ae4b4ffb068e2d903c9148b07f93c374d732898bba097f0bcc6c	2024-02-09 12:00:05.220901+00	20240209120005_add_parameter	\N	\N	2024-02-09 12:00:05.206437+00	1
d0c4d9ca-4ebb-443e-bc0e-0c0b867ef7bd	b9fcf3be81dfb5f2d8917023edc6186877e86fb04670c9bab263a3d78ab68597	2024-02-09 14:02:08.517386+00	20240209140208_change_variable_value	\N	\N	2024-02-09 14:02:08.508071+00	1
3a658580-18ce-4086-a38e-85189f747990	bc891beba7add07cd169bfebd4f9bed898dc096e20295de0c43e46b11408d0d7	2024-02-25 13:30:02.424311+00	20240225133002_add_adm_column	\N	\N	2024-02-25 13:30:02.413061+00	1
ee9f62bf-ba3a-40e4-b60c-c7780a508a79	b2df3e7838d1835c563140693fb16387d8cc194b8a2c6bfa9cd0e5965f777ed4	2024-02-25 13:36:15.071805+00	20240225133615_adm_type_change	\N	\N	2024-02-25 13:36:15.068356+00	1
812fac06-723e-44ce-9111-4d5146502fd1	7b5a98b3f8cd1ef2bba60b0d5849a08d622eaa22178a6383dec32b9649d7889c	2024-02-25 15:12:33.273041+00	20240225151233_increment_and_change_quest_variables	\N	\N	2024-02-25 15:12:33.269464+00	1
8fb15313-e19c-49f0-bd09-05680c98d7c5	960c97ec45792a306c04b2b62d3e507b25c3e166cefacd6f9ba5d8766d793b41	2024-03-29 16:10:24.440499+00	20240329161024_results	\N	\N	2024-03-29 16:10:24.425153+00	1
47a4afb2-7374-45a3-897c-99de46fe9d61	ebc8dd258a2e94ab7392eb5a9eef707468df84e4b8b557a11187b3cf674214cb	2024-03-29 16:22:54.752993+00	20240329162254_results_new_value	\N	\N	2024-03-29 16:22:54.738252+00	1
1fc429bb-f062-45e0-9a53-b2b167f77ea8	6671090bf075a037c94893dc4d298216c1997a4290cbcd939a2aad88bacfaf29	2024-03-29 18:24:49.443395+00	20240329182449_insert_parameter	\N	\N	2024-03-29 18:24:49.434736+00	1
ba90b4e3-1177-4fc5-97a8-9f398dcf3387	9259256a0a655234aade5da74b1424ccb25d529dc00f715d2445ab0a05af6420	2024-03-30 18:36:58.595119+00	20240330183658_insert_variable	\N	\N	2024-03-30 18:36:58.590652+00	1
\.


--
-- Data for Name: checklist; Type: TABLE DATA; Schema: public; Owner: sistema-web
--

COPY public.checklist (id, student_id, quest_id, answer, quest_type) FROM stdin;
\.


--
-- Data for Name: professors; Type: TABLE DATA; Schema: public; Owner: sistema-web
--

COPY public.professors (id, name, email, password, birthday, adm) FROM stdin;
eba36ff3-cfed-4667-9ef5-5346c19c9740	Administrador	adm@admin.com	$2a$08$5g08p.CQaW4asZAJ9MqkyulZBui1NoLHZWTmpQsUE4w3RFtLW68/S	2024-04-18	t
\.


--
-- Data for Name: quests; Type: TABLE DATA; Schema: public; Owner: sistema-web
--

COPY public.quests (id, question, type, min_age, max_age) FROM stdin;
b9b851fb-9644-4bab-9332-741d4387dd36	Tem dificuldade para compreender conceitos “mais” e “menos”	TEAp	3	5
9be80d14-f129-436e-919e-3f80a4dcd7d6	Apresenta atraso, dificuldade na fala ou de difícil compreensão, quando comparada as crianças da sua idade.	TEAp	0	5
4c5b6e02-c1ed-442c-8daf-d879557c62cc	Tem relutância em envolver-se na aprendizagem; comportamento de oposição, falta de interesse em jogos com sons da língua (ex., repetição, rimas)	TEAp	1	5
52f7b0bc-1975-48b1-84b6-7ce6d149abde	Fala como bebês ou, pronunciam mal as palavras	TEAp	4	5
7cbedafc-1b09-485c-8a51-09e1c6a82343	Nomeação imprecisa: “Baeira”/Batedeira/nome de pessoas/animais/cores	TEAp	4	5
f4c74110-fca2-4080-9c5a-d35054e93b06	Dificuldades ou confusão com a direção/localização espacial: dentro/fora/em cima/em baixo	TEAp	4	5
d78c2a9e-4cf2-4425-b59d-ea8cc0d2ccab	Dificuldades com habilidades motoras finas	TEAp	3	4
a339bc28-db26-40f8-943e-4dc051c21606	Coordenação motora deficitária	TEAp	5	5
d7e3d49c-6e96-4229-a576-48e1d327e893	Quando fala, usa excessivamente palavras substitutas ou imprecisas (como “coisa”, “negócio”)	TEAp	2	5
2ea9991d-9193-4053-8918-79df34f234a2	Tem dificuldades em aprender cantigas infantis/músicas com rimas	TEAp	4	5
9e329d2d-5dc3-46e0-b08e-f1aed7a1a436	Discrepância entre diferentes habilidades, parecendo uma criança brilhante em alguns aspectos, mas desinteressada em outros (aptidão para brinquedos de construção ou técnicos, como quebra-cabeças, lego, controle remoto de TV ou vídeo, teclados de computadores)	TEAp	2	5
8e896bff-8772-405d-970e-4a803f3ae6b5	Atraso ou transtornos na fala ou na linguagem, ou processamento cognitivo prejudicado (ex., dificuldade de nomeação de objetos do dia a dia)	TEAp	2	5
7b353843-be24-43ab-85b7-2689b6c43d94	Chora constantemente e têm problemas para se acalmar	TDAH	0.6	5
b6ade78e-8ef3-4860-aa98-b78ad9a911cf	Atividade motora excessiva quando a criança começou a andar	TDAH	1	5
c2cbe071-5f95-437a-9899-49631a01c1ca	É nervoso/a, agitado/a e difícil de controlar	TDAH	1	5
6245a0b4-b094-44bc-a3af-84c1bab3479d	Tem dificuldade para seguir as instruções ou prestar atenção aos detalhes	TDAH	4	5
bc02e903-87e9-47cb-975d-6fd7d3c44f62	Apresenta comportamentos mais agressivos e emocionalmente intensos quando um presente/prêmio ou brinquedos é tirado	TDAH	0	5
1f4179b5-7b05-4aeb-be93-f887a61a45c7	Quando apresentadas a tarefas desafiadoras (ex: quebra-cabeças com peças faltando, ela mostra mais frustração, expressões negativas, raiva)	TDAH	2	5
65cf541b-3eee-44c7-b14e-6c1abf7aa188	Distrai-se com facilidade	TDAH	2	5
8841e923-9538-4cf1-9649-dcd9a2139780	É excessivamente reativo (grita e pula de alegria por pequenas coisas) ou chora e grita regularmente em situações menores	TDAH	2	5
2f4793cd-300c-4cba-9387-b151b8d0b79a	É incrivelmente ativo/a e em movimento o tempo todo	TDAH	2	5
054fa714-46e0-41b5-a501-826297542c21	Tem dificuldade em esperar, sente extrema pressão para conseguir as coisas de forma rápida	TDAH	1	5
fedf9b19-132d-4a9f-aba4-dee49e98daeb	Tende a ser facilmente frustrada, mal-humorada, ou fica por muito tempo nessa situação	TDAH	2	5
0d3061d8-8a3c-4a6a-95d8-24d4a0bf0a98	É extremamente sensível ao feedback corretivo (ex: grita de raiva por pedir que coloquem um casaco para sair)	TDAH	1	5
54851efb-0946-42cb-bb68-5460001aaee4	Tende a ser mais controlador (ex: com brinquedos) ou reage com mais hostilidade, raiva e agressão quando chateado	TDAH	2	5
f373eb98-a2c3-4b84-aed8-f707898d2edb	Quando perturbada, tendem a se envolver em birras mais frequentes, intensas, graves e perturbadoras do que outras crianças de sua idade	TDAH	0.9	5
1e52d683-bd89-4993-875e-110c34966915	Tem reações excessivas, completamente desproporcionais ao evento e/ou inadequadas ao contexto. (ex: dificuldade para se acalmar sozinha diante de uma birra)	TDAH	1	5
9bf5fa76-83e6-4d97-8b11-48eb1bb3a53a	Fica agitado, contorce-se e bate constantemente nas mãos ou nos pés, tem dificuldade para ficar quieto	TDAH	2	5
b2b0e4cf-b3d1-4e2e-b676-61fdd65e9c3e	Sai da cadeira da escola, ou outras situações em que deveria permanecer sentado	TDAH	0	5
0ca827ca-a1c2-4dae-b260-07fc1ab8208b	Corre e escala em lugares ou situações inapropriadas	TDAH	1	5
2493df05-b6a8-4fa4-8705-df2163771b44	É incapaz de brincar ou participar de atividades de lazer silenciosamente	TDAH	1	5
75f1b87e-b2f9-4c3c-8da3-3a3841070617	Fala rápido, interrompe conversas e jogos ou tem dificuldade para se revezar	TDAH	2	5
4d7f4160-9217-474e-8d12-244ca59a020b	Não sorri, nem reage a ruídos altos nem se vira para seguir sons e vozes	DI	0.6	2
aa88b3fb-fdc5-4914-b7b3-7c30ba1ef79c	Teve dificuldade em manter a cabeça erguida aos três meses de idade	DI	0.6	1
d0864650-c265-4d99-a5a0-12ad4fc80080	Tem dificuldade em seguir objetos ou pessoas com os olhos	DI	0.6	2
7a08a4b5-995e-4d99-bd26-c63380a642a4	Braços ou pernas estão rígidos, ou a postura está flácida	DI	0.6	0.9
1d830b7c-43ac-4780-b6f3-e8f6a0fb381d	Ausência de vocalização	TEA	0	0.9
83813a32-ea34-4094-81de-1831159d131e	Tem interesse reduzido nos estímulos visuais, táteis, sonoros	DI	0	5
1934fcb3-f78d-421c-b15f-9acd624c72d9	Pouca interação com os colegas e com o professor e falta de interesse pelas atividades na escola	DI	1	5
89d18885-028e-4826-a4cd-25a32e5085e9	Tem dificuldade em coordenação motora grossa, fina e concentração (tropeça, bate em objetos, cai muito, agarrar um lápis para escrever, recortar)	DI	2	5
9122fb10-81cd-4549-aa25-5b3d984d3440	Apresenta dificuldade em se adaptar aos mais variados ambientes	DI	0	5
4974e43e-dbdc-4cbd-889e-b00b72dac8da	Perde ou esquece facilmente o que já havia aprendido (demonstrado também em habilidades)	DI	2	5
ab1b3ee9-d4fe-44c6-8398-445687e38b03	Se isola da família, dos colegas ou do professor	DI	1	5
1c8a0971-310f-4072-b9de-a0bacb8a9e6c	Tem dificuldade em memorizar a escrita do seu nome, cores, números ou sequências – contar de 1 a 10	DI	1.6	5
ffbae71b-f91c-41a1-ade3-4633f237617f	Falta de interesse em atividades lúdicas e curiosidade	DI	1	5
16c83eff-bde1-49e9-9a4b-67ea61d43964	Medo excessivo, queixas somáticas (dor de cabeça, barriga, garganta etc.), irritabilidade, nervosismo	DI	2	5
9f0a26c2-939f-4919-8b22-b96b31b9a6dd	Dificuldades em comandos simples: dentro, fora, em cima, em baixo, frente, atrás	DI	3	5
3b130f76-dfb5-4d4e-b18a-10d4af691137	Dificuldade para dominar coisas como o treinamento do banheiro, vestir e alimentar-se	DI	2	5
bce2fecf-8982-4cd8-80cb-c38b1764e9ca	Geralmente tem dificuldades para responder ao ser chamado do outro lado da sala, mesmo quando envolve algo interessante	DI	0	5
84ba9f93-8c59-4366-be60-d54ef6e4fc57	Tem dificuldade em sentar-se, ficar de pé, alcançar objetos ou pegar objetos	DI	1	5
f166fcf7-ee23-4a9b-996b-5918957e90f4	Não começou a dizer palavras como “mamãe” ou “papai” com um ano de idade	DI	1	5
60e1ce44-eeae-4de6-b768-f0c0ddf3b7d7	Repete comportamentos que podem machucar, como morder-se ou bater na cabeça	DI	1	5
351dca93-0bae-466b-8303-932f98ac9361	Dificuldade em entender regras sociais e as consequências de suas ações	DI	2	5
614ef0a5-124d-4b0b-9661-38ec0a4ee643	Problemas de comportamento, como birras explosivas	DI	1	5
93d5724e-790c-4938-9195-c2556e051246	Dificuldades para se alimentar, adormecer e/ou permanecer dormindo	TDAH	0.6	2
1afa3427-2dc7-40b0-a76b-9c09321429e7	Não responde ao nome	TEA	0.6	1
317d9952-9bb9-4770-8cca-3b3b2a0fe8cd	Não mostra expressões faciais como alegria, tristeza, raiva e surpresa	TEA	0.6	1
45a75ef7-90c0-4812-8f6c-d7ae106dc748	Ausência de balbucio de sílabas com consoantes	TEA	0.6	1
50efc76b-d702-45d7-aedb-4c975e2c0dea	Não joga jogos interativos simples como cuca - achou	TEA	1	5
dc185d44-2c27-4421-bf4d-a06a12b97e64	Não compartilha interesses com outras pessoas (ex: mostrar um objeto que gosta)	TEA	1	5
41a19045-5945-454e-8a6c-228c40321fcd	Ausência de interesse social ou interações sociais incomuns (ex: puxar as pessoas pela mão sem nenhuma tentativa de olhar para elas)	TEA	1	5
64c130be-5227-4b32-bf65-9a1d90f4a33d	Faz poucos ou nenhum gesto (ex: não dá tchau)	TEA	1	5
39ce720e-5921-4cdf-bab6-0cab42b48b74	Não percebe quando os outros estão magoados ou chateados	TEA	2	5
e0aaef4f-3fc6-4876-aea6-94ae7807932e	Não finge ser outra coisa, como um professor ou super-herói, durante a brincadeira	TEA	2	5
8f3ca7c8-ded2-454d-b5a6-786291380aaa	Evita ou não mantém contato visual	TEA	1	5
a17637b1-14ef-4a08-959f-2f6c2d7897e6	Não canta, dança ou atua para os pais, por exemplo	TEA	2	5
5a0d06e2-ab02-45c2-9d5b-4ff40bca5fb5	A fala não incluía palavras simples, além de “mamã” e “papá”, ditas espontaneamente	TEA	1.4	2
e46d024b-10fe-4b4b-9463-ff263b0215b7	Alinha brinquedos ou outros objetos e fica chateado quando a ordem é alterada	TEA	1.6	5
812d294c-5c66-4368-9e86-da5b26cc0aec	Repete palavras ou frases repetidamente (ecolalia)	TEA	2	5
ed612bb8-dd1e-4d60-a1b4-85a61f457780	Brinca com os brinquedos da mesma maneira todas as vezes	TEA	2	5
fe975aca-d912-425d-b9ce-03d4bca80b8b	Está focado em partes de objetos (por exemplo, rodas)	TEA	1.6	5
4809fe85-e741-4188-841d-38126e25af2b	Tem interesses obsessivos ou segue certas rotinas e fica chateado se tiver mudanças nas rotinas	TEA	2	5
ec84f97c-8a61-4f01-a0b7-01563d4a9949	Bate as mãos, balança o corpo ou gira em círculos	TEA	1.6	5
f442a6f9-56b0-431a-961b-d95ba797cae7	Hábitos incomuns de comer e dormir	TEA	2	5
2a2a7e10-2e5d-42e1-83d4-3f5555a8a1cc	Problemas gastrointestinais (por exemplo, constipação)	TEA	1	5
5addffd0-6ead-4c9b-9d19-5b9c5ee71d74	Falta de medo ou mais medo do que o esperado	TEA	1	5
6caf5ec4-f59a-4b3d-8f93-96d5fc57c935	Falta de curiosidade e imaginação nas brincadeiras	TEA	2	5
4a7c03a4-dfce-460a-ab7d-77577b6aa1cc	Interesses sensoriais incomuns (luz, cheiro)	TEA	1	5
b9e0cd9f-c288-4fd4-b676-7b7de06116c8	Tem movimentos bizarros e repetitivos, geralmente complexos, que buscam certo objetivo	TEA	1	5
1794f31f-b235-4bdf-a998-7da8ae5daf9c	Criança com dificuldades para contar até 10 (um a um) e aprender som e letra	TEAp	4	5
69a16265-c0c1-42a4-bec6-0bd94fcc09f4	Dificuldade para ordenação por tamanho, quantidade e copiar números	TEAp	4	5
9ac37929-20c7-4c88-ad54-ef372869fbe7	Não consegue reconhecer as letras do próprio nome	TEAp	5	5
44d894f9-1024-4ff3-bfe1-7cc5407a6b28	Dificuldades para quebrar palavras faladas em sílabas (ex: quarto, separado em quar-to)	TEAp	5	5
a2a45d0a-3a5c-479b-b55e-513345a4581d	Dificuldade em reconhecer palavras que rimam (ex: gato, rato, pato)	TEAp	5	5
d4dd35ed-a364-488a-aa0d-f7119c3f7f41	Apresenta dificuldade com sequências (como os dias da semana) ou visuais (como sequências de blocos coloridos)	TEAp	5	5
\.


--
-- Data for Name: result; Type: TABLE DATA; Schema: public; Owner: sistema-web
--

COPY public.result (id, student_id, tdah_sum, tdah_result, tea_sum, tea_result, teap_sum, teap_result, di_sum, di_result) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: sistema-web
--

COPY public.students (id, name, age, gender, ethnicity, school, classrom, diagnostic, assessment, created_at, updated_at, professor_id, time_class) FROM stdin;
\.


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sistema-web
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: checklist checklist_pkey; Type: CONSTRAINT; Schema: public; Owner: sistema-web
--

ALTER TABLE ONLY public.checklist
    ADD CONSTRAINT checklist_pkey PRIMARY KEY (id);


--
-- Name: professors professors_pkey; Type: CONSTRAINT; Schema: public; Owner: sistema-web
--

ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_pkey PRIMARY KEY (id);


--
-- Name: quests quests_pkey; Type: CONSTRAINT; Schema: public; Owner: sistema-web
--

ALTER TABLE ONLY public.quests
    ADD CONSTRAINT quests_pkey PRIMARY KEY (id);


--
-- Name: result result_pkey; Type: CONSTRAINT; Schema: public; Owner: sistema-web
--

ALTER TABLE ONLY public.result
    ADD CONSTRAINT result_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: sistema-web
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: professors_email_key; Type: INDEX; Schema: public; Owner: sistema-web
--

CREATE UNIQUE INDEX professors_email_key ON public.professors USING btree (email);


--
-- Name: checklist checklist_quest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sistema-web
--

ALTER TABLE ONLY public.checklist
    ADD CONSTRAINT checklist_quest_id_fkey FOREIGN KEY (quest_id) REFERENCES public.quests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: checklist checklist_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sistema-web
--

ALTER TABLE ONLY public.checklist
    ADD CONSTRAINT checklist_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: result result_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sistema-web
--

ALTER TABLE ONLY public.result
    ADD CONSTRAINT result_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: students students_professor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sistema-web
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_professor_id_fkey FOREIGN KEY (professor_id) REFERENCES public.professors(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

