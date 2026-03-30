-- ============================================================
-- 07_insert_class_enrollment.sql
-- Gym Database – Seed data for Class_Enrollment
-- Requires: Member, Class
-- ============================================================

INSERT INTO Class_Enrollment (memberID, classID, enrollmentDate, status) VALUES
(1, 3, '2025-01-10', 'Active'),
(2, 1, '2025-01-12', 'Active'),
(3, 2, '2025-01-15', 'Active'),
(4, 4, '2025-01-18', 'Active'),
(5, 5, '2025-02-01', 'Waitlisted'),
(6, 6, '2025-02-05', 'Active'),
(7, 7, '2025-02-10', 'Cancelled');
