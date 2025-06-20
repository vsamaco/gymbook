SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '6c3e6032-71b3-4b25-9dfe-aef4fdd42339', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"vsamaco@gmail.com","user_id":"31abf3b0-6112-4227-90b3-6db3584bf227","user_phone":""}}', '2025-06-11 23:02:49.085516+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '31abf3b0-6112-4227-90b3-6db3584bf227', 'authenticated', 'authenticated', 'vsamaco@gmail.com', '$2a$10$l4z7zu7YJ/3l/.l6dn4YLuJkYnInECsNpYDvsyVQkFc4lmigMrTXO', '2025-06-11 23:02:49.09149+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-06-11 23:02:49.060508+00', '2025-06-11 23:02:49.092844+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('31abf3b0-6112-4227-90b3-6db3584bf227', '31abf3b0-6112-4227-90b3-6db3584bf227', '{"sub": "31abf3b0-6112-4227-90b3-6db3584bf227", "email": "vsamaco@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-06-11 23:02:49.078538+00', '2025-06-11 23:02:49.082026+00', '2025-06-11 23:02:49.082026+00', 'afc30654-cfce-4979-a862-8148f04f6b7d');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."activities" ("id", "exercise", "date", "description", "sets", "created_at") VALUES
	(2, '', '2022-09-02 00:00:00', '', '[]', '2025-06-20 05:48:57.23647+00'),
	(3, '', '2022-09-07 00:00:00', '', '[]', '2025-06-20 05:48:57.353241+00'),
	(4, '', '2022-09-13 00:00:00', '', '[]', '2025-06-20 05:48:57.4479+00'),
	(5, '', '2022-09-15 00:00:00', '', '[]', '2025-06-20 05:48:57.550353+00'),
	(6, '', '2022-09-20 00:00:00', '', '[]', '2025-06-20 05:48:57.662941+00'),
	(7, '', '2022-09-22 00:00:00', '', '[]', '2025-06-20 05:48:57.727209+00'),
	(8, '', '2022-09-24 00:00:00', '', '[]', '2025-06-20 05:48:57.788502+00'),
	(9, '', '2022-09-27 00:00:00', '', '[]', '2025-06-20 05:48:57.870067+00'),
	(10, '', '2022-09-29 00:00:00', '', '[]', '2025-06-20 05:48:57.975109+00'),
	(11, '', '2022-10-01 00:00:00', '', '[]', '2025-06-20 05:48:58.071564+00'),
	(12, '', '2022-10-03 00:00:00', '', '[]', '2025-06-20 05:48:58.173703+00'),
	(13, '', '2022-10-11 00:00:00', '', '[]', '2025-06-20 05:48:58.250391+00'),
	(14, '', '2022-10-13 00:00:00', '', '[]', '2025-06-20 05:48:58.350536+00'),
	(15, '', '2022-11-08 00:00:00', '', '[]', '2025-06-20 05:48:58.426049+00'),
	(16, '', '2022-11-10 00:00:00', '', '[]', '2025-06-20 05:48:58.510198+00'),
	(17, 'bench_press', '2022-11-15 00:00:00', '3x bench press (80%)', '[{"total": 125.0, "weights": "45/20/20", "repetitions": "3"}]', '2025-06-20 05:48:58.582702+00'),
	(18, 'front_squat', '2022-11-17 00:00:00', '6x front squat', '[{"total": 105.0, "weights": "45/15/15", "repetitions": "6"}]', '2025-06-20 05:48:58.647584+00'),
	(19, 'bench_press', '2022-11-22 00:00:00', '3x bench press 90%', '[{"total": 95.0, "weights": "45/15/10", "repetitions": "3"}]', '2025-06-20 05:48:58.747062+00'),
	(20, '', '2022-11-29 00:00:00', '', '[]', '2025-06-20 05:48:58.817405+00'),
	(21, '', '2022-12-01 00:00:00', '', '[]', '2025-06-20 05:48:58.885133+00'),
	(22, 'bench_press', '2022-12-13 00:00:00', '8x bench press', '[{"total": 105.0, "weights": "45/15/15", "repetitions": "8"}]', '2025-06-20 05:48:58.954763+00'),
	(23, 'sumo_deadlift', '2022-12-15 00:00:00', '8x sumo deadlift', '[{"total": 95.0, "weights": "45/15/10", "repetitions": "8"}]', '2025-06-20 05:48:59.034147+00'),
	(24, '', '2022-12-19 00:00:00', '', '[]', '2025-06-20 05:48:59.100026+00'),
	(25, 'bench_press', '2022-12-20 00:00:00', '5x  bench press 3s hold', '[{"total": 95.0, "weights": "45/15/10", "repetitions": "5"}]', '2025-06-20 05:48:59.199375+00'),
	(26, '', '2023-01-04 00:00:00', '', '[]', '2025-06-20 05:48:59.265426+00'),
	(27, '', '2023-01-07 00:00:00', '', '[]', '2025-06-20 05:48:59.330311+00'),
	(28, '', '2023-01-12 00:00:00', '', '[]', '2025-06-20 05:48:59.398455+00'),
	(29, 'bstance_deadlift', '2023-01-19 00:00:00', '5x 1-3-1-2 bstance deadlift', '[{"total": 75.0, "weights": "45/15", "repetitions": "5"}]', '2025-06-20 05:48:59.466416+00'),
	(30, '', '2023-01-23 00:00:00', '', '[]', '2025-06-20 05:48:59.535035+00'),
	(31, 'deadlift', '2023-01-25 00:00:00', '5x barbell continuous deadlift', '[{"total": 115.0, "weights": "45/15/10/10", "repetitions": "5"}]', '2025-06-20 05:48:59.605523+00'),
	(32, '', '2023-02-02 00:00:00', '', '[]', '2025-06-20 05:48:59.667041+00'),
	(33, '', '2023-02-07 00:00:00', '', '[]', '2025-06-20 05:48:59.733962+00'),
	(34, 'deadlift', '2023-02-09 00:00:00', '5x barbell deadlift 3-1-2-1', '[{"total": 115.0, "weights": "45/15/10/10", "repetitions": "5"}]', '2025-06-20 05:48:59.858903+00'),
	(35, '', '2023-02-11 00:00:00', '', '[]', '2025-06-20 05:48:59.92627+00'),
	(36, '', '2023-02-14 00:00:00', '', '[]', '2025-06-20 05:49:00.040514+00'),
	(37, '', '2023-02-16 00:00:00', '', '[]', '2025-06-20 05:49:00.134727+00'),
	(38, '', '2023-02-21 00:00:00', '', '[]', '2025-06-20 05:49:00.204526+00'),
	(39, 'romanian', '2023-02-24 00:00:00', '8x Romanian deadlift', '[{"total": 85.0, "weights": "45/15/5", "repetitions": "8"}]', '2025-06-20 05:49:00.296183+00'),
	(40, '', '2023-02-25 00:00:00', '', '[]', '2025-06-20 05:49:00.360838+00'),
	(41, 'sumo_deadlift', '2023-03-02 00:00:00', '10x sumo deadlift', '[{"total": 125.0, "weights": "45/15/15/10", "repetitions": "10"}]', '2025-06-20 05:49:00.457347+00'),
	(42, '', '2023-03-08 00:00:00', '', '[]', '2025-06-20 05:49:00.521207+00'),
	(43, '', '2023-03-12 00:00:00', '', '[]', '2025-06-20 05:49:00.586045+00'),
	(44, '', '2023-03-22 00:00:00', '', '[]', '2025-06-20 05:49:00.654024+00'),
	(45, 'romanian', '2023-03-23 00:00:00', '8x Romanian dl', '[{"total": 95.0, "weights": "45/10/10/5", "repetitions": "8"}]', '2025-06-20 05:49:00.724809+00'),
	(46, '', '2023-03-27 00:00:00', '', '[]', '2025-06-20 05:49:00.794247+00'),
	(47, '', '2023-03-30 00:00:00', '', '[]', '2025-06-20 05:49:00.87282+00'),
	(48, '', '2023-04-11 00:00:00', '', '[]', '2025-06-20 05:49:00.940817+00'),
	(49, '', '2023-04-13 00:00:00', '', '[]', '2025-06-20 05:49:01.003658+00'),
	(50, '', '2023-04-15 00:00:00', '', '[]', '2025-06-20 05:49:01.071883+00'),
	(51, '', '2023-04-17 00:00:00', '', '[]', '2025-06-20 05:49:01.147375+00'),
	(52, '', '2023-04-18 00:00:00', '', '[]', '2025-06-20 05:49:01.218829+00'),
	(53, '', '2023-04-10 00:00:00', '', '[]', '2025-06-20 05:49:01.287926+00'),
	(54, '', '2023-04-23 00:00:00', '', '[]', '2025-06-20 05:49:01.354096+00'),
	(55, '', '2023-04-25 00:00:00', '', '[]', '2025-06-20 05:49:01.42837+00'),
	(56, '', '2023-05-02 00:00:00', '', '[]', '2025-06-20 05:49:01.493773+00'),
	(57, '', '2023-05-05 00:00:00', '', '[]', '2025-06-20 05:49:01.569853+00'),
	(58, '', '2023-05-09 00:00:00', '', '[]', '2025-06-20 05:49:01.639756+00'),
	(59, '', '2023-05-10 00:00:00', '', '[]', '2025-06-20 05:49:01.715428+00'),
	(60, '', '2023-05-15 00:00:00', '', '[]', '2025-06-20 05:49:01.786365+00'),
	(61, '', '2023-05-19 00:00:00', '', '[]', '2025-06-20 05:49:01.854794+00'),
	(62, '', '2023-05-20 00:00:00', '', '[]', '2025-06-20 05:49:01.923705+00'),
	(63, 'sldl', '2023-05-25 00:00:00', 'Sldl', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 25, "weights": "25", "repetitions": "10"}]', '2025-06-20 05:49:01.991183+00'),
	(64, '', '2023-05-29 00:00:00', '', '[]', '2025-06-20 05:49:02.061345+00'),
	(65, '', '2023-05-29 00:00:00', '', '[]', '2025-06-20 05:49:02.130772+00'),
	(66, 'romanian', '2023-06-01 00:00:00', '12/10/8 Romanian deadlift', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "8"}]', '2025-06-20 05:49:02.194515+00'),
	(67, '', '2023-06-02 00:00:00', '', '[]', '2025-06-20 05:49:02.268201+00'),
	(68, '', '2023-06-05 00:00:00', '', '[]', '2025-06-20 05:49:02.364277+00'),
	(69, 'sumo_deadlift', '2023-06-08 00:00:00', 'Sumo deadlift ladder 8/6/4/4/6/8', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "4"}, {"total": 145.0, "weights": "45/25/10/15", "repetitions": "4"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}]', '2025-06-20 05:49:02.435746+00'),
	(70, '', '2023-06-12 00:00:00', '', '[]', '2025-06-20 05:49:02.503945+00'),
	(71, '', '2023-06-16 00:00:00', '', '[]', '2025-06-20 05:49:02.569294+00'),
	(72, 'front_squat', '2023-06-19 00:00:00', 'Front squats', '[{"total": 45, "weights": "45", "repetitions": "1"}, {"total": 65.0, "weights": "45/10", "repetitions": "2"}, {"total": 70.0, "weights": "45/10/2.5", "repetitions": "3"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "4"}, {"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "7"}]', '2025-06-20 05:49:02.631105+00'),
	(73, '', '2023-06-22 00:00:00', '', '[]', '2025-06-20 05:49:02.699268+00'),
	(74, 'bench_press', '2023-06-23 00:00:00', '50 Bench press', '[{"total": 45, "weights": "45", "repetitions": "1"}, {"total": 75.0, "weights": "45/15", "repetitions": "2"}, {"total": 65.0, "weights": "45/10", "repetitions": "4"}]', '2025-06-20 05:49:02.764972+00'),
	(105, '', '2023-10-16 00:00:00', '', '[]', '2025-06-20 05:49:05.370014+00'),
	(241, '', '2024-10-17 00:00:00', '', '[]', '2025-06-20 05:49:14.818551+00'),
	(75, 'front_squat', '2023-06-25 00:00:00', 'Bulgarian front squat', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "5"}, {"total": 70.0, "weights": "45/10/2.5", "repetitions": "5"}]', '2025-06-20 05:49:02.837214+00'),
	(76, 'romanian', '2023-06-29 00:00:00', 'Romanian deadlift, til or hips up', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "6"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "6"}]', '2025-06-20 05:49:02.915503+00'),
	(77, 'db_bench_press', '2023-06-03 00:00:00', 'Db bench press', '[{"total": 15, "weights": "15", "repetitions": "12"}, {"total": 15, "weights": "15", "repetitions": "10"}, {"total": 20, "weights": "20", "repetitions": "8"}]', '2025-06-20 05:49:02.983598+00'),
	(78, 'deadlift', '2023-06-06 00:00:00', 'Barbell deadlift 10/8/5', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "5"}]', '2025-06-20 05:49:03.052467+00'),
	(79, '', '2023-07-07 00:00:00', '', '[]', '2025-06-20 05:49:03.121558+00'),
	(80, 'bench_press', '2023-07-12 00:00:00', 'Barbell bench press', '[{"total": 75.0, "weights": "45/15", "repetitions": "4"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "3"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "3"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "3"}, {"total": 115.0, "weights": "45/15/15/5", "repetitions": "3"}]', '2025-06-20 05:49:03.196305+00'),
	(81, 'sumo_deadlift', '2023-07-13 00:00:00', 'Sumo deadlift 5x light', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "5"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "5"}]', '2025-06-20 05:49:03.263923+00'),
	(82, 'back_squat', '2023-07-17 00:00:00', 'Barbell back squat 8/5/3/3/3', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "5"}, {"total": 75.0, "weights": "45/15", "repetitions": "3"}]', '2025-06-20 05:49:03.341826+00'),
	(83, 'bench_press', '2023-07-18 00:00:00', 'Bench press waist level', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "5"}, {"total": 75.0, "weights": "45/15", "repetitions": "3"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "3"}]', '2025-06-20 05:49:03.413013+00'),
	(84, 'sumo_deadlift', '2023-07-25 00:00:00', 'Sumo deadlift', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "4"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "4"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}]', '2025-06-20 05:49:03.716887+00'),
	(85, 'back_squat', '2023-07-31 00:00:00', 'Barbell back squat 10/7/5/3', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 45, "weights": "45", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}]', '2025-06-20 05:49:03.874652+00'),
	(86, 'bench_press', '2023-08-01 00:00:00', 'Bench press 10/7/5/3', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "3"}]', '2025-06-20 05:49:03.940219+00'),
	(87, '', '2023-08-03 00:00:00', '', '[]', '2025-06-20 05:49:04.010662+00'),
	(88, 'back_squat', '2023-08-06 00:00:00', 'Back squat 5/5/3/3/3', '[{"total": 45, "weights": "45", "repetitions": "5"}, {"total": 65.0, "weights": "45/10", "repetitions": "5"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "3"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "3"}, {"total": 114.0, "weights": "44/15/10/10", "repetitions": "3"}]', '2025-06-20 05:49:04.080737+00'),
	(89, '', '2023-08-10 00:00:00', '', '[]', '2025-06-20 05:49:04.149498+00'),
	(90, 'back_squat', '2023-08-12 00:00:00', 'Back squat 3x max', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "6"}, {"total": 105.0, "weights": "45/15/10/5", "repetitions": "4"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "3"}, {"total": 125.0, "weights": "45/15/10/10/5", "repetitions": "3"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "5"}]', '2025-06-20 05:49:04.22745+00'),
	(91, '', '2023-08-17 00:00:00', '', '[]', '2025-06-20 05:49:04.300219+00'),
	(92, '', '2023-08-19 00:00:00', '', '[]', '2025-06-20 05:49:04.371451+00'),
	(93, 'front_squat', '2023-08-21 00:00:00', 'Front squat barbell', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 55.0, "weights": "45/5", "repetitions": "12"}, {"total": 55.0, "weights": "45/5", "repetitions": "10"}, {"total": 55.0, "weights": "45/5", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "6"}, {"total": 65.0, "weights": "45/10", "repetitions": "1"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "2"}, {"total": 95.0, "weights": "45/25", "repetitions": "3"}, {"total": 95.0, "weights": "45/25", "repetitions": "4"}]', '2025-06-20 05:49:04.448369+00'),
	(94, '', '2023-08-24 00:00:00', '', '[]', '2025-06-20 05:49:04.523982+00'),
	(95, 'reverse_lunge', '2023-08-26 00:00:00', 'Barbell reverse lunge', '[{"total": 45, "weights": "45", "repetitions": "6"}, {"total": 65.0, "weights": "45/10", "repetitions": "4"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "4"}, {"total": 105.0, "weights": "45/10/10/10", "repetitions": "3"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "5"}]', '2025-06-20 05:49:04.602497+00'),
	(96, '', '2023-09-01 00:00:00', '', '[]', '2025-06-20 05:49:04.676581+00'),
	(97, '', '2023-09-08 00:00:00', '', '[]', '2025-06-20 05:49:04.750427+00'),
	(98, '', '2023-09-11 00:00:00', '', '[]', '2025-06-20 05:49:04.845833+00'),
	(99, '', '2023-09-15 00:00:00', '', '[]', '2025-06-20 05:49:04.944509+00'),
	(100, '', '2023-09-18 00:00:00', '', '[]', '2025-06-20 05:49:05.013061+00'),
	(101, '', '2023-09-22 00:00:00', '', '[]', '2025-06-20 05:49:05.082564+00'),
	(102, '', '2023-09-25 00:00:00', '', '[]', '2025-06-20 05:49:05.147583+00'),
	(103, 'reverse_lunge', '2023-10-02 00:00:00', 'Reverse lunge', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 75.0, "weights": "45/15", "repetitions": "4"}, {"total": 75.0, "weights": "45/15", "repetitions": "3"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}]', '2025-06-20 05:49:05.217269+00'),
	(104, '', '2023-10-13 00:00:00', '', '[]', '2025-06-20 05:49:05.294241+00'),
	(106, 'back_squat', '2023-10-18 00:00:00', '3s back squat', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "5"}]', '2025-06-20 05:49:05.444521+00'),
	(107, '', '2023-10-22 00:00:00', '', '[]', '2025-06-20 05:49:05.513356+00'),
	(108, 'deadlift', '2023-10-30 00:00:00', 'Deadlift', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "8"}, {"total": 125.0, "weights": "45/15/10/10/5", "repetitions": "5"}]', '2025-06-20 05:49:05.588642+00'),
	(109, '', '2023-11-03 00:00:00', '', '[]', '2025-06-20 05:49:05.65891+00'),
	(110, '', '2023-11-06 00:00:00', '', '[]', '2025-06-20 05:49:05.728463+00'),
	(111, 'bench_press', '2023-11-07 00:00:00', 'Max bench press', '[{"total": 63.0, "weights": "33/10/5", "repetitions": "1"}, {"total": 73.0, "weights": "33/10/10", "repetitions": "2"}]', '2025-06-20 05:49:05.79334+00'),
	(112, '', '2023-11-09 00:00:00', '', '[]', '2025-06-20 05:49:05.858224+00'),
	(113, '', '2023-11-10 00:00:00', '', '[]', '2025-06-20 05:49:05.93081+00'),
	(114, 'deadlift', '2023-11-12 00:00:00', 'Deadlift 5x', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 75.0, "weights": "25/25", "repetitions": "5"}, {"total": 65.0, "weights": "35/15", "repetitions": "5"}, {"total": 85.0, "weights": "35/25", "repetitions": "5"}]', '2025-06-20 05:49:06.008125+00'),
	(115, 'bench_press', '2023-11-13 00:00:00', '50: Bench press', '[{"total": 75.0, "weights": "45/15", "repetitions": "15"}, {"total": 75.0, "weights": "45/15", "repetitions": "15"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}]', '2025-06-20 05:49:06.084449+00'),
	(116, '', '2023-11-16 00:00:00', '', '[]', '2025-06-20 05:49:06.171239+00'),
	(117, '', '2023-11-20 00:00:00', '', '[]', '2025-06-20 05:49:06.251661+00'),
	(118, 'bench_press', '2023-11-21 00:00:00', 'Max reps barbell bench press', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "12"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "8"}]', '2025-06-20 05:49:06.32642+00'),
	(119, '', '2023-11-22 00:00:00', '', '[]', '2025-06-20 05:49:06.396619+00'),
	(120, '', '2023-11-28 00:00:00', '', '[]', '2025-06-20 05:49:06.472045+00'),
	(121, 'front_squat', '2023-11-30 00:00:00', 'Front squat', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "4"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "4"}]', '2025-06-20 05:49:06.548764+00'),
	(122, '', '2023-12-01 00:00:00', '', '[]', '2025-06-20 05:49:06.618238+00'),
	(123, '', '2023-12-07 00:00:00', '', '[]', '2025-06-20 05:49:06.68555+00'),
	(124, 'bench_press', '2023-12-08 00:00:00', 'Tempo bench press', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}]', '2025-06-20 05:49:06.753826+00'),
	(125, '', '2023-12-11 00:00:00', '', '[]', '2025-06-20 05:49:06.824929+00'),
	(126, '', '2023-12-12 00:00:00', '', '[]', '2025-06-20 05:49:06.899771+00'),
	(127, 'bench_press', '2023-12-15 00:00:00', 'Barbell bench press', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "9"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "6"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "4"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "1"}]', '2025-06-20 05:49:06.970672+00'),
	(128, '', '2024-01-02 00:00:00', '', '[]', '2025-06-20 05:49:07.039218+00'),
	(129, 'sumo_deadlift', '2024-01-04 00:00:00', 'Sumo deadlift 10/7/5/3', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "7"}, {"total": 115.0, "weights": "45/10/10/15", "repetitions": "5"}, {"total": 135.0, "weights": "45/10/10/25", "repetitions": "3"}, {"total": 115.0, "weights": "45/10/10/15", "repetitions": "7"}]', '2025-06-20 05:49:07.114734+00'),
	(130, '', '2024-01-08 00:00:00', '', '[]', '2025-06-20 05:49:07.176377+00'),
	(131, '', '2024-01-11 00:00:00', '', '[]', '2025-06-20 05:49:07.241734+00'),
	(132, 'reverse_lunge', '2024-01-15 00:00:00', 'Barbell reverse lunge 9-3', '[{"total": 45, "weights": "45", "repetitions": "9"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "4"}]', '2025-06-20 05:49:07.305527+00'),
	(133, 'back_squat', '2024-01-22 00:00:00', 'Barbell back squat', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "5"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "3"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "7"}]', '2025-06-20 05:49:07.380822+00'),
	(134, '', '2024-01-26 00:00:00', '', '[]', '2025-06-20 05:49:07.445454+00'),
	(135, 'front_squat', '2024-01-29 00:00:00', 'Front squat 5x', '[{"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "4"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}]', '2025-06-20 05:49:07.512306+00'),
	(136, '', '2024-02-02 00:00:00', '', '[]', '2025-06-20 05:49:07.584715+00'),
	(137, 'deadlift', '2024-02-05 00:00:00', 'Barbell deadlift 12/10/8/8/10/12', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}]', '2025-06-20 05:49:07.660542+00'),
	(138, 'back_squat', '2024-02-12 00:00:00', 'Barbell back squat 6x', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "6"}, {"total": 95.0, "weights": "45/25", "repetitions": "2"}, {"total": 115.0, "weights": "45/35", "repetitions": "3"}]', '2025-06-20 05:49:07.724937+00'),
	(139, 'deadlift', '2024-02-19 00:00:00', 'Conventional deadlift 5/3 max', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "8"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/15/5", "repetitions": "5"}, {"total": 145.0, "weights": "45/25/15/5/5", "repetitions": "5"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "7"}]', '2025-06-20 05:49:07.791175+00'),
	(140, '', '2024-02-22 00:00:00', '', '[]', '2025-06-20 05:49:07.8753+00'),
	(141, '', '2024-02-26 00:00:00', '', '[]', '2025-06-20 05:49:07.958576+00'),
	(142, '', '2024-03-01 00:00:00', '', '[]', '2025-06-20 05:49:08.02397+00'),
	(143, 'deadlift', '2024-03-04 00:00:00', 'Deadlift 2s pause knee', '[{"total": 103.0, "weights": "33/10/10/15", "repetitions": "4"}, {"total": 173.0, "weights": "33/10/35/15/10", "repetitions": "4"}, {"total": 153.0, "weights": "33/10/35/15", "repetitions": "4"}]', '2025-06-20 05:49:08.0881+00'),
	(144, 'sldl', '2024-03-11 00:00:00', 'SLDL', '[{"total": 65.0, "weights": "45/10", "repetitions": "4"}, {"total": 70.0, "weights": "45/10/2.5", "repetitions": "4"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "4"}, {"total": 80.0, "weights": "45/10/5/2.5", "repetitions": "4"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}, {"total": 115.0, "weights": "45/10/25", "repetitions": "6"}, {"total": 145.0, "weights": "45/10/25/15", "repetitions": "5"}]', '2025-06-20 05:49:08.16011+00'),
	(145, '', '2024-03-15 00:00:00', '', '[]', '2025-06-20 05:49:08.230681+00'),
	(146, 'deadlift', '2024-03-18 00:00:00', 'Conventions deadlift', '[{"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "8"}, {"total": 135.0, "weights": "45/25/15/5", "repetitions": "5"}, {"total": 145.0, "weights": "45/25/15/10", "repetitions": "3"}, {"total": 155.0, "weights": "45/25/15/10/5", "repetitions": "2"}]', '2025-06-20 05:49:08.296173+00'),
	(147, '', '2024-03-21 00:00:00', '', '[]', '2025-06-20 05:49:08.355281+00'),
	(148, 'deadlift', '2024-03-21 00:00:00', 'Barbell deadlift test', '[{"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "6"}, {"total": 133.0, "weights": "33/10/15/25", "repetitions": "7"}]', '2025-06-20 05:49:08.428059+00'),
	(149, '', '2024-03-29 00:00:00', '', '[]', '2025-06-20 05:49:08.512425+00'),
	(150, 'romanian', '2024-04-01 00:00:00', 'barbell Romanian deadlift 8x ramp weight', '[{"total": 33, "weights": "33", "repetitions": "8"}, {"total": 53.0, "weights": "33/10", "repetitions": "8"}, {"total": 63.0, "weights": "33/15", "repetitions": "8"}, {"total": 83.0, "weights": "33/15/10", "repetitions": "8"}]', '2025-06-20 05:49:08.584454+00'),
	(151, 'back_squat', '2024-04-04 00:00:00', 'Back squat 5s tempo', '[{"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}]', '2025-06-20 05:49:08.657123+00'),
	(152, 'reverse_lunge', '2024-04-08 00:00:00', 'Barbell reverse lunge 3x max', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "5"}]', '2025-06-20 05:49:08.722922+00'),
	(153, '', '2024-04-12 00:00:00', '', '[]', '2025-06-20 05:49:08.789206+00'),
	(154, 'bulgarian', '2024-04-15 00:00:00', '7x Kb Front Bulgarian split squat', '[{"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "7"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "7"}]', '2025-06-20 05:49:08.851788+00'),
	(155, '', '2024-04-16 00:00:00', '', '[]', '2025-06-20 05:49:08.915585+00'),
	(156, '', '2024-04-18 00:00:00', '', '[]', '2025-06-20 05:49:08.995489+00'),
	(157, 'reverse_lunge', '2024-04-22 00:00:00', 'Barbell reverse lunge', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/25", "repetitions": "4"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "4"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}, {"total": 45, "weights": "45", "repetitions": "1"}, {"total": 55.0, "weights": "45/5", "repetitions": "2"}, {"total": 55.0, "weights": "45/5", "repetitions": "3"}, {"total": 65.0, "weights": "45/10", "repetitions": "4"}]', '2025-06-20 05:49:09.056742+00'),
	(158, '', '2024-04-26 00:00:00', '', '[]', '2025-06-20 05:49:09.115527+00'),
	(159, 'reverse_lunge', '2024-04-28 00:00:00', 'Bb reverse lunge 4x 5R', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/25", "repetitions": "4"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "4"}]', '2025-06-20 05:49:09.181016+00'),
	(160, '', '2024-04-30 00:00:00', '', '[]', '2025-06-20 05:49:09.247381+00'),
	(161, 'sldl', '2024-05-02 00:00:00', 'Barbell SLDL 6x3 4x3', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "4"}]', '2025-06-20 05:49:09.307261+00'),
	(162, '', '2024-05-03 00:00:00', '', '[]', '2025-06-20 05:49:09.375037+00'),
	(163, 'bulgarian', '2024-05-06 00:00:00', '7 bb Bulgarian spit squat 2/4 rounds', '[{"total": 45, "weights": "45", "repetitions": "7"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}]', '2025-06-20 05:49:09.45405+00'),
	(164, '', '2024-05-07 00:00:00', '', '[]', '2025-06-20 05:49:09.534784+00'),
	(165, 'bstance_deadlift', '2024-05-09 00:00:00', 'SL bstance deadlift 6xR6', '[{"total": 45, "weights": "45", "repetitions": "6"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "6"}]', '2025-06-20 05:49:09.602126+00'),
	(166, 'reverse_lunge', '2024-05-13 00:00:00', 'Bb reverse lunge 3x max', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "4"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "3"}, {"total": 135.0, "weights": "45/45", "repetitions": "4"}]', '2025-06-20 05:49:09.667516+00'),
	(167, '', '2024-05-14 00:00:00', '', '[]', '2025-06-20 05:49:09.739708+00'),
	(168, 'sldl', '2024-05-15 00:00:00', 'Bb SLDL 8/6/5', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}]', '2025-06-20 05:49:09.804531+00'),
	(169, 'front_squat', '2024-05-20 00:00:00', 'BB Front squat 10/10/8/8/6/6', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "6"}]', '2025-06-20 05:49:09.86949+00'),
	(170, '', '2024-05-21 00:00:00', '', '[]', '2025-06-20 05:49:09.940188+00'),
	(171, '', '2024-05-24 00:00:00', '', '[]', '2025-06-20 05:49:10.003903+00'),
	(172, '', '2024-05-28 00:00:00', '', '[]', '2025-06-20 05:49:10.075501+00'),
	(173, 'back_squat', '2024-05-30 00:00:00', 'Barbell back squat', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "7"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "3"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "5"}]', '2025-06-20 05:49:10.154595+00'),
	(174, 'back_squat', '2024-06-03 00:00:00', '8x 70% back squat 2s btm pause', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "10"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "8"}]', '2025-06-20 05:49:10.236519+00'),
	(175, '', '2024-06-04 00:00:00', '', '[]', '2025-06-20 05:49:10.304281+00'),
	(176, 'sumo_deadlift', '2024-06-06 00:00:00', 'Sumo deadlift', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "10"}]', '2025-06-20 05:49:10.370634+00'),
	(177, '', '2024-06-07 00:00:00', '', '[]', '2025-06-20 05:49:10.444601+00'),
	(178, '', '2024-06-10 00:00:00', '', '[]', '2025-06-20 05:49:10.51963+00'),
	(179, '', '2024-06-11 00:00:00', '', '[]', '2025-06-20 05:49:10.584985+00'),
	(180, 'back_squat', '2024-06-17 00:00:00', '85 back squats 4x  tempo', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "4"}]', '2025-06-20 05:49:10.650077+00'),
	(181, 'bench_press', '2024-06-18 00:00:00', 'Bench press 70x total', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}]', '2025-06-20 05:49:10.714393+00'),
	(182, '', '2024-06-20 00:00:00', '', '[]', '2025-06-20 05:49:10.773192+00'),
	(183, '', '2024-06-21 00:00:00', '', '[]', '2025-06-20 05:49:10.844007+00'),
	(184, 'back_squat', '2024-06-22 00:00:00', 'Bb back squat 90 3rpm', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "6"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "6"}, {"total": 145.0, "weights": "45/15/15/10/10", "repetitions": "4"}]', '2025-06-20 05:49:10.909934+00'),
	(185, 'romanian', '2024-06-27 00:00:00', 'BB Romanian deadlift ramp 5x', '[{"total": 65.0, "weights": "45/10", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "7"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}]', '2025-06-20 05:49:10.975369+00'),
	(186, '', '2024-06-28 00:00:00', '', '[]', '2025-06-20 05:49:11.040167+00'),
	(187, 'back_squat', '2024-07-01 00:00:00', 'Bb back squat', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "5"}, {"total": 165.0, "weights": "45/25/25/10", "repetitions": "3"}, {"total": 175.0, "weights": "45/25/25/15", "repetitions": "3"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}]', '2025-06-20 05:49:11.108444+00'),
	(188, 'bench_press', '2024-07-02 00:00:00', 'Alt bench press 25', '[{"total": 0, "weights": "0", "repetitions": "3"}]', '2025-06-20 05:49:11.17835+00'),
	(189, 'deadlift', '2024-07-08 00:00:00', 'BB deadlift 3x test', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 135.0, "weights": "45/45", "repetitions": "7"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}]', '2025-06-20 05:49:11.244952+00'),
	(190, 'bench_press', '2024-07-09 00:00:00', 'BB bench press 3x test', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}, {"total": 105.0, "weights": "45/15/10/5", "repetitions": "3"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "3"}]', '2025-06-20 05:49:11.303963+00'),
	(191, '', '2024-07-10 00:00:00', '', '[]', '2025-06-20 05:49:11.380046+00'),
	(192, 'front_squat', '2024-07-15 00:00:00', '3x front squat', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "3"}]', '2025-06-20 05:49:11.442204+00'),
	(193, 'bench_press', '2024-07-16 00:00:00', 'BB bench press 5x', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "7"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-20 05:49:11.511758+00'),
	(194, 'bench_press', '2024-07-18 00:00:00', 'Incline bench press 12x', '[{"total": 25, "weights": "25", "repetitions": "12"}, {"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "3"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "3"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}]', '2025-06-20 05:49:11.56907+00'),
	(195, 'bench_press', '2024-07-23 00:00:00', 'BB bench press 2x rahill/hans', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "4"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "2"}, {"total": 135.0, "weights": "45/35/10", "repetitions": "2"}, {"total": 115.0, "weights": "45/35", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 45, "weights": "45", "repetitions": "15"}]', '2025-06-20 05:49:11.635809+00'),
	(196, 'bstance_deadlift', '2024-07-24 00:00:00', 'Bstance deadlift 5x', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "6"}, {"total": 65.0, "weights": "45/10", "repetitions": "5"}]', '2025-06-20 05:49:11.705076+00'),
	(197, 'bb_oh_press', '2024-07-25 00:00:00', 'BB OH press 8 to 3', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 80.0, "weights": "45/15/2.5", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "4"}]', '2025-06-20 05:49:11.777977+00'),
	(238, 'bulgarian', '2024-10-14 00:00:00', 'Bulgarian split squat 8/6/4/3/max', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "4"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "3"}, {"total": 125.0, "weights": "45/10/15/10/5", "repetitions": "3"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "5"}]', '2025-06-20 05:49:14.620284+00'),
	(198, 'sumo_deadlift', '2024-07-29 00:00:00', 'Bb sumo deadlift 3x', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "3"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "3"}, {"total": 165.0, "weights": "45/35/25", "repetitions": "3"}, {"total": 145.0, "weights": "45/35/15", "repetitions": "5"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "12"}]', '2025-06-20 05:49:11.845012+00'),
	(199, 'bench_press', '2024-07-30 00:00:00', 'Bench press 3x', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/15/5/5", "repetitions": "3"}, {"total": 125.0, "weights": "45/10/15/15", "repetitions": "3"}, {"total": 125.0, "weights": "45/10/15/15", "repetitions": "3"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "10"}]', '2025-06-20 05:49:11.911127+00'),
	(200, 'bulgarian', '2024-08-01 00:00:00', 'Bulgarian split squat 3s down 5x', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "6"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}]', '2025-06-20 05:49:11.981366+00'),
	(201, '', '2024-08-02 00:00:00', '', '[]', '2025-06-20 05:49:12.049528+00'),
	(202, 'front_squat', '2024-08-05 00:00:00', 'front squat 3x', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 145.0, "weights": "45/25/15/10", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "7"}]', '2025-06-20 05:49:12.122447+00'),
	(203, 'bench_press', '2024-08-06 00:00:00', 'Bench press 5x', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "8"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "6"}, {"total": 120.0, "weights": "45/25/10/2.5", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "6"}]', '2025-06-20 05:49:12.205898+00'),
	(204, 'romanian', '2024-08-08 00:00:00', 'Romanian dl 12/10/8', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}]', '2025-06-20 05:49:12.274891+00'),
	(205, '', '2024-08-09 00:00:00', '', '[]', '2025-06-20 05:49:12.350901+00'),
	(206, 'reverse_lunge', '2024-08-12 00:00:00', 'Bb reverse lunge 8/6/5/5/3', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "6"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/15/10/15", "repetitions": "5"}, {"total": 145.0, "weights": "45/15/15/10/10", "repetitions": "3"}]', '2025-06-20 05:49:12.41473+00'),
	(207, 'bench_press', '2024-08-13 00:00:00', 'W6 Bench press 8/5/3/2/2/2', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "2"}, {"total": 129.0, "weights": "34/25/10/10/2.5", "repetitions": "2"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "12"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "15"}]', '2025-06-20 05:49:12.4731+00'),
	(208, '', '2024-08-15 00:00:00', '', '[]', '2025-06-20 05:49:12.543943+00'),
	(209, '', '2024-08-16 00:00:00', '', '[]', '2025-06-20 05:49:12.608186+00'),
	(210, 'back_squat', '2024-08-19 00:00:00', 'BB back squat tempo 4d', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-20 05:49:12.67307+00'),
	(211, '', '2024-08-20 00:00:00', '', '[]', '2025-06-20 05:49:12.751108+00'),
	(212, 'romanian', '2024-08-22 00:00:00', 'Romanian deadlift 12/8/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "8"}, {"total": 115.0, "weights": "45/10/10/15", "repetitions": "5"}]', '2025-06-20 05:49:12.814836+00'),
	(213, 'deadlift', '2024-08-26 00:00:00', 'BB deadlift 3x max', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "6"}, {"total": 145.0, "weights": "45/10/15/25", "repetitions": "4"}, {"total": 165.0, "weights": "45/10/15/25/10", "repetitions": "3"}, {"total": 185.0, "weights": "45/10/15/25/10/10", "repetitions": "3"}, {"total": 145.0, "weights": "45/10/15/25", "repetitions": "5"}]', '2025-06-20 05:49:12.890196+00'),
	(214, '', '2024-08-28 00:00:00', '', '[]', '2025-06-20 05:49:12.966588+00'),
	(215, 'back_squat', '2024-08-29 00:00:00', 'BB back squat depth 12/10/8', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "8"}]', '2025-06-20 05:49:13.031149+00'),
	(216, 'bench_press', '2024-08-30 00:00:00', 'BB bench press 12/10/7/5/3', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "7"}, {"total": 105.0, "weights": "45/15/10/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "3"}, {"total": 125.0, "weights": "45/15/10/10/5", "repetitions": "3"}, {"total": 130.0, "weights": "45/15/10/10/5/2.5", "repetitions": "3"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "5"}]', '2025-06-20 05:49:13.096652+00'),
	(217, '', '2024-09-02 00:00:00', '', '[]', '2025-06-20 05:49:13.164161+00'),
	(218, '', '2024-09-05 00:00:00', '', '[]', '2025-06-20 05:49:13.250226+00'),
	(219, 'bench_press', '2024-09-06 00:00:00', 'Bb bench press ladder 10-1', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "9"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "7"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "6"}, {"total": 105.0, "weights": "45/15/10/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/35", "repetitions": "4"}, {"total": 125.0, "weights": "45/35/5", "repetitions": "3"}, {"total": 135.0, "weights": "45/35/10", "repetitions": "2"}, {"total": 140.0, "weights": "45/35/10/2.5", "repetitions": "1"}]', '2025-06-20 05:49:13.318595+00'),
	(239, '', '2024-10-15 00:00:00', '', '[]', '2025-06-20 05:49:14.681869+00'),
	(220, 'deadlift', '2024-09-09 00:00:00', 'Conventional Deadlift 10/8/5/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 145.0, "weights": "45/25/25", "repetitions": "5"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "10"}, {"total": 135.0, "weights": "45/45", "repetitions": "10"}]', '2025-06-20 05:49:13.389749+00'),
	(221, 'bb_oh_press', '2024-09-10 00:00:00', 'Bb oh press 10/7/5/3/3', '[{"total": 33, "weights": "33", "repetitions": "10"}, {"total": 53.0, "weights": "33/10", "repetitions": "7"}, {"total": 73.0, "weights": "33/10/10", "repetitions": "5"}, {"total": 83.0, "weights": "33/10/15", "repetitions": "3"}, {"total": 88.0, "weights": "33/10/15/2.5", "repetitions": "3"}, {"total": 73.0, "weights": "33/10/10", "repetitions": "7"}, {"total": 58.0, "weights": "33/10/2.5", "repetitions": "12"}, {"total": 53.0, "weights": "33/10", "repetitions": "25"}]', '2025-06-20 05:49:13.463743+00'),
	(222, 'back_squat', '2024-09-12 00:00:00', 'BB Wide back squat  10/8/6/5/5', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 115.0, "weights": "45/35", "repetitions": "6"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 174.0, "weights": "34/45/25", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "8"}]', '2025-06-20 05:49:13.543127+00'),
	(223, 'bench_press', '2024-09-13 00:00:00', 'Bench press 8/6/4/2/2/2', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "6"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "4"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "2"}, {"total": 135.0, "weights": "45/45", "repetitions": "2"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "2"}, {"total": 115.0, "weights": "45/35", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "15"}]', '2025-06-20 05:49:13.609787+00'),
	(224, '', '2024-09-16 00:00:00', '', '[]', '2025-06-20 05:49:13.672306+00'),
	(225, '', '2024-09-17 00:00:00', '', '[]', '2025-06-20 05:49:13.735501+00'),
	(226, 'back_squat', '2024-09-20 00:00:00', 'Bb back squat box 12/10', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}]', '2025-06-20 05:49:13.796412+00'),
	(227, '', '2024-09-23 00:00:00', '', '[]', '2025-06-20 05:49:13.864597+00'),
	(228, '', '2024-09-24 00:00:00', '', '[]', '2025-06-20 05:49:13.934203+00'),
	(229, 'back_squat', '2024-09-26 00:00:00', 'Heel elevated back squat 10/8/8', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}]', '2025-06-20 05:49:14.00043+00'),
	(230, 'bench_press', '2024-09-27 00:00:00', 'Bench press ladder 10-1', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "9"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "7"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "6"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "4"}, {"total": 135.0, "weights": "45/45", "repetitions": "3"}, {"total": 136.0, "weights": "45/45/0.5", "repetitions": "2"}, {"total": 146.0, "weights": "45/45/5/0.5", "repetitions": "1"}]', '2025-06-20 05:49:14.067573+00'),
	(231, 'deadlift', '2024-09-30 00:00:00', 'Deadlift 10/8/5/3/1/1/1', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 125.0, "weights": "45/15/25", "repetitions": "8"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 205.0, "weights": "45/45/25/10", "repetitions": "3"}, {"total": 215.0, "weights": "45/45/25/15", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "10"}]', '2025-06-20 05:49:14.140399+00'),
	(232, 'back_squat', '2024-10-02 00:00:00', 'Wide stance back squats 8/8', '[{"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}, {"total": 145.0, "weights": "45/25/15/10", "repetitions": "8"}]', '2025-06-20 05:49:14.210466+00'),
	(233, 'bench_press', '2024-10-04 00:00:00', 'Max Bench press 12/8/5/3/3', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/25", "repetitions": "3"}, {"total": 135.0, "weights": "45/10/25/10", "repetitions": "3"}, {"total": 145.0, "weights": "45/10/25/15", "repetitions": "3"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "5"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "12"}]', '2025-06-20 05:49:14.283027+00'),
	(234, 'front_squat', '2024-10-07 00:00:00', 'Front squat 6/6/6/6', '[{"total": 45, "weights": "45", "repetitions": "6"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}]', '2025-06-20 05:49:14.347861+00'),
	(235, 'bench_press', '2024-10-08 00:00:00', 'Incline bench press', '[{"total": 25, "weights": "25", "repetitions": "12"}, {"total": 30, "weights": "30", "repetitions": "12"}]', '2025-06-20 05:49:14.40733+00'),
	(236, 'romanian', '2024-10-10 00:00:00', 'BB Romanian deadlift 12/10/8x5', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}]', '2025-06-20 05:49:14.477036+00'),
	(237, 'bench_press', '2024-10-11 00:00:00', 'Bench press 12/10', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "8"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "8"}]', '2025-06-20 05:49:14.554454+00'),
	(240, 'sldl', '2024-10-15 00:00:00', 'Bb sldl 8/6/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "6"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}]', '2025-06-20 05:49:14.752237+00'),
	(242, 'reverse_lunge', '2024-10-21 00:00:00', 'Bb reverse lunge 8/6/5/5', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "8"}]', '2025-06-20 05:49:14.887655+00'),
	(243, '', '2024-10-22 00:00:00', '', '[]', '2025-06-20 05:49:14.968828+00'),
	(244, 'bstance_deadlift', '2024-10-24 00:00:00', 'Bstance Deadlift 5/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-20 05:49:15.036168+00'),
	(245, '', '2024-10-25 00:00:00', '', '[]', '2025-06-20 05:49:15.098677+00'),
	(246, 'bulgarian', '2024-10-28 00:00:00', 'Bulgarian split squat 7/6/5/4/3', '[{"total": 45, "weights": "45", "repetitions": "7"}, {"total": 75.0, "weights": "45/15", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/5/5", "repetitions": "4"}]', '2025-06-20 05:49:15.182087+00'),
	(247, 'reverse_lunge', '2024-11-11 00:00:00', 'Bb reverse lunge 7/6/5/4/3/2/1', '[{"total": 45, "weights": "45", "repetitions": "7"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "5"}, {"total": 105.0, "weights": "45/15/10/5", "repetitions": "4"}, {"total": 125.0, "weights": "45/15/10/10/5", "repetitions": "3"}, {"total": 135.0, "weights": "45/15/10/10/5/5", "repetitions": "2"}, {"total": 135.0, "weights": "45/15/10/10/5/5", "repetitions": "1"}]', '2025-06-20 05:49:15.240233+00'),
	(248, '', '2024-11-12 00:00:00', '', '[]', '2025-06-20 05:49:15.328615+00'),
	(249, 'sldl', '2024-11-13 00:00:00', 'SLDL 7/6/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-20 05:49:15.423228+00'),
	(250, 'bulgarian', '2024-11-18 00:00:00', 'Bulgarian split squat 8/6/4/3', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "4"}, {"total": 115.0, "weights": "45/10/25", "repetitions": "3"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "5"}]', '2025-06-20 05:49:15.496571+00'),
	(251, '', '2024-11-19 00:00:00', '', '[]', '2025-06-20 05:49:15.560362+00'),
	(252, 'bstance_deadlift', '2024-11-21 00:00:00', 'Bstance deadlift 7/6', '[{"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "5"}]', '2025-06-20 05:49:15.630955+00'),
	(253, '', '2024-11-22 00:00:00', '', '[]', '2025-06-20 05:49:15.699275+00'),
	(254, '', '2024-11-24 00:00:00', '', '[]', '2025-06-20 05:49:15.761422+00'),
	(255, 'bench_press', '2024-11-25 00:00:00', 'Bench press ladder 10-1', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "9"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/35", "repetitions": "4"}, {"total": 115.0, "weights": "45/35", "repetitions": "3"}, {"total": 125.0, "weights": "45/35/5", "repetitions": "2"}, {"total": 125.0, "weights": "45/35/5", "repetitions": "1"}]', '2025-06-20 05:49:15.822126+00'),
	(256, 'back_squat', '2024-12-02 00:00:00', 'Bb back squat 12/12/8/8/4/4', '[{"total": 95.0, "weights": "45/25", "repetitions": "12"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "12"}, {"total": 115.0, "weights": "45/25/5/5", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}, {"total": 135.0, "weights": "45/25/15/5", "repetitions": "4"}, {"total": 155.0, "weights": "45/25/15/5/10", "repetitions": "4"}]', '2025-06-20 05:49:15.889822+00'),
	(257, '', '2024-12-02 00:00:00', '', '[]', '2025-06-20 05:49:15.969688+00'),
	(258, 'sumo_deadlift', '2024-12-09 00:00:00', 'Bb sumo deadlift 10/8/6/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 115.0, "weights": "45/35", "repetitions": "8"}, {"total": 135.0, "weights": "45/35/10", "repetitions": "6"}, {"total": 165.0, "weights": "45/35/25", "repetitions": "5"}]', '2025-06-20 05:49:16.042677+00'),
	(259, 'bench_press', '2024-12-13 00:00:00', 'Bb bench press 8/5/3 3x 10s pause', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "3"}, {"total": 80.0, "weights": "45/15/2.5", "repetitions": "3"}]', '2025-06-20 05:49:16.104514+00'),
	(260, 'reverse_lunge', '2024-12-16 00:00:00', 'Bb reverse lunge 7 to 1', '[{"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "4"}, {"total": 135.0, "weights": "45/45", "repetitions": "3"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "2"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "1"}]', '2025-06-20 05:49:16.174837+00'),
	(261, '', '2025-01-02 00:00:00', '', '[]', '2025-06-20 05:49:16.256677+00'),
	(262, 'back_squat', '2025-01-06 00:00:00', 'Bb back squat 12/10/8/6/5', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "6"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}]', '2025-06-20 05:49:16.335163+00'),
	(263, 'bench_press', '2025-01-07 00:00:00', 'Bb Bench press 12/8/6/4/3', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "4"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "3"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}]', '2025-06-20 05:49:16.39906+00'),
	(264, 'back_squat', '2025-01-11 00:00:00', 'Back squat 10/8/6/4', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "6"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "4"}, {"total": 175.0, "weights": "45/45/15/5", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "7"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "10"}]', '2025-06-20 05:49:16.468548+00'),
	(265, 'bench_press', '2025-01-14 00:00:00', 'Bench press 85% 3rpm 12/10/7/6', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "10"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "7"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "6"}]', '2025-06-20 05:49:16.533198+00'),
	(266, 'back_squat', '2025-01-20 00:00:00', 'Bb back squat 10/7/7', '[{"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "7"}, {"total": 145.0, "weights": "45/25/25", "repetitions": "7"}, {"total": 165.0, "weights": "45/25/25/10", "repetitions": "5"}]', '2025-06-20 05:49:16.594561+00'),
	(267, 'bench_press', '2025-01-21 00:00:00', 'Bench press 95% 3rpm 12/10/7/5', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "10"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "7"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-20 05:49:16.672421+00'),
	(268, 'back_squat', '2025-01-27 00:00:00', 'Bb back squat 12/8/5/3', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "3"}]', '2025-06-20 05:49:16.736908+00'),
	(269, 'bench_press', '2025-01-28 00:00:00', 'Bench press 3rpm 10/7/5/5/3', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "7"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "3"}]', '2025-06-20 05:49:16.80578+00'),
	(270, 'back_squat', '2025-02-03 00:00:00', 'Back squat 12/8/5/3/3 95%rpm', '[{"total": 95.0, "weights": "45/25", "repetitions": "12"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 175.0, "weights": "45/45/15/5", "repetitions": "3"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "7"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "10"}, {"total": 135.0, "weights": "45/45", "repetitions": "12"}]', '2025-06-20 05:49:16.878839+00'),
	(271, 'bench_press', '2025-02-04 00:00:00', 'Bench press 12/10/7/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "7"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-20 05:49:16.957216+00'),
	(272, 'back_squat', '2025-02-10 00:00:00', 'Back squat 12/10/7/5/3 3rpm', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "7"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 195.0, "weights": "45/45/25/5", "repetitions": "3"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 30, "weights": "30", "repetitions": "10"}, {"total": 30, "weights": "30", "repetitions": "7"}, {"total": 35, "weights": "35", "repetitions": "5"}]', '2025-06-20 05:49:17.01853+00'),
	(273, '', '2025-02-17 00:00:00', '', '[]', '2025-06-20 05:49:17.082898+00'),
	(274, '', '2025-02-18 00:00:00', '', '[]', '2025-06-20 05:49:17.149189+00'),
	(275, 'reverse_lunge', '2025-03-09 00:00:00', 'Bb reverse lunge 8-3', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "7"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "6"}, {"total": 125.0, "weights": "45/10/15/10/5", "repetitions": "5"}, {"total": 125.0, "weights": "45/10/15/15", "repetitions": "4"}, {"total": 135.0, "weights": "45/10/15/15/5", "repetitions": "3"}]', '2025-06-20 05:49:17.219929+00'),
	(276, '', '2025-03-10 00:00:00', '', '[]', '2025-06-20 05:49:17.299889+00'),
	(277, 'back_squat', '2025-03-17 00:00:00', 'Bb back squat 12/10/8', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 125.0, "weights": "45/15/25", "repetitions": "10"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "8"}]', '2025-06-20 05:49:17.380075+00'),
	(278, '', '2025-03-18 00:00:00', '', '[]', '2025-06-20 05:49:17.463875+00'),
	(279, 'bb_oh_press', '2025-03-20 00:00:00', 'BB OH press 12/8/6/5', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 80.0, "weights": "45/10/5/2.5", "repetitions": "5"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 55.0, "weights": "45/5", "repetitions": "25"}, {"total": 45, "weights": "45", "repetitions": "50"}]', '2025-06-20 05:49:17.533744+00'),
	(280, 'front_squat', '2025-03-24 00:00:00', 'Front squat 8/6', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-20 05:49:17.597393+00'),
	(281, '', '2025-03-25 00:00:00', '', '[]', '2025-06-20 05:49:17.669548+00'),
	(282, 'sumo_deadlift', '2025-03-31 00:00:00', 'Bb sumo deadlift 12/10/8', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 125.0, "weights": "45/15/25", "repetitions": "8"}, {"total": 155.0, "weights": "45/15/25/15", "repetitions": "7"}]', '2025-06-20 05:49:17.732508+00'),
	(283, '', '2025-04-01 00:00:00', '', '[]', '2025-06-20 05:49:17.789853+00'),
	(284, 'back_squat', '2025-04-07 00:00:00', 'Bb back squat 12/7', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 115.0, "weights": "45/35", "repetitions": "5"}, {"total": 145.0, "weights": "45/35/15", "repetitions": "5"}]', '2025-06-20 05:49:17.852777+00'),
	(285, '', '2025-04-08 00:00:00', '', '[]', '2025-06-20 05:49:17.921133+00'),
	(286, 'deadlift', '2025-04-14 00:00:00', 'BB Deadlift 12/10/7/5/3', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 125.0, "weights": "45/15/25", "repetitions": "10"}, {"total": 165.0, "weights": "45/15/45", "repetitions": "7"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "5"}, {"total": 215.0, "weights": "45/45/25/15", "repetitions": "3"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "8"}]', '2025-06-20 05:49:18.058966+00'),
	(287, 'db_bench_press', '2025-04-15 00:00:00', 'DB bench press 10/8/6', '[{"total": 30, "weights": "30", "repetitions": "10"}, {"total": 35, "weights": "35", "repetitions": "8"}, {"total": 40, "weights": "40", "repetitions": "6"}, {"total": 50, "weights": "50", "repetitions": "5"}, {"total": 35, "weights": "35", "repetitions": "12"}]', '2025-06-20 05:49:18.123067+00'),
	(288, 'back_squat', '2025-04-17 00:00:00', 'Bb back squat to box 8/8/8', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "8"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "12"}]', '2025-06-20 05:49:18.189476+00'),
	(289, 'sumo_deadlift', '2025-04-21 00:00:00', 'Sumo deadlift 10/8/5/3/3 80-90effort', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 215.0, "weights": "45/45/25/15", "repetitions": "3"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "7"}, {"total": 135.0, "weights": "45/45", "repetitions": "10"}]', '2025-06-20 05:49:18.256499+00'),
	(290, '', '2025-04-22 00:00:00', '', '[]', '2025-06-20 05:49:18.319162+00'),
	(291, 'bench_press', '2025-04-24 00:00:00', 'Bb bench press ladder 10-1', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "9"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "6"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "4"}, {"total": 125.0, "weights": "45/10/15/10/5", "repetitions": "3"}, {"total": 135.0, "weights": "45/10/15/15/5", "repetitions": "2"}, {"total": 140.0, "weights": "45/10/15/15/5/2.5", "repetitions": "1"}]', '2025-06-20 05:49:18.386904+00'),
	(292, 'sumo_deadlift', '2025-04-28 00:00:00', 'Sumo Deadlift 10/8/5 heavy', '[{"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 135.0, "weights": "45/45", "repetitions": "8"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "10"}]', '2025-06-20 05:49:18.452243+00'),
	(293, 'db_bench_press', '2025-04-29 00:00:00', 'DB bench press 10/8/5/5/5', '[{"total": 25, "weights": "25", "repetitions": "10"}, {"total": 30, "weights": "30", "repetitions": "8"}, {"total": 40, "weights": "40", "repetitions": "5"}, {"total": 45, "weights": "45", "repetitions": "5"}, {"total": 50, "weights": "50", "repetitions": "5"}, {"total": 45, "weights": "45", "repetitions": "7"}, {"total": 40, "weights": "40", "repetitions": "10"}, {"total": 35, "weights": "35", "repetitions": "15"}, {"total": 30, "weights": "30", "repetitions": "20"}]', '2025-06-20 05:49:18.51686+00'),
	(294, 'bench_press', '2025-05-02 00:00:00', 'Bench press 10/7/5/3/2/2 90%', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "3"}, {"total": 125.0, "weights": "45/10/15/15", "repetitions": "2"}, {"total": 145.0, "weights": "45/10/15/15/10", "repetitions": "2"}, {"total": 125.0, "weights": "45/10/15/15", "repetitions": "5"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "12"}]', '2025-06-20 05:49:18.584811+00'),
	(295, 'deadlift', '2025-05-05 00:00:00', 'Deadlift 10/8/6/5/5', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "6"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/15/5/5", "repetitions": "5"}, {"total": 175.0, "weights": "45/45/15/5", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "8"}]', '2025-06-20 05:49:18.648727+00'),
	(296, 'db_bench_press', '2025-05-06 00:00:00', 'DB bench press 10/7/5/5 80%', '[{"total": 30, "weights": "30", "repetitions": "10"}, {"total": 35, "weights": "35", "repetitions": "7"}, {"total": 45, "weights": "45", "repetitions": "5"}, {"total": 50, "weights": "50", "repetitions": "5"}, {"total": 45, "weights": "45", "repetitions": "5"}, {"total": 45, "weights": "45", "repetitions": "5"}, {"total": 35, "weights": "35", "repetitions": "12"}, {"total": 35, "weights": "35", "repetitions": "12"}]', '2025-06-20 05:49:18.709411+00'),
	(297, 'bench_press', '2025-05-09 00:00:00', 'Bench press 10/8/6/5/5\* heavy', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/10/15/10/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "5"}, {"total": 118.5, "weights": "45/10/15/10/1.75", "repetitions": "5"}, {"total": 120.0, "weights": "45/10/15/10/2.5", "repetitions": "5"}, {"total": 120.0, "weights": "45/10/15/10/2.5", "repetitions": "5"}]', '2025-06-20 05:49:18.769536+00'),
	(298, 'sumo_deadlift', '2025-05-12 00:00:00', 'Sumo deadlift 10/8/5/3/3 85%', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "3"}, {"total": 185.0, "weights": "45/45/15/10", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "7"}]', '2025-06-20 05:49:18.881134+00'),
	(299, '', '2025-05-13 00:00:00', '', '[]', '2025-06-20 05:49:18.941939+00'),
	(300, 'back_squat', '2025-05-15 00:00:00', 'Elevated heel back squat 12/10/8', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "8"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "8"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "8"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "8"}, {"total": 145.0, "weights": "45/25/10/10/5", "repetitions": "8"}, {"total": 145.0, "weights": "45/25/10/10/5", "repetitions": "8"}]', '2025-06-20 05:49:19.007552+00'),
	(301, 'deadlift', '2025-05-19 00:00:00', 'Conventional deadlift 10/8/5/3/3 90%', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 135.0, "weights": "45/45", "repetitions": "8"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 215.0, "weights": "45/45/25/15", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}]', '2025-06-20 05:49:19.074832+00'),
	(302, 'db_bench_press', '2025-05-20 00:00:00', 'DB bench press 10/8 heavy', '[{"total": 35, "weights": "35", "repetitions": "10"}, {"total": 40, "weights": "40", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "8"}]', '2025-06-20 05:49:19.147872+00'),
	(303, '', '2025-05-22 00:00:00', '', '[]', '2025-06-20 05:49:19.215537+00'),
	(304, 'bench_press', '2025-05-23 00:00:00', 'Bench press 10/8/5/3/3', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "3"}, {"total": 145.0, "weights": "45/25/15/10", "repetitions": "2"}, {"total": 155.0, "weights": "45/25/15/10/5", "repetitions": "1"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "12"}]', '2025-06-20 05:49:19.28017+00'),
	(305, 'bb_oh_press', '2025-05-28 00:00:00', 'BB OH press 10/8', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}]', '2025-06-20 05:49:19.345873+00'),
	(306, 'reverse_lunge', '2025-05-29 00:00:00', 'BB reverse lunge 8/6/5', '[{"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}]', '2025-06-20 05:49:19.408063+00'),
	(307, 'bench_press', '2025-05-30 00:00:00', 'BB bench press 8/8', '[{"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}]', '2025-06-20 05:49:19.470227+00'),
	(308, 'reverse_lunge', '2025-06-02 00:00:00', 'BB reverse lunge 8/6/5/3/3', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "3"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "3"}, {"total": 175.0, "weights": "45/45/10/5/5", "repetitions": "3"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}]', '2025-06-20 05:49:19.551089+00'),
	(309, 'bulgarian', '2025-06-03 00:00:00', 'Bulgarian split squat 10/8', '[{"total": 33, "weights": "33", "repetitions": "10"}, {"total": 63.0, "weights": "33/15", "repetitions": "8"}, {"total": 83.0, "weights": "33/15/10", "repetitions": "8"}, {"total": 103.0, "weights": "33/10/25", "repetitions": "8"}, {"total": 103.0, "weights": "33/10/25", "repetitions": "8"}, {"total": 103.0, "weights": "33/10/25", "repetitions": "8"}]', '2025-06-20 05:49:19.621563+00'),
	(310, 'bb_oh_press', '2025-06-06 00:00:00', 'BB OH press 10/8/6/5/3/3', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/25", "repetitions": "3"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "5"}, {"total": 80.0, "weights": "45/15/2.5", "repetitions": "5"}, {"total": 80.0, "weights": "45/15/2.5", "repetitions": "5"}]', '2025-06-20 05:49:19.690161+00'),
	(311, 'reverse_lunge', '2025-06-09 00:00:00', 'BB reverse lunge 8/6/5 85% rpm', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 115.0, "weights": "45/10/25", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "5"}]', '2025-06-20 05:49:19.754339+00'),
	(312, 'bench_press', '2025-06-10 00:00:00', '21 guns Bench press 7 low/high/full 50% RPM', '[{"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}]', '2025-06-20 05:49:19.817328+00'),
	(313, 'deadlift', '2025-06-20 00:00:00', 'BB SL deadlift 7/6', '[{"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "5"}]', '2025-06-20 05:49:19.879276+00'),
	(314, 'bb_oh_press', '2025-06-21 00:00:00', 'Earthquake BB OH press 8/6', '[{"total": 43.0, "weights": "33/5", "repetitions": "8"}, {"total": 53.0, "weights": "33/10", "repetitions": "6"}, {"total": 63.0, "weights": "33/15", "repetitions": "5"}, {"total": 63.0, "weights": "33/15", "repetitions": "5"}, {"total": 63.0, "weights": "33/15", "repetitions": "5"}, {"total": 63.0, "weights": "33/15", "repetitions": "5"}, {"total": 63.0, "weights": "33/15", "repetitions": "5"}]', '2025-06-20 05:49:19.943906+00');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."activities_id_seq"', 314, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
