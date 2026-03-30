-- ============================================================
-- 04_insert_location.sql
-- Gym Database – Seed data for Location
-- ============================================================

INSERT INTO Location (locationID, locationName, address, telephone, email, photo) VALUES
(1, 'Downtown Hub',      '123 King St W, Toronto, ON',          '416-555-1001', 'downtown@gym.com',  'downtown.jpg'),
(2, 'Midtown Studio',    '456 Yonge St, Toronto, ON',           '416-555-1002', 'midtown@gym.com',   'midtown.jpg'),
(3, 'Scarborough East',  '789 Sheppard Ave E, Scarborough, ON', '416-555-1003', 'scarb@gym.com',     'scarb.jpg'),
(4, 'Mississauga West',  '321 Hurontario St, Mississauga, ON',  '905-555-1004', 'miss@gym.com',      'miss.jpg'),
(5, 'Brampton North',    '654 Bovaird Dr, Brampton, ON',        '905-555-1005', 'brampton@gym.com',  'brampton.jpg'),
(6, 'North York',        '987 Finch Ave W, North York, ON',     '416-555-1006', 'northyork@gym.com', 'northyork.jpg');
