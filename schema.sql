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

-- upadte animals & others relations
ALTER TABLE animals ADD COLUMN species_id integer REFERENCES species(id);
ALTER TABLE animals ADD COLUMN owner_id integer REFERENCES owners(id);
