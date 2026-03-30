-- ============================================================
-- 06_insert_class.sql
-- Gym Database – Seed data for Class
-- Requires: Coach, Location
-- ============================================================

INSERT INTO Class (classID, className, price, dayOfWeek, startTime, roomID, roomName, coachID, locationID) VALUES
(1, 'Power Lifting 101',   25.0, 'Monday',    '07:00', 1, 'Weight Room A',  1, 1),
(2, 'Morning Yoga Flow',   20.0, 'Tuesday',   '06:30', 2, 'Yoga Studio',    2, 2),
(3, 'HIIT Blast',          22.0, 'Wednesday', '18:00', 3, 'Cardio Room',    3, 3),
(4, 'Spin & Burn',         18.0, 'Thursday',  '17:30', 4, 'Spin Studio',    5, 4),
(5, 'Functional Fitness',  20.0, 'Friday',    '09:00', 1, 'Weight Room A',  4, 5),
(6, 'Olympic Lifting',     30.0, 'Saturday',  '10:00', 5, 'Platform Room',  6, 1),
(7, 'Endurance Run Club',  15.0, 'Sunday',    '08:00', 6, 'Outdoor Track',  5, 2);
