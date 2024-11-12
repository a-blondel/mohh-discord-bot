-- password is always 'pass'
INSERT INTO ACCOUNT (NAME, PASS, MAIL, LOC, BORN, ZIP, GEND, SPAM, TOS, TICK, GAMECODE, VERS, SKU, SLUS, SDKVERS, BUILDDATE, CREATED_ON, UPDATED_ON) VALUES
('labeo', '$2a$10$6wND4Z9b3Nmz28Y5DAdGBen1LzQd0kyQI9rnRvb0qad3iQTxlypR6', 'labeo@ea.com', 'enCZ', '20070101', '12345', 'M', 'NN', 1, 'NDS/SVCLOC/TOKEN/90.45.123.44|dtrk+Wso4Notvo8JTXRPe2KU', '1380790872', 'WII/MOH08', 'MOHA', 'RM2X', '5.6.2.0', '"Sep  6 2007"', TIMESTAMP '2023-08-11 00:06:03.435237', TIMESTAMP '2023-08-11 00:06:44.596445'),
('jack', '$2a$10$6wND4Z9b3Nmz28Y5DAdGBen1LzQd0kyQI9rnRvb0qad3iQTxlypR6', 'jack@ea.com', 'frFR', '20070101', '12345', 'M', 'NN', 1, 'NDS/SVCLOC/TOKEN/90.45.123.44|dtrk+Wso4Notvo8JTXRPe2KU', '1380790872', 'WII/MOH08', 'MOHA', 'RM2X', '5.6.2.0', '"Sep  6 2007"', TIMESTAMP '2023-08-11 00:06:03.435237', TIMESTAMP '2023-08-11 00:06:44.596445'),
('bigguy', '$2a$10$6wND4Z9b3Nmz28Y5DAdGBen1LzQd0kyQI9rnRvb0qad3iQTxlypR6', 'bigguy@ea.com', 'enGB', '20070101', '12345', 'M', 'NN', 1, 'NDS/SVCLOC/TOKEN/90.45.123.44|dtrk+Wso4Notvo8JTXRPe2KU', '1380790872', 'WII/MOH08', 'MOHA', 'RM2X', '5.6.2.0', '"Sep  6 2007"', TIMESTAMP '2023-08-11 00:06:03.435237', TIMESTAMP '2023-08-11 00:06:44.596445'),
('gigi', '$2a$10$FORi89nE.KM8ULX0wc6p.uld0lg0iyIvNADkuxnO7hWmyGpZ4U2ve', 'gigi@ea.com', 'deDE', '20070101', '12345', 'M', 'YY', 1, 'NDS/SVCLOC/TOKEN/90.45.123.44|dtrk+Wso4Notvo8JTXRPe2KU', '1380790872', 'WII/MOH08', 'MOHA', 'RM2X', '5.6.2.0', '"Sep  6 2007"', TIMESTAMP '2023-08-12 01:26:11.260055', TIMESTAMP '2023-08-12 01:35:28.541726'),
('lchti', '$2a$10$FORi89nE.KM8ULX0wc6p.uld0lg0iyIvNADkuxnO7hWmyGpZ4U2ve', 'lchti@ea.com', 'frFR', '20070101', '12345', 'M', 'NN', 1, 'NDS/SVCLOC/TOKEN/90.45.123.44|dtrk+Wso4Notvo8JTXRPe2KU', '1380790872', 'WII/MOH08', 'MOHA', 'RM2X', '5.6.2.0', '"Sep  6 2007"', TIMESTAMP '2023-08-12 01:26:11.260055', TIMESTAMP '2023-08-12 01:35:28.541726');


INSERT INTO PERSONA (ACCOUNT_ID, PERS) VALUES
(1, 'Labeo'),
(2, 'jack041'),
(3, 'bigguyKid'),
(4, '"GIGI 88 OiOi"'),
(5, '"l ch ti"');

INSERT INTO PERSONA_STATS (PERSONA_ID, VERS, SLUS, KILL, DEATH, SHOT, HIT, HEAD, COLTSHOT, COLTHIT, COLTKILL, COLTHEAD, TOMSHOT, TOMHIT, TOMKILL, TOMHEAD, BARSHOT, BARHIT, BARKILL, BARHEAD, GARSHOT, GARHIT, GARKILL, GARHEAD, ENFIELDSHOT, ENFIELDHIT, ENFIELDKILL, ENFIELDHEAD, SHOTTYSHOT, SHOTTYHIT, SHOTTYKILL, SHOTTYHEAD, BAZSHOT, BAZHIT, BAZKILL, BAZHEAD, LUGERSHOT, LUGERHIT, LUGERKILL, LUGERHEAD, MP40SHOT, MP40HIT, MP40KILL, MP40HEAD, MP44SHOT, MP44HIT, MP44KILL, MP44HEAD, KARSHOT, KARHIT, KARKILL, KARHEAD, GEWRSHOT, GEWRHIT, GEWRKILL, GEWRHEAD, PANZSHOT, PANZHIT, PANZKILL, PANZHEAD, GREENTHROW, GRENADEKILL, MELEEKILL, WIN, LOSS, AXIS, ALLIES, DMRND, CTFAXIS, CTFALLIES, DEMAXIS, DEMALLIES, CAPAXIS, CAPALLIES, KOHAXIS, KOHALLIES, BLAXIS, BLALLIES, TDMAXIS, TDMALLIES, MAP1, MAP2, MAP3, MAP4, MAP5, MAP6, MAP7, MAP8, MAP9, MAP10, MAP11, MAP12, MAP13, MAP14, MAP15, MAP16, MAP17, MAP18, MAP19, MAP20, MAP21, MAP22, MAP23, MAP24, MAP25, MAP26, MAP27, MAP28, PLAYTIME) VALUES
(1, 'WII/MOH08', 'RM2X', 186100, 39998, 1000000, 337600, 120000, 10000, 3497, 558, 0, 10000, 2702, 489, 0, 10000, 3245, 286, 0, 10000, 5477, 581, 0, 10000, 3564, 18630, 0, 10000, 7115, 1267, 0, 10000, 5909, 558, 0, 10000, 3329, 8316, 0, 10000, 3961, 520, 0, 10000, 2446, 1132, 0, 10000, 4459, 363, 0, 10000, 3373, 144404, 0, 0, 0, 0, 0, 0, 8945, 51, 1000, 500, 1000, 100, 100, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 100, 100, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13029171),
(2, 'WII/MOH08', 'RM2X', 187062, 59432, 1000000, 224300, 125000, 10000, 2808, 7171, 0, 10000, 2380, 25448, 0, 10000, 2529, 12270, 0, 10000, 3096, 2870, 0, 10000, 3228, 7106, 0, 10000, 6309, 5458, 0, 10000, 4128, 35, 0, 10000, 2778, 7476, 0, 10000, 2071, 81850, 0, 10000, 2591, 8423, 0, 10000, 2555, 9505, 0, 10000, 2975, 8128, 0, 0, 0, 0, 0, 0, 5377, 5945, 1500, 500, 1250, 750, 1000, 200, 400, 0, 0, 0, 0, 0, 0, 0, 0, 500, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9447575),
(3, 'WII/MOH08', 'RM2X', 209921, 83263, 1000000, 219400, 140000, 10000, 2479, 20815, 0, 10000, 2062, 19942, 0, 10000, 2286, 4111, 0, 10000, 2382, 652, 0, 10000, 3000, 6104, 0, 10000, 5279, 5624, 0, 10000, 5210, 5963, 0, 10000, 2532, 24077, 0, 10000, 1871, 25096, 0, 10000, 2120, 5853, 0, 10000, 2472, 1323, 0, 10000, 3092, 27071, 0, 0, 0, 0, 0, 0, 53785, 9505, 1200, 550, 400, 600, 1000, 200, 300, 0, 0, 0, 0, 0, 0, 0, 0, 400, 500, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16464391),
(4, 'WII/MOH08', 'RM2X', 164441, 50807, 1000000, 248700, 115000, 10000, 3171, 2557, 0, 10000, 2494, 7879, 0, 10000, 2696, 954, 0, 10000, 3502, 156, 0, 10000, 3994, 1663, 0, 10000, 6515, 2265, 0, 10000, 7107, 3855, 0, 10000, 2976, 11599, 0, 10000, 2122, 39885, 0, 10000, 2378, 1535, 0, 10000, 4258, 1266, 0, 10000, 3958, 68224, 0, 0, 0, 0, 0, 0, 21633, 970, 900, 350, 850, 200, 0, 800, 50, 0, 0, 0, 0, 0, 0, 0, 0, 200, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8041124),
(5, 'WII/MOH08', 'RM2X', 71794, 20674, 1000000, 238400, 50000, 10000, 3007, 3159, 0, 10000, 2101, 8603, 0, 10000, 2248, 2393, 0, 10000, 5650, 3261, 0, 10000, 3187, 5290, 0, 10000, 6008, 3605, 0, 10000, 5342, 500, 0, 10000, 2839, 3146, 0, 10000, 1982, 6016, 0, 10000, 2231, 2909, 0, 10000, 3510, 9702, 0, 10000, 3016, 5800, 0, 0, 0, 0, 0, 0, 9567, 7843, 700, 300, 350, 550, 0, 300, 600, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4612034);


INSERT INTO GAME (VERS, SLUS, NAME, PARAMS, SYSFLAGS, PASS, MINSIZE, MAXSIZE, START_TIME, END_TIME) VALUES
('PSP/MOH07', 'ULUS10141', 'MOH', '8,b5,,1,-1,,,,1,e4a,e68,,114f0022', '262656', NULL, 1, 33, TIMESTAMP '2024-09-28 01:35:53.088243', '2024-09-28 01:35:53.088243'),
('WII/MOH08', 'RM2X', '"CTF Village"', '2,191,,,,,,,,-1,1,1,1,1,1,1,1,1,20,e49,e67,15f90,122d0022', '262656', NULL, 1, 33, TIMESTAMP '2023-08-12 01:35:53.088243', NULL);
