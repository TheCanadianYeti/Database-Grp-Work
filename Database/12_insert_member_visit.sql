-- ============================================================
-- 12_insert_member_visit.sql
-- Gym Database – Seed data for Member_Visit
-- Requires: Member, Location
-- ============================================================

INSERT INTO Member_Visit (memberID, locationID, visitDate, visitCount) VALUES
(1, 1, '2025-02-01', 3),
(2, 1, '2025-02-03', 5),
(3, 2, '2025-02-05', 2),
(4, 4, '2025-02-07', 4),
(5, 5, '2025-02-10', 1),
(6, 1, '2025-02-12', 6),
(7, 2, '2025-02-15', 2);
