-- =========================================
-- Create Nations Table
-- =========================================
CREATE TABLE nations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- =========================================
-- Create Factions Table
-- =========================================
CREATE TABLE factions (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nation_id INT REFERENCES nations(id),
    description TEXT
);

-- =========================================
-- Characters Table
-- =========================================
CREATE TABLE characters (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nation_id INT REFERENCES nations(id),
    date_of_birth VARCHAR(30),
    date_of_death VARCHAR(30),
    gender VARCHAR(20),
    height NUMERIC(4,2),
    hair_color VARCHAR(50),
    eye_color VARCHAR(50)
);

-- =========================================
-- Character-Factions Junction Table
-- =========================================
CREATE TABLE character_factions (
    character_id INT REFERENCES characters(id) ON DELETE CASCADE,
    faction_id INT REFERENCES factions(id) ON DELETE CASCADE,
    PRIMARY KEY(character_id, faction_id)
);

-- =========================================
-- Locations Table
-- =========================================
CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nation_id INT REFERENCES nations(id),
    description TEXT
);

-- =========================================
-- Episodes Table
-- =========================================
CREATE TABLE episodes (
    id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    season INT,
    episode_number INT,
    air_date DATE
);

-- =========================================
-- Bending Styles Table
-- =========================================
CREATE TABLE bending_styles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

-- =========================================
-- Character-Bending Junction Table
-- =========================================
CREATE TABLE character_bending (
    character_id INT REFERENCES characters(id) ON DELETE CASCADE,
    bending_id INT REFERENCES bending_styles(id) ON DELETE CASCADE,
    PRIMARY KEY(character_id, bending_id)
);

-- =========================================
-- Weapons Table
-- =========================================
CREATE TABLE weapons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- =========================================
-- Character-Weapons Junction Table
-- =========================================
CREATE TABLE character_weapons (
    character_id INT REFERENCES characters(id) ON DELETE CASCADE,
    weapon_id INT REFERENCES weapons(id) ON DELETE CASCADE,
    PRIMARY KEY(character_id, weapon_id)
);

-- =========================================
-- Languages Table
-- =========================================
CREATE TABLE languages (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

-- =========================================
-- Character-Languages Junction Table
-- =========================================
CREATE TABLE character_languages (
    character_id INT REFERENCES characters(id) ON DELETE CASCADE,
    language_id INT REFERENCES languages(id) ON DELETE CASCADE,
    PRIMARY KEY(character_id, language_id)
);

-- =========================================
-- Animals Table
-- =========================================
CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    species VARCHAR(100),
    owner_character_id INT REFERENCES characters(id) ON DELETE SET NULL
);

-- =========================================
-- Quotes Table
-- =========================================
CREATE TABLE quotes (
    id SERIAL PRIMARY KEY,
    character_id INT REFERENCES characters(id) ON DELETE CASCADE,
    quote TEXT NOT NULL
);