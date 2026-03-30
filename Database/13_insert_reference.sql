-- ============================================================
-- 13_insert_reference.sql
-- Gym Database – Seed data for Reference_
-- Requires: Coach
-- ============================================================

INSERT INTO Reference_ (referenceID, coachID, clientName, clientEmail, clientPhone) VALUES
(1, 1, 'Marcus Reid',  'mreid@corp.com',    '416-555-7001'),
(2, 1, 'Sandra Liu',   'sliu@health.ca',    '647-555-7002'),
(3, 2, 'Tom Bakker',   'tbakker@fit.com',   '905-555-7003'),
(4, 3, 'Nina Osei',    'nosei@wellness.ca', '416-555-7004'),
(5, 3, 'Carlos Vega',  'cvega@active.ca',   '647-555-7005'),
(6, 5, 'Rachel Stone', 'rstone@run.com',    '905-555-7006'),
(7, 6, 'Derek Huang',  'dhuang@lift.ca',    '416-555-7007');
