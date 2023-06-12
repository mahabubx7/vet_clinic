/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
    id INTEGER GENERATED ALWAYS AS IDENTITY,
    name varchar(100),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL,
		PRIMARY KEY (id)
);

ALTER TABLE animals ADD COLUMN species varchar(100);

-- multiple tables -------------------

-- owners
CREATE TABLE owners(
	id INTEGER GENERATED ALWAYS AS IDENTITY,
	full_name varchar(200),
  age INTEGER,
	PRIMARY KEY(id)
);

-- species
CREATE TABLE species(
	id INTEGER GENERATED ALWAYS AS IDENTITY,
	name varchar(200) NOT NULL,
	PRIMARY KEY(id)
);

-- modify animals table
ALTER TABLE animals DROP column species;

ALTER TABLE animals ADD species_id INTEGER REFERENCES species(id) ON DELETE CASCADE;

ALTER TABLE animals ADD owner_id INTEGER REFERENCES owners(id) ON DELETE CASCADE;

-- vets table
CREATE TABLE vets(
	id INTEGER GENERATED ALWAYS AS IDENTITY,
	name varchar(200) NOT NULL,
	age INTEGER NOT NULL,
  date_of_graduation DATE NOT NULL,
	PRIMARY KEY(id)
);


-- junction tables
CREATE TABLE specializations(
	vet_id INTEGER REFERENCES vets(id) ON DELETE CASCADE,
	species_id INTEGER REFERENCES species(id) ON DELETE CASCADE
);

CREATE TABLE visits(
	vet_id INTEGER REFERENCES vets(id) ON DELETE CASCADE,
	animal_id INTEGER REFERENCES animals(id) ON DELETE CASCADE,
  date_of_visit DATE NOT NULL
);


ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE INDEX owners_email_idx ON owners(email);
CREATE INDEX visits_animal_id_index ON visits(animal_id);
CREATE INDEX visits_vet_id_index ON visits(vet_id);