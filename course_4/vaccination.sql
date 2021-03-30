-- create a table called "countries"
CREATE TABLE IF NOT EXISTS countries (
    country TEXT NOT NULL PRIMARY KEY,
    iso_code TEXT,
    vaccines TEXT,
    source_name TEXT,
    source_website TEXT
);


-- create a table called "vaccination_data"
CREATE TABLE IF NOT EXISTS vaccination_data (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    country TEXT,
    date TEXT,
    total_vaccinations INTEGER,
    people_vaccinated INTEGER,
    people_fully_vaccinated INTEGER,
    daily_vaccinations_raw INTEGER,
    daily_vaccinations INTEGER,
    total_vaccinations_per_hundred DOUBLE,
    people_vaccinated_per_hundred DOUBLE,
    people_fully_vaccinated_per_hundred DOUBLE,
    daily_vaccinations_per_million DOUBLE,
    FOREIGN KEY(country) REFERENCES countries(country)
);

-- create a table called "confirmed_cases"
CREATE TABLE IF NOT EXISTS confirmed_cases (
    id TEXT PRIMARY KEY,
    country TEXT,
    cases INTEGER,
    date TEXT
);



