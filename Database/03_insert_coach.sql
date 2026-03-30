-- ============================================================
-- 03_insert_coach.sql
-- Gym Database – Seed data for Coach
-- ============================================================

INSERT INTO Coach (coachID, firstName, lastName, level, avgRating, trainingPhilosophy, photo) VALUES
(1, 'Jordan', 'Park',     'Senior',       4.8, 'Strength-first progressive overload',        'jordan_park.jpg'),
(2, 'Maya',   'Chen',     'Intermediate', 4.5, 'Holistic mind-body wellness approach',       'maya_chen.jpg'),
(3, 'Liam',   'Nguyen',   'Senior',       4.9, 'HIIT and metabolic conditioning',            'liam_nguyen.jpg'),
(4, 'Sophia', 'Roberts',  'Junior',       4.2, 'Functional movement and mobility',           'sophia_r.jpg'),
(5, 'Ethan',  'Davis',    'Intermediate', 4.6, 'Endurance and cardio periodisation',         'ethan_d.jpg'),
(6, 'Ava',    'Thompson', 'Senior',       4.7, 'Olympic lifting and power development',      'ava_t.jpg');
