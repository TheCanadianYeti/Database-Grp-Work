-- Wireframe 1: Locations tab

SELECT
    l.locationName,
    SUM(mv.visitCount) AS timesVisitedThisMonth
FROM Member_Visit mv
JOIN Location l ON l.locationID = mv.locationID
WHERE mv.memberID = 1
  AND strftime('%Y-%m', mv.visitDate) = strftime('%Y-%m', 'now')
GROUP BY l.locationID, l.locationName
ORDER BY timesVisitedThisMonth DESC;


-- Wireframe 2: Midtown Location tab

-- Part 1: Location details (Address, Tel, Email)
SELECT
    locationName,
    address,
    telephone,
    email
FROM Location
WHERE locationName = 'Midtown Studio';

-- Part 2: Amenities at Midtown Studio
SELECT
    a.amenityName
FROM Amenity a
JOIN Location_Amenity la ON la.amenityID = a.amenityID
JOIN Location l          ON l.locationID = la.locationID
WHERE l.locationName = 'Midtown Studio';

-- Part 3: Coaches at Midtown Studio
SELECT
    c.firstName,
    c.lastName
FROM Coach c
JOIN Location_Coach lc ON lc.coachID   = c.coachID
JOIN Location l        ON l.locationID = lc.locationID
WHERE l.locationName = 'Midtown Studio';


-- Wireframe 3: Coaches tab

-- Part 1: My Coaches
SELECT
    c.firstName,
    c.lastName,
    c.level,
    c.avgRating
FROM Coach c
JOIN Member_Coach mc ON mc.coachID = c.coachID
WHERE mc.memberID = 1;

-- Part 2: All Coaches
SELECT
    c.firstName,
    c.lastName,
    c.level,
    c.avgRating
FROM Coach c;


-- Wireframe 4: Coach Sally tab

-- Part 1: Coach basic info (name, level, rating)
SELECT
    firstName,
    lastName,
    level,
    avgRating,
    trainingPhilosophy
FROM Coach
WHERE coachID = 1;

-- Part 2: Locations the coach works from
SELECT
    l.locationName
FROM Location l
JOIN Location_Coach lc ON lc.locationID = l.locationID
WHERE lc.coachID = 1;

-- Part 3: Certificates
SELECT
    cert.certName
FROM Certificate cert
JOIN Coach_Certificate cc ON cc.certID = cert.certID
WHERE cc.coachID = 1;

-- Part 4: References (client name, phone, email)
SELECT
    clientName,
    clientPhone,
    clientEmail
FROM Reference_
WHERE coachID = 1;