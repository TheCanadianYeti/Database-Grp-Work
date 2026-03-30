-- ============================================================
-- 01_insert_amenity.sql
-- Gym Database – Seed data for Amenity
-- ============================================================

INSERT INTO Amenity (amenityID, amenityName, description, icon) VALUES
(1, 'Swimming Pool', '25m heated indoor pool with lap lanes',     'pool.svg'),
(2, 'Sauna',         'Finnish dry sauna, capacity 10',            'sauna.svg'),
(3, 'Parking',       'Free underground parking for members',      'parking.svg'),
(4, 'Childcare',     'Supervised play area for ages 2-10',        'childcare.svg'),
(5, 'Juice Bar',     'Fresh smoothies and protein shakes',        'juice.svg'),
(6, 'Spin Studio',   'Dedicated cycling room with 30 bikes',      'spin.svg'),
(7, 'Yoga Room',     'Dedicated hardwood-floor yoga studio',      'yoga.svg');
