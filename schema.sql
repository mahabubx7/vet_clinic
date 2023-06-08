-- animals
CREATE TABLE animals (
    id serial PRIMARY KEY,
    name varchar(100) not null,
    date_of_birth date not null,
    escape_attempts int not null,
    neutered boolean not null,
    weight_kg decimal not null
);

-- owners
CREATE TABLE owners (
    id serial PRIMARY KEY,
    full_name varchar(100),
    age integer
);

-- species
CREATE TABLE species (
    id serial PRIMARY KEY,
    name varchar(100)
);

-- vets
CREATE TABLE vets (
    id serial PRIMARY KEY,
    name varchar(100),
    age integer,
    date_of_graduation date
);

-- upadte animals & others relations
ALTER TABLE animals ADD COLUMN species_id integer REFERENCES species(id);
ALTER TABLE animals ADD COLUMN owner_id integer REFERENCES owners(id);


-- JOIN: specializations
CREATE TABLE specializations (
    vet_id integer REFERENCES vets(id),
    species_id integer REFERENCES species(id),
    PRIMARY KEY (vet_id, species_id)
);

-- JOIN: visits
CREATE TABLE visits (
    vet_id integer REFERENCES vets(id),
    animal_id integer REFERENCES animals(id),
    visit_date date,
    PRIMARY KEY (vet_id, animal_id)
);
