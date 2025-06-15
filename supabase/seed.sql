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
	(1, '', '2022-09-02 00:00:00', '', '[]', '2025-06-15 23:13:45.265599+00'),
	(2, '', '2022-09-07 00:00:00', '', '[]', '2025-06-15 23:13:45.375847+00'),
	(3, '', '2022-09-13 00:00:00', '', '[]', '2025-06-15 23:13:45.471833+00'),
	(4, '', '2022-09-15 00:00:00', '', '[]', '2025-06-15 23:13:45.562488+00'),
	(5, '', '2022-09-20 00:00:00', '', '[]', '2025-06-15 23:13:45.619859+00'),
	(6, '', '2022-09-22 00:00:00', '', '[]', '2025-06-15 23:13:45.730155+00'),
	(7, '', '2022-09-24 00:00:00', '', '[]', '2025-06-15 23:13:45.788661+00'),
	(8, '', '2022-09-27 00:00:00', '', '[]', '2025-06-15 23:13:45.880952+00'),
	(9, '', '2022-09-29 00:00:00', '', '[]', '2025-06-15 23:13:45.939956+00'),
	(10, '', '2022-10-01 00:00:00', '', '[]', '2025-06-15 23:13:46.027331+00'),
	(11, '', '2022-10-03 00:00:00', '', '[]', '2025-06-15 23:13:46.085763+00'),
	(12, '', '2022-10-11 00:00:00', '', '[]', '2025-06-15 23:13:46.178111+00'),
	(13, '', '2022-10-13 00:00:00', '', '[]', '2025-06-15 23:13:46.269784+00'),
	(14, '', '2022-11-08 00:00:00', '', '[]', '2025-06-15 23:13:46.35648+00'),
	(15, '', '2022-11-10 00:00:00', '', '[]', '2025-06-15 23:13:46.442868+00'),
	(16, 'bench press', '2022-11-15 00:00:00', '3x bench press (80%)', '[{"total": 125.0, "weights": "45/20/20", "repetitions": "3"}]', '2025-06-15 23:13:46.514695+00'),
	(17, 'front squat', '2022-11-17 00:00:00', '6x front squat', '[{"total": 105.0, "weights": "45/15/15", "repetitions": "6"}]', '2025-06-15 23:13:46.604547+00'),
	(18, 'bench press', '2022-11-22 00:00:00', '3x bench press 90%', '[{"total": 95.0, "weights": "45/15/10", "repetitions": "3"}]', '2025-06-15 23:13:46.723939+00'),
	(19, '', '2022-11-29 00:00:00', '', '[]', '2025-06-15 23:13:46.785539+00'),
	(20, '', '2022-12-01 00:00:00', '', '[]', '2025-06-15 23:13:46.842084+00'),
	(21, 'bench press', '2022-12-13 00:00:00', '8x bench press', '[{"total": 105.0, "weights": "45/15/15", "repetitions": "8"}]', '2025-06-15 23:13:46.901056+00'),
	(22, 'sumo deadlift', '2022-12-15 00:00:00', '8x sumo deadlift', '[{"total": 95.0, "weights": "45/15/10", "repetitions": "8"}]', '2025-06-15 23:13:46.961893+00'),
	(23, '', '2022-12-19 00:00:00', '', '[]', '2025-06-15 23:13:47.023757+00'),
	(24, 'bench press', '2022-12-20 00:00:00', '5x  bench press 3s hold', '[{"total": 95.0, "weights": "45/15/10", "repetitions": "5"}]', '2025-06-15 23:13:47.111729+00'),
	(25, '', '2023-01-04 00:00:00', '', '[]', '2025-06-15 23:13:47.171661+00'),
	(26, '', '2023-01-07 00:00:00', '', '[]', '2025-06-15 23:13:47.234536+00'),
	(27, '', '2023-01-12 00:00:00', '', '[]', '2025-06-15 23:13:47.31449+00'),
	(28, 'bstance deadlift', '2023-01-19 00:00:00', '5x 1-3-1-2 bstance deadlift', '[{"total": 75.0, "weights": "45/15", "repetitions": "5"}]', '2025-06-15 23:13:47.372954+00'),
	(29, '', '2023-01-23 00:00:00', '', '[]', '2025-06-15 23:13:47.442966+00'),
	(30, 'deadlift', '2023-01-25 00:00:00', '5x barbell continuous deadlift', '[{"total": 115.0, "weights": "45/15/10/10", "repetitions": "5"}]', '2025-06-15 23:13:47.538476+00'),
	(31, '', '2023-02-02 00:00:00', '', '[]', '2025-06-15 23:13:47.595443+00'),
	(32, '', '2023-02-07 00:00:00', '', '[]', '2025-06-15 23:13:47.656817+00'),
	(33, 'deadlift', '2023-02-09 00:00:00', '5x barbell deadlift 3-1-2-1', '[{"total": 115.0, "weights": "45/15/10/10", "repetitions": "5"}]', '2025-06-15 23:13:47.71972+00'),
	(34, '', '2023-02-11 00:00:00', '', '[]', '2025-06-15 23:13:47.778444+00'),
	(35, '', '2023-02-14 00:00:00', '', '[]', '2025-06-15 23:13:47.837088+00'),
	(36, '', '2023-02-16 00:00:00', '', '[]', '2025-06-15 23:13:47.90253+00'),
	(37, '', '2023-02-21 00:00:00', '', '[]', '2025-06-15 23:13:47.988855+00'),
	(38, 'romanian', '2023-02-24 00:00:00', '8x Romanian deadlift', '[{"total": 85.0, "weights": "45/15/5", "repetitions": "8"}]', '2025-06-15 23:13:48.050002+00'),
	(39, '', '2023-02-25 00:00:00', '', '[]', '2025-06-15 23:13:48.104776+00'),
	(40, 'sumo deadlift', '2023-03-02 00:00:00', '10x sumo deadlift', '[{"total": 125.0, "weights": "45/15/15/10", "repetitions": "10"}]', '2025-06-15 23:13:48.170689+00'),
	(41, '', '2023-03-08 00:00:00', '', '[]', '2025-06-15 23:13:48.235415+00'),
	(42, '', '2023-03-12 00:00:00', '', '[]', '2025-06-15 23:13:48.299173+00'),
	(43, '', '2023-03-22 00:00:00', '', '[]', '2025-06-15 23:13:48.356229+00'),
	(44, 'romanian', '2023-03-23 00:00:00', '8x Romanian dl', '[{"total": 95.0, "weights": "45/10/10/5", "repetitions": "8"}]', '2025-06-15 23:13:48.413846+00'),
	(45, '', '2023-03-27 00:00:00', '', '[]', '2025-06-15 23:13:48.468049+00'),
	(46, '', '2023-03-30 00:00:00', '', '[]', '2025-06-15 23:13:48.536147+00'),
	(47, '', '2023-04-11 00:00:00', '', '[]', '2025-06-15 23:13:48.593215+00'),
	(48, '', '2023-04-13 00:00:00', '', '[]', '2025-06-15 23:13:48.660359+00'),
	(49, '', '2023-04-15 00:00:00', '', '[]', '2025-06-15 23:13:48.725273+00'),
	(50, '', '2023-04-17 00:00:00', '', '[]', '2025-06-15 23:13:48.783419+00'),
	(51, '', '2023-04-18 00:00:00', '', '[]', '2025-06-15 23:13:48.841465+00'),
	(52, '', '2023-04-10 00:00:00', '', '[]', '2025-06-15 23:13:48.927624+00'),
	(53, '', '2023-04-23 00:00:00', '', '[]', '2025-06-15 23:13:48.984054+00'),
	(54, '', '2023-04-25 00:00:00', '', '[]', '2025-06-15 23:13:49.046292+00'),
	(55, '', '2023-05-02 00:00:00', '', '[]', '2025-06-15 23:13:49.103752+00'),
	(56, '', '2023-05-05 00:00:00', '', '[]', '2025-06-15 23:13:49.174252+00'),
	(57, '', '2023-05-09 00:00:00', '', '[]', '2025-06-15 23:13:49.228741+00'),
	(58, '', '2023-05-10 00:00:00', '', '[]', '2025-06-15 23:13:49.29126+00'),
	(59, '', '2023-05-15 00:00:00', '', '[]', '2025-06-15 23:13:49.345256+00'),
	(60, '', '2023-05-19 00:00:00', '', '[]', '2025-06-15 23:13:49.400629+00'),
	(61, '', '2023-05-20 00:00:00', '', '[]', '2025-06-15 23:13:49.455676+00'),
	(62, 'sldl', '2023-05-25 00:00:00', 'Sldl', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 25, "weights": "25", "repetitions": "10"}]', '2025-06-15 23:13:49.514506+00'),
	(63, '', '2023-05-29 00:00:00', '', '[]', '2025-06-15 23:13:49.585588+00'),
	(64, '', '2023-05-29 00:00:00', '', '[]', '2025-06-15 23:13:49.647238+00'),
	(65, 'romanian', '2023-06-01 00:00:00', '12/10/8 Romanian deadlift', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "8"}]', '2025-06-15 23:13:49.707828+00'),
	(66, '', '2023-06-02 00:00:00', '', '[]', '2025-06-15 23:13:49.771739+00'),
	(67, '', '2023-06-05 00:00:00', '', '[]', '2025-06-15 23:13:49.828054+00'),
	(68, 'sumo deadlift', '2023-06-08 00:00:00', 'Sumo deadlift ladder 8/6/4/4/6/8', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "4"}, {"total": 145.0, "weights": "45/25/10/15", "repetitions": "4"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}]', '2025-06-15 23:13:49.884108+00'),
	(69, '', '2023-06-12 00:00:00', '', '[]', '2025-06-15 23:13:49.939517+00'),
	(70, '', '2023-06-16 00:00:00', '', '[]', '2025-06-15 23:13:50.013453+00'),
	(71, 'front squat', '2023-06-19 00:00:00', 'Front squats', '[{"total": 45, "weights": "45", "repetitions": "1"}, {"total": 65.0, "weights": "45/10", "repetitions": "2"}, {"total": 70.0, "weights": "45/10/2.5", "repetitions": "3"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "4"}, {"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "7"}]', '2025-06-15 23:13:50.075506+00'),
	(72, '', '2023-06-22 00:00:00', '', '[]', '2025-06-15 23:13:50.142707+00'),
	(73, 'bench press', '2023-06-23 00:00:00', '50 Bench press', '[{"total": 45, "weights": "45", "repetitions": "1"}, {"total": 75.0, "weights": "45/15", "repetitions": "2"}, {"total": 65.0, "weights": "45/10", "repetitions": "4"}]', '2025-06-15 23:13:50.210499+00'),
	(74, 'front squat', '2023-06-25 00:00:00', 'Bulgarian front squat', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "5"}, {"total": 70.0, "weights": "45/10/2.5", "repetitions": "5"}]', '2025-06-15 23:13:50.266239+00'),
	(75, 'romanian', '2023-06-29 00:00:00', 'Romanian deadlift, til or hips up', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "6"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "6"}]', '2025-06-15 23:13:50.322045+00'),
	(76, 'db bench press', '2023-06-03 00:00:00', 'Db bench press', '[{"total": 15, "weights": "15", "repetitions": "12"}, {"total": 15, "weights": "15", "repetitions": "10"}, {"total": 20, "weights": "20", "repetitions": "8"}]', '2025-06-15 23:13:50.380572+00'),
	(77, 'deadlift', '2023-06-06 00:00:00', 'Barbell deadlift 10/8/5', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "5"}]', '2025-06-15 23:13:50.45167+00'),
	(78, '', '2023-07-07 00:00:00', '', '[]', '2025-06-15 23:13:50.507397+00'),
	(79, 'bench press', '2023-07-12 00:00:00', 'Barbell bench press', '[{"total": 75.0, "weights": "45/15", "repetitions": "4"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "3"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "3"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "3"}, {"total": 115.0, "weights": "45/15/15/5", "repetitions": "3"}]', '2025-06-15 23:13:50.571336+00'),
	(80, 'sumo deadlift', '2023-07-13 00:00:00', 'Sumo deadlift 5x light', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "5"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "5"}]', '2025-06-15 23:13:50.631203+00'),
	(81, 'back squat', '2023-07-17 00:00:00', 'Barbell back squat 8/5/3/3/3', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "5"}, {"total": 75.0, "weights": "45/15", "repetitions": "3"}]', '2025-06-15 23:13:50.69036+00'),
	(82, 'bench press', '2023-07-18 00:00:00', 'Bench press waist level', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "5"}, {"total": 75.0, "weights": "45/15", "repetitions": "3"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "3"}]', '2025-06-15 23:13:50.747559+00'),
	(83, 'sumo deadlift', '2023-07-25 00:00:00', 'Sumo deadlift', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "4"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "4"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}]', '2025-06-15 23:13:50.807037+00'),
	(84, 'back squat', '2023-07-31 00:00:00', 'Barbell back squat 10/7/5/3', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 45, "weights": "45", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}]', '2025-06-15 23:13:50.862244+00'),
	(85, 'bench press', '2023-08-01 00:00:00', 'Bench press 10/7/5/3', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "3"}]', '2025-06-15 23:13:50.920112+00'),
	(86, '', '2023-08-03 00:00:00', '', '[]', '2025-06-15 23:13:50.979634+00'),
	(87, 'back squat', '2023-08-06 00:00:00', 'Back squat 5/5/3/3/3', '[{"total": 45, "weights": "45", "repetitions": "5"}, {"total": 65.0, "weights": "45/10", "repetitions": "5"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "3"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "3"}, {"total": 114.0, "weights": "44/15/10/10", "repetitions": "3"}]', '2025-06-15 23:13:51.043455+00'),
	(88, '', '2023-08-10 00:00:00', '', '[]', '2025-06-15 23:13:51.103749+00'),
	(89, 'back squat', '2023-08-12 00:00:00', 'Back squat 3x max', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "6"}, {"total": 105.0, "weights": "45/15/10/5", "repetitions": "4"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "3"}, {"total": 125.0, "weights": "45/15/10/10/5", "repetitions": "3"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "5"}]', '2025-06-15 23:13:51.163038+00'),
	(90, '', '2023-08-17 00:00:00', '', '[]', '2025-06-15 23:13:51.228571+00'),
	(91, '', '2023-08-19 00:00:00', '', '[]', '2025-06-15 23:13:51.287896+00'),
	(92, 'front squat', '2023-08-21 00:00:00', 'Front squat barbell', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 55.0, "weights": "45/5", "repetitions": "12"}, {"total": 55.0, "weights": "45/5", "repetitions": "10"}, {"total": 55.0, "weights": "45/5", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "6"}, {"total": 65.0, "weights": "45/10", "repetitions": "1"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "2"}, {"total": 95.0, "weights": "45/25", "repetitions": "3"}, {"total": 95.0, "weights": "45/25", "repetitions": "4"}]', '2025-06-15 23:13:51.345448+00'),
	(93, '', '2023-08-24 00:00:00', '', '[]', '2025-06-15 23:13:51.408941+00'),
	(136, 'deadlift', '2024-02-05 00:00:00', 'Barbell deadlift 12/10/8/8/10/12', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}]', '2025-06-15 23:13:54.135971+00'),
	(94, 'reverse lunge', '2023-08-26 00:00:00', 'Barbell reverse lunge', '[{"total": 45, "weights": "45", "repetitions": "6"}, {"total": 65.0, "weights": "45/10", "repetitions": "4"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "4"}, {"total": 105.0, "weights": "45/10/10/10", "repetitions": "3"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "5"}]', '2025-06-15 23:13:51.47154+00'),
	(95, '', '2023-09-01 00:00:00', '', '[]', '2025-06-15 23:13:51.527765+00'),
	(96, '', '2023-09-08 00:00:00', '', '[]', '2025-06-15 23:13:51.583293+00'),
	(97, '', '2023-09-11 00:00:00', '', '[]', '2025-06-15 23:13:51.659058+00'),
	(98, '', '2023-09-15 00:00:00', '', '[]', '2025-06-15 23:13:51.715813+00'),
	(99, '', '2023-09-18 00:00:00', '', '[]', '2025-06-15 23:13:51.775429+00'),
	(100, '', '2023-09-22 00:00:00', '', '[]', '2025-06-15 23:13:51.838885+00'),
	(101, '', '2023-09-25 00:00:00', '', '[]', '2025-06-15 23:13:51.900236+00'),
	(102, 'reverse lunge', '2023-10-02 00:00:00', 'Reverse lunge', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 75.0, "weights": "45/15", "repetitions": "4"}, {"total": 75.0, "weights": "45/15", "repetitions": "3"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}]', '2025-06-15 23:13:51.96869+00'),
	(103, '', '2023-10-13 00:00:00', '', '[]', '2025-06-15 23:13:52.031324+00'),
	(104, '', '2023-10-16 00:00:00', '', '[]', '2025-06-15 23:13:52.09095+00'),
	(105, 'back squat', '2023-10-18 00:00:00', '3s back squat', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "5"}]', '2025-06-15 23:13:52.149409+00'),
	(106, '', '2023-10-22 00:00:00', '', '[]', '2025-06-15 23:13:52.215069+00'),
	(107, 'deadlift', '2023-10-30 00:00:00', 'Deadlift', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "8"}, {"total": 125.0, "weights": "45/15/10/10/5", "repetitions": "5"}]', '2025-06-15 23:13:52.284839+00'),
	(108, '', '2023-11-03 00:00:00', '', '[]', '2025-06-15 23:13:52.343105+00'),
	(109, '', '2023-11-06 00:00:00', '', '[]', '2025-06-15 23:13:52.419523+00'),
	(110, 'bench press', '2023-11-07 00:00:00', 'Max bench press', '[{"total": 63.0, "weights": "33/10/5", "repetitions": "1"}, {"total": 73.0, "weights": "33/10/10", "repetitions": "2"}]', '2025-06-15 23:13:52.47533+00'),
	(111, '', '2023-11-09 00:00:00', '', '[]', '2025-06-15 23:13:52.534818+00'),
	(112, '', '2023-11-10 00:00:00', '', '[]', '2025-06-15 23:13:52.595405+00'),
	(113, 'deadlift', '2023-11-12 00:00:00', 'Deadlift 5x', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 75.0, "weights": "25/25", "repetitions": "5"}, {"total": 65.0, "weights": "35/15", "repetitions": "5"}, {"total": 85.0, "weights": "35/25", "repetitions": "5"}]', '2025-06-15 23:13:52.656676+00'),
	(114, 'bench press', '2023-11-13 00:00:00', '50: Bench press', '[{"total": 75.0, "weights": "45/15", "repetitions": "15"}, {"total": 75.0, "weights": "45/15", "repetitions": "15"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}]', '2025-06-15 23:13:52.714399+00'),
	(115, '', '2023-11-16 00:00:00', '', '[]', '2025-06-15 23:13:52.786124+00'),
	(116, '', '2023-11-20 00:00:00', '', '[]', '2025-06-15 23:13:52.849908+00'),
	(117, 'bench press', '2023-11-21 00:00:00', 'Max reps barbell bench press', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "12"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "8"}]', '2025-06-15 23:13:52.908208+00'),
	(118, '', '2023-11-22 00:00:00', '', '[]', '2025-06-15 23:13:52.981389+00'),
	(119, '', '2023-11-28 00:00:00', '', '[]', '2025-06-15 23:13:53.046749+00'),
	(120, 'front squat', '2023-11-30 00:00:00', 'Front squat', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "4"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "4"}]', '2025-06-15 23:13:53.109247+00'),
	(121, '', '2023-12-01 00:00:00', '', '[]', '2025-06-15 23:13:53.167584+00'),
	(122, '', '2023-12-07 00:00:00', '', '[]', '2025-06-15 23:13:53.225242+00'),
	(123, 'bench press', '2023-12-08 00:00:00', 'Tempo bench press', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}]', '2025-06-15 23:13:53.291615+00'),
	(124, '', '2023-12-11 00:00:00', '', '[]', '2025-06-15 23:13:53.355594+00'),
	(125, '', '2023-12-12 00:00:00', '', '[]', '2025-06-15 23:13:53.428826+00'),
	(126, 'bench press', '2023-12-15 00:00:00', 'Barbell bench press', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "9"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "6"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "4"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "1"}]', '2025-06-15 23:13:53.492576+00'),
	(127, '', '2024-01-02 00:00:00', '', '[]', '2025-06-15 23:13:53.560949+00'),
	(128, 'sumo deadlift', '2024-01-04 00:00:00', 'Sumo deadlift 10/7/5/3', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "7"}, {"total": 115.0, "weights": "45/10/10/15", "repetitions": "5"}, {"total": 135.0, "weights": "45/10/10/25", "repetitions": "3"}, {"total": 115.0, "weights": "45/10/10/15", "repetitions": "7"}]', '2025-06-15 23:13:53.64427+00'),
	(129, '', '2024-01-08 00:00:00', '', '[]', '2025-06-15 23:13:53.703415+00'),
	(130, '', '2024-01-11 00:00:00', '', '[]', '2025-06-15 23:13:53.764203+00'),
	(131, 'reverse lunge', '2024-01-15 00:00:00', 'Barbell reverse lunge 9-3', '[{"total": 45, "weights": "45", "repetitions": "9"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "4"}]', '2025-06-15 23:13:53.833178+00'),
	(132, 'back squat', '2024-01-22 00:00:00', 'Barbell back squat', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "5"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "3"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "7"}]', '2025-06-15 23:13:53.895401+00'),
	(133, '', '2024-01-26 00:00:00', '', '[]', '2025-06-15 23:13:53.954899+00'),
	(134, 'front squat', '2024-01-29 00:00:00', 'Front squat 5x', '[{"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "4"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}]', '2025-06-15 23:13:54.011776+00'),
	(135, '', '2024-02-02 00:00:00', '', '[]', '2025-06-15 23:13:54.069441+00'),
	(137, 'back squat', '2024-02-12 00:00:00', 'Barbell back squat 6x', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "6"}, {"total": 95.0, "weights": "45/25", "repetitions": "2"}, {"total": 115.0, "weights": "45/35", "repetitions": "3"}]', '2025-06-15 23:13:54.197503+00'),
	(138, 'deadlift', '2024-02-19 00:00:00', 'Conventional deadlift 5/3 max', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "8"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/15/5", "repetitions": "5"}, {"total": 145.0, "weights": "45/25/15/5/5", "repetitions": "5"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "7"}]', '2025-06-15 23:13:54.257078+00'),
	(139, '', '2024-02-22 00:00:00', '', '[]', '2025-06-15 23:13:54.320768+00'),
	(140, '', '2024-02-26 00:00:00', '', '[]', '2025-06-15 23:13:54.406559+00'),
	(141, '', '2024-03-01 00:00:00', '', '[]', '2025-06-15 23:13:54.496909+00'),
	(142, 'deadlift', '2024-03-04 00:00:00', 'Deadlift 2s pause knee', '[{"total": 103.0, "weights": "33/10/10/15", "repetitions": "4"}, {"total": 173.0, "weights": "33/10/35/15/10", "repetitions": "4"}, {"total": 153.0, "weights": "33/10/35/15", "repetitions": "4"}]', '2025-06-15 23:13:54.556375+00'),
	(143, 'sldl', '2024-03-11 00:00:00', 'SLDL', '[{"total": 65.0, "weights": "45/10", "repetitions": "4"}, {"total": 70.0, "weights": "45/10/2.5", "repetitions": "4"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "4"}, {"total": 80.0, "weights": "45/10/5/2.5", "repetitions": "4"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}, {"total": 115.0, "weights": "45/10/25", "repetitions": "6"}, {"total": 145.0, "weights": "45/10/25/15", "repetitions": "5"}]', '2025-06-15 23:13:54.623533+00'),
	(144, '', '2024-03-15 00:00:00', '', '[]', '2025-06-15 23:13:54.684818+00'),
	(145, 'deadlift', '2024-03-18 00:00:00', 'Conventions deadlift', '[{"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "8"}, {"total": 135.0, "weights": "45/25/15/5", "repetitions": "5"}, {"total": 145.0, "weights": "45/25/15/10", "repetitions": "3"}, {"total": 155.0, "weights": "45/25/15/10/5", "repetitions": "2"}]', '2025-06-15 23:13:54.741252+00'),
	(146, '', '2024-03-21 00:00:00', '', '[]', '2025-06-15 23:13:54.797991+00'),
	(147, 'deadlift', '2024-03-21 00:00:00', 'Barbell deadlift test', '[{"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "6"}, {"total": 133.0, "weights": "33/10/15/25", "repetitions": "7"}]', '2025-06-15 23:13:54.857704+00'),
	(148, '', '2024-03-29 00:00:00', '', '[]', '2025-06-15 23:13:54.924046+00'),
	(149, 'romanian', '2024-04-01 00:00:00', 'barbell Romanian deadlift 8x ramp weight', '[{"total": 33, "weights": "33", "repetitions": "8"}, {"total": 53.0, "weights": "33/10", "repetitions": "8"}, {"total": 63.0, "weights": "33/15", "repetitions": "8"}, {"total": 83.0, "weights": "33/15/10", "repetitions": "8"}]', '2025-06-15 23:13:54.980621+00'),
	(150, 'back squat', '2024-04-04 00:00:00', 'Back squat 5s tempo', '[{"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}]', '2025-06-15 23:13:55.04041+00'),
	(151, 'reverse lunge', '2024-04-08 00:00:00', 'Barbell reverse lunge 3x max', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "5"}]', '2025-06-15 23:13:55.100555+00'),
	(152, '', '2024-04-12 00:00:00', '', '[]', '2025-06-15 23:13:55.163816+00'),
	(153, 'bulgarian', '2024-04-15 00:00:00', '7x Kb Front Bulgarian split squat', '[{"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "7"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "7"}]', '2025-06-15 23:13:55.222083+00'),
	(154, '', '2024-04-16 00:00:00', '', '[]', '2025-06-15 23:13:55.291657+00'),
	(155, '', '2024-04-18 00:00:00', '', '[]', '2025-06-15 23:13:55.3669+00'),
	(156, 'reverse lunge', '2024-04-22 00:00:00', 'Barbell reverse lunge', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/25", "repetitions": "4"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "4"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}, {"total": 45, "weights": "45", "repetitions": "1"}, {"total": 55.0, "weights": "45/5", "repetitions": "2"}, {"total": 55.0, "weights": "45/5", "repetitions": "3"}, {"total": 65.0, "weights": "45/10", "repetitions": "4"}]', '2025-06-15 23:13:55.429753+00'),
	(157, '', '2024-04-26 00:00:00', '', '[]', '2025-06-15 23:13:55.491136+00'),
	(158, 'reverse lunge', '2024-04-28 00:00:00', 'Bb reverse lunge 4x 5R', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/25", "repetitions": "4"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "4"}]', '2025-06-15 23:13:55.567472+00'),
	(159, '', '2024-04-30 00:00:00', '', '[]', '2025-06-15 23:13:55.624013+00'),
	(160, 'sldl', '2024-05-02 00:00:00', 'Barbell SLDL 6x3 4x3', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "4"}]', '2025-06-15 23:13:55.683923+00'),
	(161, '', '2024-05-03 00:00:00', '', '[]', '2025-06-15 23:13:55.740191+00'),
	(162, 'bulgarian', '2024-05-06 00:00:00', '7 bb Bulgarian spit squat 2/4 rounds', '[{"total": 45, "weights": "45", "repetitions": "7"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}]', '2025-06-15 23:13:55.79844+00'),
	(163, '', '2024-05-07 00:00:00', '', '[]', '2025-06-15 23:13:55.854389+00'),
	(164, 'bstance deadlift', '2024-05-09 00:00:00', 'SL bstance deadlift 6xR6', '[{"total": 45, "weights": "45", "repetitions": "6"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "6"}]', '2025-06-15 23:13:55.913023+00'),
	(233, 'front squat', '2024-10-07 00:00:00', 'Front squat 6/6/6/6', '[{"total": 45, "weights": "45", "repetitions": "6"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}]', '2025-06-15 23:14:00.420491+00'),
	(165, 'reverse lunge', '2024-05-13 00:00:00', 'Bb reverse lunge 3x max', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "4"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "3"}, {"total": 135.0, "weights": "45/45", "repetitions": "4"}]', '2025-06-15 23:13:55.972008+00'),
	(166, '', '2024-05-14 00:00:00', '', '[]', '2025-06-15 23:13:56.038672+00'),
	(167, 'sldl', '2024-05-15 00:00:00', 'Bb SLDL 8/6/5', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}]', '2025-06-15 23:13:56.101762+00'),
	(168, 'front squat', '2024-05-20 00:00:00', 'BB Front squat 10/10/8/8/6/6', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "6"}]', '2025-06-15 23:13:56.163701+00'),
	(169, '', '2024-05-21 00:00:00', '', '[]', '2025-06-15 23:13:56.24289+00'),
	(170, '', '2024-05-24 00:00:00', '', '[]', '2025-06-15 23:13:56.305798+00'),
	(171, '', '2024-05-28 00:00:00', '', '[]', '2025-06-15 23:13:56.37143+00'),
	(172, 'back squat', '2024-05-30 00:00:00', 'Barbell back squat', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "7"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "3"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "5"}]', '2025-06-15 23:13:56.452827+00'),
	(173, 'back squat', '2024-06-03 00:00:00', '8x 70% back squat 2s btm pause', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "10"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "8"}]', '2025-06-15 23:13:56.529454+00'),
	(174, '', '2024-06-04 00:00:00', '', '[]', '2025-06-15 23:13:56.598896+00'),
	(175, 'sumo deadlift', '2024-06-06 00:00:00', 'Sumo deadlift', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "10"}]', '2025-06-15 23:13:56.656166+00'),
	(176, '', '2024-06-07 00:00:00', '', '[]', '2025-06-15 23:13:56.717082+00'),
	(177, '', '2024-06-10 00:00:00', '', '[]', '2025-06-15 23:13:56.784337+00'),
	(178, '', '2024-06-11 00:00:00', '', '[]', '2025-06-15 23:13:56.860744+00'),
	(179, 'back squat', '2024-06-17 00:00:00', '85 back squats 4x  tempo', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "4"}]', '2025-06-15 23:13:56.91716+00'),
	(180, 'bench press', '2024-06-18 00:00:00', 'Bench press 70x total', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}]', '2025-06-15 23:13:56.975108+00'),
	(181, '', '2024-06-20 00:00:00', '', '[]', '2025-06-15 23:13:57.038748+00'),
	(182, '', '2024-06-21 00:00:00', '', '[]', '2025-06-15 23:13:57.100064+00'),
	(183, 'back squat', '2024-06-22 00:00:00', 'Bb back squat 90 3rpm', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "6"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "6"}, {"total": 145.0, "weights": "45/15/15/10/10", "repetitions": "4"}]', '2025-06-15 23:13:57.168978+00'),
	(184, 'romanian', '2024-06-27 00:00:00', 'BB Romanian deadlift ramp 5x', '[{"total": 65.0, "weights": "45/10", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "7"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}]', '2025-06-15 23:13:57.231042+00'),
	(185, '', '2024-06-28 00:00:00', '', '[]', '2025-06-15 23:13:57.285899+00'),
	(186, 'back squat', '2024-07-01 00:00:00', 'Bb back squat', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "5"}, {"total": 165.0, "weights": "45/25/25/10", "repetitions": "3"}, {"total": 175.0, "weights": "45/25/25/15", "repetitions": "3"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}]', '2025-06-15 23:13:57.349323+00'),
	(187, 'bench press', '2024-07-02 00:00:00', 'Alt bench press 25', '[{"total": 0, "weights": "0", "repetitions": "3"}]', '2025-06-15 23:13:57.4202+00'),
	(188, 'deadlift', '2024-07-08 00:00:00', 'BB deadlift 3x test', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 135.0, "weights": "45/45", "repetitions": "7"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}]', '2025-06-15 23:13:57.477537+00'),
	(189, 'bench press', '2024-07-09 00:00:00', 'BB bench press 3x test', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}, {"total": 105.0, "weights": "45/15/10/5", "repetitions": "3"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "3"}]', '2025-06-15 23:13:57.539277+00'),
	(190, '', '2024-07-10 00:00:00', '', '[]', '2025-06-15 23:13:57.611207+00'),
	(191, 'front squat', '2024-07-15 00:00:00', '3x front squat', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "3"}]', '2025-06-15 23:13:57.676356+00'),
	(192, 'bench press', '2024-07-16 00:00:00', 'BB bench press 5x', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "7"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-15 23:13:57.737204+00'),
	(193, 'bench press', '2024-07-18 00:00:00', 'Incline bench press 12x', '[{"total": 25, "weights": "25", "repetitions": "12"}, {"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "3"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "3"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}]', '2025-06-15 23:13:57.796626+00'),
	(234, 'bench press', '2024-10-08 00:00:00', 'Incline bench press', '[{"total": 25, "weights": "25", "repetitions": "12"}, {"total": 30, "weights": "30", "repetitions": "12"}]', '2025-06-15 23:14:00.474831+00'),
	(194, 'bench press', '2024-07-23 00:00:00', 'BB bench press 2x rahill/hans', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "4"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "2"}, {"total": 135.0, "weights": "45/35/10", "repetitions": "2"}, {"total": 115.0, "weights": "45/35", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 45, "weights": "45", "repetitions": "15"}]', '2025-06-15 23:13:57.8573+00'),
	(195, 'bstance deadlift', '2024-07-24 00:00:00', 'Bstance deadlift 5x', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "6"}, {"total": 65.0, "weights": "45/10", "repetitions": "5"}]', '2025-06-15 23:13:57.920061+00'),
	(196, 'bb oh press', '2024-07-25 00:00:00', 'BB OH press 8 to 3', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 80.0, "weights": "45/15/2.5", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "4"}]', '2025-06-15 23:13:58.022317+00'),
	(197, 'sumo deadlift', '2024-07-29 00:00:00', 'Bb sumo deadlift 3x', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "3"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "3"}, {"total": 165.0, "weights": "45/35/25", "repetitions": "3"}, {"total": 145.0, "weights": "45/35/15", "repetitions": "5"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "12"}]', '2025-06-15 23:13:58.092352+00'),
	(198, 'bench press', '2024-07-30 00:00:00', 'Bench press 3x', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/15/5/5", "repetitions": "3"}, {"total": 125.0, "weights": "45/10/15/15", "repetitions": "3"}, {"total": 125.0, "weights": "45/10/15/15", "repetitions": "3"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "10"}]', '2025-06-15 23:13:58.182023+00'),
	(199, 'bulgarian', '2024-08-01 00:00:00', 'Bulgarian split squat 3s down 5x', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "6"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}]', '2025-06-15 23:13:58.285064+00'),
	(200, '', '2024-08-02 00:00:00', '', '[]', '2025-06-15 23:13:58.341353+00'),
	(201, 'front squat', '2024-08-05 00:00:00', 'front squat 3x', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 145.0, "weights": "45/25/15/10", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "7"}]', '2025-06-15 23:13:58.405503+00'),
	(202, 'bench press', '2024-08-06 00:00:00', 'Bench press 5x', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "8"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "6"}, {"total": 120.0, "weights": "45/25/10/2.5", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "6"}]', '2025-06-15 23:13:58.468817+00'),
	(203, 'romanian', '2024-08-08 00:00:00', 'Romanian dl 12/10/8', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 65.0, "weights": "45/10", "repetitions": "10"}]', '2025-06-15 23:13:58.533645+00'),
	(204, '', '2024-08-09 00:00:00', '', '[]', '2025-06-15 23:13:58.59388+00'),
	(205, 'reverse lunge', '2024-08-12 00:00:00', 'Bb reverse lunge 8/6/5/5/3', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "6"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/15/10/15", "repetitions": "5"}, {"total": 145.0, "weights": "45/15/15/10/10", "repetitions": "3"}]', '2025-06-15 23:13:58.657435+00'),
	(206, 'bench press', '2024-08-13 00:00:00', 'W6 Bench press 8/5/3/2/2/2', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "2"}, {"total": 129.0, "weights": "34/25/10/10/2.5", "repetitions": "2"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "12"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "15"}]', '2025-06-15 23:13:58.728991+00'),
	(207, '', '2024-08-15 00:00:00', '', '[]', '2025-06-15 23:13:58.790406+00'),
	(208, '', '2024-08-16 00:00:00', '', '[]', '2025-06-15 23:13:58.851052+00'),
	(209, 'back squat', '2024-08-19 00:00:00', 'BB back squat tempo 4d', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-15 23:13:58.922829+00'),
	(210, '', '2024-08-20 00:00:00', '', '[]', '2025-06-15 23:13:58.97869+00'),
	(211, 'romanian', '2024-08-22 00:00:00', 'Romanian deadlift 12/8/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "8"}, {"total": 115.0, "weights": "45/10/10/15", "repetitions": "5"}]', '2025-06-15 23:13:59.039161+00'),
	(212, 'deadlift', '2024-08-26 00:00:00', 'BB deadlift 3x max', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "6"}, {"total": 145.0, "weights": "45/10/15/25", "repetitions": "4"}, {"total": 165.0, "weights": "45/10/15/25/10", "repetitions": "3"}, {"total": 185.0, "weights": "45/10/15/25/10/10", "repetitions": "3"}, {"total": 145.0, "weights": "45/10/15/25", "repetitions": "5"}]', '2025-06-15 23:13:59.093213+00'),
	(213, '', '2024-08-28 00:00:00', '', '[]', '2025-06-15 23:13:59.156886+00'),
	(214, 'back squat', '2024-08-29 00:00:00', 'BB back squat depth 12/10/8', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "8"}]', '2025-06-15 23:13:59.233209+00'),
	(280, '', '2025-03-25 00:00:00', '', '[]', '2025-06-15 23:14:03.431895+00'),
	(215, 'bench press', '2024-08-30 00:00:00', 'BB bench press 12/10/7/5/3', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "7"}, {"total": 105.0, "weights": "45/15/10/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "3"}, {"total": 125.0, "weights": "45/15/10/10/5", "repetitions": "3"}, {"total": 130.0, "weights": "45/15/10/10/5/2.5", "repetitions": "3"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "5"}]', '2025-06-15 23:13:59.291972+00'),
	(216, '', '2024-09-02 00:00:00', '', '[]', '2025-06-15 23:13:59.352779+00'),
	(217, '', '2024-09-05 00:00:00', '', '[]', '2025-06-15 23:13:59.415514+00'),
	(218, 'bench press', '2024-09-06 00:00:00', 'Bb bench press ladder 10-1', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "9"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "7"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "6"}, {"total": 105.0, "weights": "45/15/10/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/35", "repetitions": "4"}, {"total": 125.0, "weights": "45/35/5", "repetitions": "3"}, {"total": 135.0, "weights": "45/35/10", "repetitions": "2"}, {"total": 140.0, "weights": "45/35/10/2.5", "repetitions": "1"}]', '2025-06-15 23:13:59.469404+00'),
	(219, 'deadlift', '2024-09-09 00:00:00', 'Conventional Deadlift 10/8/5/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 145.0, "weights": "45/25/25", "repetitions": "5"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "10"}, {"total": 135.0, "weights": "45/45", "repetitions": "10"}]', '2025-06-15 23:13:59.524655+00'),
	(220, 'bb oh press', '2024-09-10 00:00:00', 'Bb oh press 10/7/5/3/3', '[{"total": 33, "weights": "33", "repetitions": "10"}, {"total": 53.0, "weights": "33/10", "repetitions": "7"}, {"total": 73.0, "weights": "33/10/10", "repetitions": "5"}, {"total": 83.0, "weights": "33/10/15", "repetitions": "3"}, {"total": 88.0, "weights": "33/10/15/2.5", "repetitions": "3"}, {"total": 73.0, "weights": "33/10/10", "repetitions": "7"}, {"total": 58.0, "weights": "33/10/2.5", "repetitions": "12"}, {"total": 53.0, "weights": "33/10", "repetitions": "25"}]', '2025-06-15 23:13:59.58391+00'),
	(221, 'back squat', '2024-09-12 00:00:00', 'BB Wide back squat  10/8/6/5/5', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 115.0, "weights": "45/35", "repetitions": "6"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 174.0, "weights": "34/45/25", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "8"}]', '2025-06-15 23:13:59.641698+00'),
	(222, 'bench press', '2024-09-13 00:00:00', 'Bench press 8/6/4/2/2/2', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "6"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "4"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "2"}, {"total": 135.0, "weights": "45/45", "repetitions": "2"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "2"}, {"total": 115.0, "weights": "45/35", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "15"}]', '2025-06-15 23:13:59.70643+00'),
	(223, '', '2024-09-16 00:00:00', '', '[]', '2025-06-15 23:13:59.785129+00'),
	(224, '', '2024-09-17 00:00:00', '', '[]', '2025-06-15 23:13:59.846606+00'),
	(225, 'back squat', '2024-09-20 00:00:00', 'Bb back squat box 12/10', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}]', '2025-06-15 23:13:59.913543+00'),
	(226, '', '2024-09-23 00:00:00', '', '[]', '2025-06-15 23:13:59.981075+00'),
	(227, '', '2024-09-24 00:00:00', '', '[]', '2025-06-15 23:14:00.050327+00'),
	(228, 'back squat', '2024-09-26 00:00:00', 'Heel elevated back squat 10/8/8', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}]', '2025-06-15 23:14:00.115424+00'),
	(229, 'bench press', '2024-09-27 00:00:00', 'Bench press ladder 10-1', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "9"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "7"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "6"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/15/15/10", "repetitions": "4"}, {"total": 135.0, "weights": "45/45", "repetitions": "3"}, {"total": 136.0, "weights": "45/45/0.5", "repetitions": "2"}, {"total": 146.0, "weights": "45/45/5/0.5", "repetitions": "1"}]', '2025-06-15 23:14:00.174899+00'),
	(230, 'deadlift', '2024-09-30 00:00:00', 'Deadlift 10/8/5/3/1/1/1', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 125.0, "weights": "45/15/25", "repetitions": "8"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 205.0, "weights": "45/45/25/10", "repetitions": "3"}, {"total": 215.0, "weights": "45/45/25/15", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "10"}]', '2025-06-15 23:14:00.237124+00'),
	(231, 'back squat', '2024-10-02 00:00:00', 'Wide stance back squats 8/8', '[{"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}, {"total": 145.0, "weights": "45/25/15/10", "repetitions": "8"}]', '2025-06-15 23:14:00.307292+00'),
	(232, 'bench press', '2024-10-04 00:00:00', 'Max Bench press 12/8/5/3/3', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/25", "repetitions": "3"}, {"total": 135.0, "weights": "45/10/25/10", "repetitions": "3"}, {"total": 145.0, "weights": "45/10/25/15", "repetitions": "3"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "5"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "12"}]', '2025-06-15 23:14:00.363597+00'),
	(235, 'romanian', '2024-10-10 00:00:00', 'BB Romanian deadlift 12/10/8x5', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}]', '2025-06-15 23:14:00.53176+00'),
	(236, 'bench press', '2024-10-11 00:00:00', 'Bench press 12/10', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "8"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "8"}]', '2025-06-15 23:14:00.588068+00'),
	(237, 'bulgarian', '2024-10-14 00:00:00', 'Bulgarian split squat 8/6/4/3/max', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "4"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "3"}, {"total": 125.0, "weights": "45/10/15/10/5", "repetitions": "3"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "5"}]', '2025-06-15 23:14:00.651876+00'),
	(238, '', '2024-10-15 00:00:00', '', '[]', '2025-06-15 23:14:00.707067+00'),
	(239, 'sldl', '2024-10-15 00:00:00', 'Bb sldl 8/6/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "6"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "5"}]', '2025-06-15 23:14:00.771745+00'),
	(240, '', '2024-10-17 00:00:00', '', '[]', '2025-06-15 23:14:00.830562+00'),
	(241, 'reverse lunge', '2024-10-21 00:00:00', 'Bb reverse lunge 8/6/5/5', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "8"}]', '2025-06-15 23:14:00.898369+00'),
	(242, '', '2024-10-22 00:00:00', '', '[]', '2025-06-15 23:14:00.973441+00'),
	(243, 'bstance deadlift', '2024-10-24 00:00:00', 'Bstance Deadlift 5/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-15 23:14:01.039444+00'),
	(244, '', '2024-10-25 00:00:00', '', '[]', '2025-06-15 23:14:01.107416+00'),
	(245, 'bulgarian', '2024-10-28 00:00:00', 'Bulgarian split squat 7/6/5/4/3', '[{"total": 45, "weights": "45", "repetitions": "7"}, {"total": 75.0, "weights": "45/15", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/15/5/5", "repetitions": "4"}]', '2025-06-15 23:14:01.188147+00'),
	(246, 'reverse lunge', '2024-11-11 00:00:00', 'Bb reverse lunge 7/6/5/4/3/2/1', '[{"total": 45, "weights": "45", "repetitions": "7"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "5"}, {"total": 105.0, "weights": "45/15/10/5", "repetitions": "4"}, {"total": 125.0, "weights": "45/15/10/10/5", "repetitions": "3"}, {"total": 135.0, "weights": "45/15/10/10/5/5", "repetitions": "2"}, {"total": 135.0, "weights": "45/15/10/10/5/5", "repetitions": "1"}]', '2025-06-15 23:14:01.25935+00'),
	(247, '', '2024-11-12 00:00:00', '', '[]', '2025-06-15 23:14:01.329541+00'),
	(248, 'sldl', '2024-11-13 00:00:00', 'SLDL 7/6/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-15 23:14:01.405087+00'),
	(249, 'bulgarian', '2024-11-18 00:00:00', 'Bulgarian split squat 8/6/4/3', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "4"}, {"total": 115.0, "weights": "45/10/25", "repetitions": "3"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "5"}]', '2025-06-15 23:14:01.470094+00'),
	(250, '', '2024-11-19 00:00:00', '', '[]', '2025-06-15 23:14:01.549529+00'),
	(251, 'bstance deadlift', '2024-11-21 00:00:00', 'Bstance deadlift 7/6', '[{"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "5"}]', '2025-06-15 23:14:01.611695+00'),
	(252, '', '2024-11-22 00:00:00', '', '[]', '2025-06-15 23:14:01.667953+00'),
	(253, '', '2024-11-24 00:00:00', '', '[]', '2025-06-15 23:14:01.724108+00'),
	(254, 'bench press', '2024-11-25 00:00:00', 'Bench press ladder 10-1', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "9"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/35", "repetitions": "4"}, {"total": 115.0, "weights": "45/35", "repetitions": "3"}, {"total": 125.0, "weights": "45/35/5", "repetitions": "2"}, {"total": 125.0, "weights": "45/35/5", "repetitions": "1"}]', '2025-06-15 23:14:01.789456+00'),
	(255, 'back squat', '2024-12-02 00:00:00', 'Bb back squat 12/12/8/8/4/4', '[{"total": 95.0, "weights": "45/25", "repetitions": "12"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "12"}, {"total": 115.0, "weights": "45/25/5/5", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}, {"total": 135.0, "weights": "45/25/15/5", "repetitions": "4"}, {"total": 155.0, "weights": "45/25/15/5/10", "repetitions": "4"}]', '2025-06-15 23:14:01.861316+00'),
	(256, '', '2024-12-02 00:00:00', '', '[]', '2025-06-15 23:14:01.918874+00'),
	(257, 'sumo deadlift', '2024-12-09 00:00:00', 'Bb sumo deadlift 10/8/6/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "10"}, {"total": 115.0, "weights": "45/35", "repetitions": "8"}, {"total": 135.0, "weights": "45/35/10", "repetitions": "6"}, {"total": 165.0, "weights": "45/35/25", "repetitions": "5"}]', '2025-06-15 23:14:01.9863+00'),
	(258, 'bench press', '2024-12-13 00:00:00', 'Bb bench press 8/5/3 3x 10s pause', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "3"}, {"total": 80.0, "weights": "45/15/2.5", "repetitions": "3"}]', '2025-06-15 23:14:02.058363+00'),
	(259, 'reverse lunge', '2024-12-16 00:00:00', 'Bb reverse lunge 7 to 1', '[{"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "4"}, {"total": 135.0, "weights": "45/45", "repetitions": "3"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "2"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "1"}]', '2025-06-15 23:14:02.116249+00'),
	(260, '', '2025-01-02 00:00:00', '', '[]', '2025-06-15 23:14:02.182226+00'),
	(261, 'back squat', '2025-01-06 00:00:00', 'Bb back squat 12/10/8/6/5', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "6"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}]', '2025-06-15 23:14:02.242976+00'),
	(262, 'bench press', '2025-01-07 00:00:00', 'Bb Bench press 12/8/6/4/3', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "4"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "3"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "3"}]', '2025-06-15 23:14:02.305728+00'),
	(263, 'back squat', '2025-01-11 00:00:00', 'Back squat 10/8/6/4', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "6"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "4"}, {"total": 175.0, "weights": "45/45/15/5", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "7"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "10"}]', '2025-06-15 23:14:02.36663+00'),
	(264, 'bench press', '2025-01-14 00:00:00', 'Bench press 85% 3rpm 12/10/7/6', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "10"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "7"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "6"}]', '2025-06-15 23:14:02.424598+00'),
	(265, 'back squat', '2025-01-20 00:00:00', 'Bb back squat 10/7/7', '[{"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "7"}, {"total": 145.0, "weights": "45/25/25", "repetitions": "7"}, {"total": 165.0, "weights": "45/25/25/10", "repetitions": "5"}]', '2025-06-15 23:14:02.480303+00'),
	(266, 'bench press', '2025-01-21 00:00:00', 'Bench press 95% 3rpm 12/10/7/5', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "10"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "7"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-15 23:14:02.543324+00'),
	(267, 'back squat', '2025-01-27 00:00:00', 'Bb back squat 12/8/5/3', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "3"}]', '2025-06-15 23:14:02.614308+00'),
	(268, 'bench press', '2025-01-28 00:00:00', 'Bench press 3rpm 10/7/5/5/3', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "7"}, {"total": 115.0, "weights": "45/15/10/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "3"}]', '2025-06-15 23:14:02.672538+00'),
	(269, 'back squat', '2025-02-03 00:00:00', 'Back squat 12/8/5/3/3 95%rpm', '[{"total": 95.0, "weights": "45/25", "repetitions": "12"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 175.0, "weights": "45/45/15/5", "repetitions": "3"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "7"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "10"}, {"total": 135.0, "weights": "45/45", "repetitions": "12"}]', '2025-06-15 23:14:02.734903+00'),
	(270, 'bench press', '2025-02-04 00:00:00', 'Bench press 12/10/7/5', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 105.0, "weights": "45/25/5", "repetitions": "7"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-15 23:14:02.792659+00'),
	(271, 'back squat', '2025-02-10 00:00:00', 'Back squat 12/10/7/5/3 3rpm', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "7"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 195.0, "weights": "45/45/25/5", "repetitions": "3"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "5"}, {"total": 30, "weights": "30", "repetitions": "10"}, {"total": 30, "weights": "30", "repetitions": "7"}, {"total": 35, "weights": "35", "repetitions": "5"}]', '2025-06-15 23:14:02.864713+00'),
	(272, '', '2025-02-17 00:00:00', '', '[]', '2025-06-15 23:14:02.933783+00'),
	(273, '', '2025-02-18 00:00:00', '', '[]', '2025-06-15 23:14:02.998576+00'),
	(274, 'reverse lunge', '2025-03-09 00:00:00', 'Bb reverse lunge 8-3', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "7"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "6"}, {"total": 125.0, "weights": "45/10/15/10/5", "repetitions": "5"}, {"total": 125.0, "weights": "45/10/15/15", "repetitions": "4"}, {"total": 135.0, "weights": "45/10/15/15/5", "repetitions": "3"}]', '2025-06-15 23:14:03.060915+00'),
	(275, '', '2025-03-10 00:00:00', '', '[]', '2025-06-15 23:14:03.12419+00'),
	(276, 'back squat', '2025-03-17 00:00:00', 'Bb back squat 12/10/8', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 125.0, "weights": "45/15/25", "repetitions": "10"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "8"}]', '2025-06-15 23:14:03.185592+00'),
	(277, '', '2025-03-18 00:00:00', '', '[]', '2025-06-15 23:14:03.248573+00'),
	(278, 'bb oh press', '2025-03-20 00:00:00', 'BB OH press 12/8/6/5', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "6"}, {"total": 80.0, "weights": "45/10/5/2.5", "repetitions": "5"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 55.0, "weights": "45/5", "repetitions": "25"}, {"total": 45, "weights": "45", "repetitions": "50"}]', '2025-06-15 23:14:03.316055+00'),
	(279, 'front squat', '2025-03-24 00:00:00', 'Front squat 8/6', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}]', '2025-06-15 23:14:03.377174+00'),
	(281, 'sumo deadlift', '2025-03-31 00:00:00', 'Bb sumo deadlift 12/10/8', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 125.0, "weights": "45/15/25", "repetitions": "8"}, {"total": 155.0, "weights": "45/15/25/15", "repetitions": "7"}]', '2025-06-15 23:14:03.485358+00'),
	(282, '', '2025-04-01 00:00:00', '', '[]', '2025-06-15 23:14:03.543897+00'),
	(283, 'back squat', '2025-04-07 00:00:00', 'Bb back squat 12/7', '[{"total": 45, "weights": "45", "repetitions": "12"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 115.0, "weights": "45/35", "repetitions": "5"}, {"total": 145.0, "weights": "45/35/15", "repetitions": "5"}]', '2025-06-15 23:14:03.604955+00'),
	(284, '', '2025-04-08 00:00:00', '', '[]', '2025-06-15 23:14:03.667075+00'),
	(285, 'deadlift', '2025-04-14 00:00:00', 'BB Deadlift 12/10/7/5/3', '[{"total": 75.0, "weights": "45/15", "repetitions": "12"}, {"total": 125.0, "weights": "45/15/25", "repetitions": "10"}, {"total": 165.0, "weights": "45/15/45", "repetitions": "7"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "5"}, {"total": 215.0, "weights": "45/45/25/15", "repetitions": "3"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "8"}]', '2025-06-15 23:14:03.725415+00'),
	(286, 'db bench press', '2025-04-15 00:00:00', 'DB bench press 10/8/6', '[{"total": 30, "weights": "30", "repetitions": "10"}, {"total": 35, "weights": "35", "repetitions": "8"}, {"total": 40, "weights": "40", "repetitions": "6"}, {"total": 50, "weights": "50", "repetitions": "5"}, {"total": 35, "weights": "35", "repetitions": "12"}]', '2025-06-15 23:14:03.78541+00'),
	(287, 'back squat', '2025-04-17 00:00:00', 'Bb back squat to box 8/8/8', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "8"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "12"}]', '2025-06-15 23:14:03.865181+00'),
	(288, 'sumo deadlift', '2025-04-21 00:00:00', 'Sumo deadlift 10/8/5/3/3 80-90effort', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 215.0, "weights": "45/45/25/15", "repetitions": "3"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "7"}, {"total": 135.0, "weights": "45/45", "repetitions": "10"}]', '2025-06-15 23:14:03.984942+00'),
	(289, '', '2025-04-22 00:00:00', '', '[]', '2025-06-15 23:14:04.044922+00'),
	(290, 'bench press', '2025-04-24 00:00:00', 'Bb bench press ladder 10-1', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "9"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "6"}, {"total": 105.0, "weights": "45/10/15/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "4"}, {"total": 125.0, "weights": "45/10/15/10/5", "repetitions": "3"}, {"total": 135.0, "weights": "45/10/15/15/5", "repetitions": "2"}, {"total": 140.0, "weights": "45/10/15/15/5/2.5", "repetitions": "1"}]', '2025-06-15 23:14:04.102806+00'),
	(291, 'sumo deadlift', '2025-04-28 00:00:00', 'Sumo Deadlift 10/8/5 heavy', '[{"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 135.0, "weights": "45/45", "repetitions": "8"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "10"}]', '2025-06-15 23:14:04.162742+00'),
	(292, 'db bench press', '2025-04-29 00:00:00', 'DB bench press 10/8/5/5/5', '[{"total": 25, "weights": "25", "repetitions": "10"}, {"total": 30, "weights": "30", "repetitions": "8"}, {"total": 40, "weights": "40", "repetitions": "5"}, {"total": 45, "weights": "45", "repetitions": "5"}, {"total": 50, "weights": "50", "repetitions": "5"}, {"total": 45, "weights": "45", "repetitions": "7"}, {"total": 40, "weights": "40", "repetitions": "10"}, {"total": 35, "weights": "35", "repetitions": "15"}, {"total": 30, "weights": "30", "repetitions": "20"}]', '2025-06-15 23:14:04.230129+00'),
	(293, 'bench press', '2025-05-02 00:00:00', 'Bench press 10/7/5/3/2/2 90%', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "3"}, {"total": 125.0, "weights": "45/10/15/15", "repetitions": "2"}, {"total": 145.0, "weights": "45/10/15/15/10", "repetitions": "2"}, {"total": 125.0, "weights": "45/10/15/15", "repetitions": "5"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "12"}]', '2025-06-15 23:14:04.298382+00'),
	(294, 'deadlift', '2025-05-05 00:00:00', 'Deadlift 10/8/6/5/5', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "6"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/15/5/5", "repetitions": "5"}, {"total": 175.0, "weights": "45/45/15/5", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 145.0, "weights": "45/45/5", "repetitions": "8"}]', '2025-06-15 23:14:04.358856+00'),
	(295, 'db bench press', '2025-05-06 00:00:00', 'DB bench press 10/7/5/5 80%', '[{"total": 30, "weights": "30", "repetitions": "10"}, {"total": 35, "weights": "35", "repetitions": "7"}, {"total": 45, "weights": "45", "repetitions": "5"}, {"total": 50, "weights": "50", "repetitions": "5"}, {"total": 45, "weights": "45", "repetitions": "5"}, {"total": 45, "weights": "45", "repetitions": "5"}, {"total": 35, "weights": "35", "repetitions": "12"}, {"total": 35, "weights": "35", "repetitions": "12"}]', '2025-06-15 23:14:04.417873+00'),
	(296, 'bench press', '2025-05-09 00:00:00', 'Bench press 10/8/6/5/5\* heavy', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/10/15/10/5", "repetitions": "5"}, {"total": 115.0, "weights": "45/10/15/10", "repetitions": "5"}, {"total": 118.5, "weights": "45/10/15/10/1.75", "repetitions": "5"}, {"total": 120.0, "weights": "45/10/15/10/2.5", "repetitions": "5"}, {"total": 120.0, "weights": "45/10/15/10/2.5", "repetitions": "5"}]', '2025-06-15 23:14:04.472431+00'),
	(297, 'sumo deadlift', '2025-05-12 00:00:00', 'Sumo deadlift 10/8/5/3/3 85%', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "3"}, {"total": 185.0, "weights": "45/45/15/10", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "7"}]', '2025-06-15 23:14:04.533266+00'),
	(298, '', '2025-05-13 00:00:00', '', '[]', '2025-06-15 23:14:04.594295+00'),
	(299, 'back squat', '2025-05-15 00:00:00', 'Elevated heel back squat 12/10/8', '[{"total": 65.0, "weights": "45/10", "repetitions": "12"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 125.0, "weights": "45/25/10/5", "repetitions": "8"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "8"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "8"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "8"}, {"total": 145.0, "weights": "45/25/10/10/5", "repetitions": "8"}, {"total": 145.0, "weights": "45/25/10/10/5", "repetitions": "8"}]', '2025-06-15 23:14:04.655042+00'),
	(300, 'deadlift', '2025-05-19 00:00:00', 'Conventional deadlift 10/8/5/3/3 90%', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "10"}, {"total": 135.0, "weights": "45/45", "repetitions": "8"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 185.0, "weights": "45/45/25", "repetitions": "3"}, {"total": 215.0, "weights": "45/45/25/15", "repetitions": "3"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 165.0, "weights": "45/45/15", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}]', '2025-06-15 23:14:04.72997+00'),
	(301, 'db bench press', '2025-05-20 00:00:00', 'DB bench press 10/8 heavy', '[{"total": 35, "weights": "35", "repetitions": "10"}, {"total": 40, "weights": "40", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "8"}, {"total": 45, "weights": "45", "repetitions": "8"}]', '2025-06-15 23:14:04.805011+00'),
	(302, '', '2025-05-22 00:00:00', '', '[]', '2025-06-15 23:14:04.882014+00'),
	(303, 'bench press', '2025-05-23 00:00:00', 'Bench press 10/8/5/3/3', '[{"total": 75.0, "weights": "45/15", "repetitions": "10"}, {"total": 95.0, "weights": "45/25", "repetitions": "8"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "3"}, {"total": 145.0, "weights": "45/25/15/10", "repetitions": "2"}, {"total": 155.0, "weights": "45/25/15/10/5", "repetitions": "1"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "5"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "12"}]', '2025-06-15 23:14:04.958139+00'),
	(304, 'bb oh press', '2025-05-28 00:00:00', 'BB OH press 10/8', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}, {"total": 75.0, "weights": "45/10/5", "repetitions": "8"}]', '2025-06-15 23:14:05.021441+00'),
	(305, 'reverse lunge', '2025-05-29 00:00:00', 'BB reverse lunge 8/6/5', '[{"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 95.0, "weights": "45/15/10", "repetitions": "6"}, {"total": 125.0, "weights": "45/25/15", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}]', '2025-06-15 23:14:05.082722+00'),
	(306, 'bench press', '2025-05-30 00:00:00', 'BB bench press 8/8', '[{"total": 75.0, "weights": "45/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}, {"total": 105.0, "weights": "45/15/15", "repetitions": "8"}]', '2025-06-15 23:14:05.142128+00'),
	(307, 'reverse lunge', '2025-06-02 00:00:00', 'BB reverse lunge 8/6/5/3/3', '[{"total": 45, "weights": "45", "repetitions": "8"}, {"total": 95.0, "weights": "45/25", "repetitions": "6"}, {"total": 115.0, "weights": "45/25/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "3"}, {"total": 155.0, "weights": "45/45/10", "repetitions": "3"}, {"total": 175.0, "weights": "45/45/10/5/5", "repetitions": "3"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}, {"total": 135.0, "weights": "45/45", "repetitions": "5"}]', '2025-06-15 23:14:05.206789+00'),
	(308, 'bulgarian', '2025-06-03 00:00:00', 'Bulgarian split squat 10/8', '[{"total": 33, "weights": "33", "repetitions": "10"}, {"total": 63.0, "weights": "33/15", "repetitions": "8"}, {"total": 83.0, "weights": "33/15/10", "repetitions": "8"}, {"total": 103.0, "weights": "33/10/25", "repetitions": "8"}, {"total": 103.0, "weights": "33/10/25", "repetitions": "8"}, {"total": 103.0, "weights": "33/10/25", "repetitions": "8"}]', '2025-06-15 23:14:05.267828+00'),
	(309, 'bb oh press', '2025-06-06 00:00:00', 'BB OH press 10/8/6/5/3/3', '[{"total": 45, "weights": "45", "repetitions": "10"}, {"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/25", "repetitions": "3"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 75.0, "weights": "45/15", "repetitions": "5"}, {"total": 85.0, "weights": "45/15/5", "repetitions": "5"}, {"total": 80.0, "weights": "45/15/2.5", "repetitions": "5"}, {"total": 80.0, "weights": "45/15/2.5", "repetitions": "5"}]', '2025-06-15 23:14:05.325765+00'),
	(310, 'reverse lunge', '2025-06-09 00:00:00', 'BB reverse lunge 8/6/5 85% rpm', '[{"total": 65.0, "weights": "45/10", "repetitions": "8"}, {"total": 95.0, "weights": "45/10/15", "repetitions": "6"}, {"total": 115.0, "weights": "45/10/25", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "5"}, {"total": 135.0, "weights": "45/25/10/10", "repetitions": "5"}]', '2025-06-15 23:14:05.396723+00'),
	(311, 'bench press', '2025-06-10 00:00:00', '21 guns Bench press 7 low/high/full 50% RPM', '[{"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}, {"total": 75.0, "weights": "45/15", "repetitions": "7"}]', '2025-06-15 23:14:05.450137+00'),
	(312, 'deadlift', '2025-06-20 00:00:00', 'BB SL deadlift 7/6', '[{"total": 65.0, "weights": "45/10", "repetitions": "7"}, {"total": 85.0, "weights": "45/10/10", "repetitions": "6"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "5"}, {"total": 95.0, "weights": "45/10/10/5", "repetitions": "5"}]', '2025-06-15 23:14:05.508164+00'),
	(313, 'bb oh press', '2025-06-21 00:00:00', 'Earthquake BB OH press 8/6', '[{"total": 43.0, "weights": "33/5", "repetitions": "8"}, {"total": 53.0, "weights": "33/10", "repetitions": "6"}, {"total": 63.0, "weights": "33/15", "repetitions": "5"}, {"total": 63.0, "weights": "33/15", "repetitions": "5"}, {"total": 63.0, "weights": "33/15", "repetitions": "5"}, {"total": 63.0, "weights": "33/15", "repetitions": "5"}, {"total": 63.0, "weights": "33/15", "repetitions": "5"}]', '2025-06-15 23:14:05.574887+00');


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

SELECT pg_catalog.setval('"public"."activities_id_seq"', 313, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
