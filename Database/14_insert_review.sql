-- ============================================================
-- 14_insert_review.sql
-- Gym Database – Seed data for Review
-- Requires: Coach, Member
-- ============================================================

INSERT INTO Review (reviewID, coachID, memberID, communicationScore, enthusiasmScore, punctualityScore, reviewDate, comment, overallRating) VALUES
(1, 1, 2, 5, 5, 5, '2025-01-15', 'Jordan is phenomenal — best coach I''ve had!',    5.0),
(2, 2, 3, 4, 5, 4, '2025-01-22', 'Maya''s yoga classes are so calming.',             4.5),
(3, 3, 1, 5, 5, 4, '2025-02-03', 'Liam pushes you to your limits, love it.',        4.7),
(4, 4, 5, 3, 4, 5, '2025-02-18', 'Good fundamentals, still developing style.',      4.0),
(5, 5, 4, 5, 4, 5, '2025-03-01', 'Ethan''s endurance sessions are top-tier.',       4.7),
(6, 6, 6, 5, 5, 5, '2025-03-10', 'Ava is an Olympic lifting genius!',               5.0),
(7, 1, 7, 4, 5, 5, '2025-03-20', 'Great energy and very knowledgeable.',            4.7);
