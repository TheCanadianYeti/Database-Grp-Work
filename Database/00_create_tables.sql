-- ============================================================
-- 00_create_tables.sql
-- Gym Database – DDL (SQLite)
-- Run this script first before any INSERT scripts.
-- ============================================================

PRAGMA foreign_keys = ON;

-- ------------------------------------------------------------
-- Amenity
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Amenity (
    amenityID   INTEGER PRIMARY KEY,
    amenityName TEXT    NOT NULL,
    description TEXT,
    icon        TEXT
);

-- ------------------------------------------------------------
-- Certificate
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Certificate (
    certID      INTEGER PRIMARY KEY,
    certName    TEXT    NOT NULL,
    issuingBody TEXT
);

-- ------------------------------------------------------------
-- Coach
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Coach (
    coachID            INTEGER PRIMARY KEY,
    firstName          TEXT    NOT NULL,
    lastName           TEXT    NOT NULL,
    level              TEXT,
    avgRating          REAL,
    trainingPhilosophy TEXT,
    photo              TEXT
);

-- ------------------------------------------------------------
-- Location
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Location (
    locationID   INTEGER PRIMARY KEY,
    locationName TEXT    NOT NULL,
    address      TEXT    NOT NULL,
    telephone    TEXT,
    email        TEXT,
    photo        TEXT
);

-- ------------------------------------------------------------
-- Member
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Member (
    memberID  INTEGER PRIMARY KEY,
    firstName TEXT    NOT NULL,
    lastName  TEXT    NOT NULL,
    email     TEXT    NOT NULL UNIQUE,
    phone     TEXT
);

-- ------------------------------------------------------------
-- Class  (depends on Coach, Location)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Class (
    classID    INTEGER PRIMARY KEY,
    className  TEXT    NOT NULL,
    price      REAL,
    dayOfWeek  TEXT,
    startTime  TEXT,
    roomID     INTEGER,
    roomName   TEXT,
    coachID    INTEGER NOT NULL,
    locationID INTEGER NOT NULL,
    FOREIGN KEY (coachID)    REFERENCES Coach(coachID),
    FOREIGN KEY (locationID) REFERENCES Location(locationID)
);

-- ------------------------------------------------------------
-- Class_Enrollment  (depends on Member, Class)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Class_Enrollment (
    memberID       INTEGER NOT NULL,
    classID        INTEGER NOT NULL,
    enrollmentDate TEXT,
    status         TEXT,
    PRIMARY KEY (memberID, classID),
    FOREIGN KEY (memberID) REFERENCES Member(memberID),
    FOREIGN KEY (classID)  REFERENCES Class(classID)
);

-- ------------------------------------------------------------
-- Coach_Certificate  (depends on Coach, Certificate)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Coach_Certificate (
    coachID      INTEGER NOT NULL,
    certID       INTEGER NOT NULL,
    dateObtained TEXT,
    PRIMARY KEY (coachID, certID),
    FOREIGN KEY (coachID) REFERENCES Coach(coachID),
    FOREIGN KEY (certID)  REFERENCES Certificate(certID)
);

-- ------------------------------------------------------------
-- Location_Amenity  (depends on Location, Amenity)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Location_Amenity (
    locationID INTEGER NOT NULL,
    amenityID  INTEGER NOT NULL,
    PRIMARY KEY (locationID, amenityID),
    FOREIGN KEY (locationID) REFERENCES Location(locationID),
    FOREIGN KEY (amenityID)  REFERENCES Amenity(amenityID)
);

-- ------------------------------------------------------------
-- Location_Coach  (depends on Location, Coach)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Location_Coach (
    locationID INTEGER NOT NULL,
    coachID    INTEGER NOT NULL,
    PRIMARY KEY (locationID, coachID),
    FOREIGN KEY (locationID) REFERENCES Location(locationID),
    FOREIGN KEY (coachID)    REFERENCES Coach(coachID)
);

-- ------------------------------------------------------------
-- Member_Coach  (depends on Member, Coach)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Member_Coach (
    memberID     INTEGER NOT NULL,
    coachID      INTEGER NOT NULL,
    assignedDate TEXT,
    PRIMARY KEY (memberID, coachID),
    FOREIGN KEY (memberID) REFERENCES Member(memberID),
    FOREIGN KEY (coachID)  REFERENCES Coach(coachID)
);

-- ------------------------------------------------------------
-- Member_Visit  (depends on Member, Location)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Member_Visit (
    memberID   INTEGER NOT NULL,
    locationID INTEGER NOT NULL,
    visitDate  TEXT    NOT NULL,
    visitCount INTEGER DEFAULT 1,
    PRIMARY KEY (memberID, locationID, visitDate),
    FOREIGN KEY (memberID)   REFERENCES Member(memberID),
    FOREIGN KEY (locationID) REFERENCES Location(locationID)
);

-- ------------------------------------------------------------
-- Reference_  (depends on Coach)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Reference_ (
    referenceID INTEGER PRIMARY KEY,
    coachID     INTEGER NOT NULL,
    clientName  TEXT,
    clientEmail TEXT,
    clientPhone TEXT,
    FOREIGN KEY (coachID) REFERENCES Coach(coachID)
);

-- ------------------------------------------------------------
-- Review  (depends on Coach, Member)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Review (
    reviewID           INTEGER PRIMARY KEY,
    coachID            INTEGER NOT NULL,
    memberID           INTEGER NOT NULL,
    communicationScore INTEGER,
    enthusiasmScore    INTEGER,
    punctualityScore   INTEGER,
    reviewDate         TEXT,
    comment            TEXT,
    overallRating      REAL,
    FOREIGN KEY (coachID)  REFERENCES Coach(coachID),
    FOREIGN KEY (memberID) REFERENCES Member(memberID)
);
