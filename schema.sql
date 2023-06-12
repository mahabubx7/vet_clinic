/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name varchar(100),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL(5, 2),
	PRIMARY KEY (id)
);

ALTER TABLE animals ADD COLUMN species varchar(100);

-- multiple tables -------------------

-- species
CREATE TABLE species(
	id INT GENERATED ALWAYS AS IDENTITY,
	name varchar(200),
	PRIMARY KEY(id)
);

-- owners
CREATE TABLE owners(
	id INT GENERATED ALWAYS AS IDENTITY,
	full_name varchar(200),
    age INT,
	PRIMARY KEY(id)
);

-- modify animals table
ALTER TABLE animals DROP column species;

ALTER TABLE animals ADD species_id INT REFERENCES species(id);

ALTER TABLE animals ADD owners_id INT REFERENCES owners(id);

-- vets table
CREATE TABLE vets(
	id INT GENERATED ALWAYS AS IDENTITY,
	name varchar(200),
	age INT,
    graduation_date DATE,
	PRIMARY KEY(id)
);


-- junction tables

BEGIN;

ALTER TABLE animals ADD CONSTRAINT animals_id_unique UNIQUE (id);

COMMIT;

CREATE TABLE visits(
	id INT GENERATED ALWAYS AS IDENTITY,
	vet_id INT REFERENCES vets(id),
	animal_id INT REFERENCES animals(id),
  date DATE,
	PRIMARY KEY(id)
);


CREATE TABLE specializations(
	id INT GENERATED ALWAYS AS IDENTITY,
	vet_id INT REFERENCES vets(id),
	species_id INT REFERENCES species(id),
	PRIMARY KEY(id)
);


-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

-- optimizing changes
ALTER TABLE animals ADD COLUMN species_name varchar(200);

CREATE TABLE animal_summary (
    total_weight DECIMAL(10, 2)
);

ALTER TABLE animals ADD COLUMN age_years INT;
UPDATE animals SET age_years = EXTRACT(YEAR FROM AGE(CURRENT_DATE, date_of_birth));

UPDATE animals
SET species_name = species.name
FROM species
WHERE animals.species_id = species.id;