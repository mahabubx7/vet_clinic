CREATE TABLE animals (
  id int generated always AS identity, 
  name varchar(50) NOT NULL, 
  date_of_birth date, 
  escape_attempts integer, 
  neutered bit, 
  weight_kg decimal, 
  PRIMARY KEY (id)
);

ALTER TABLE animals ADD COLUMN species varchar(50);


CREATE TABLE owners (
  id int generated always AS identity NOT NULL,
  full_name varchar(50),
  age integer, 
  PRIMARY KEY (id)
);


CREATE TABLE species (
  id int generated always AS identity NOT NULL,
  name varchar(50),
  PRIMARY key(id)
);


ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id integer;


ALTER TABLE animals ADD CONSTRAINT fk_species
FOREIGN KEY(species_id) REFERENCES species(id) ON
DELETE CASCADE;


ALTER TABLE animals ADD COLUMN owner_id integer;


ALTER TABLE animals ADD CONSTRAINT fk_owners
FOREIGN KEY(owner_id) REFERENCES owners(id) ON
DELETE CASCADE;


CREATE TABLE vets (
  id int generated always AS identity,
  name varchar(50),
  age integer, 
  date_of_graduation date, 
  PRIMARY KEY(id)
);


CREATE TABLE specializations (
  vet_id integer, 
  species_id integer, 
  CONSTRAINT fk_vets
  FOREIGN key(vet_id) REFERENCES vets(id),
  CONSTRAINT fk_species_spec
  FOREIGN KEY(species_id) REFERENCES species(id),
  PRIMARY KEY(vet_id, species_id)
);


CREATE TABLE visits (
  animal_id integer, 
  vet_id integer, 
  date_of_visit date, 
  CONSTRAINT fk_animal_visit
  FOREIGN key(animal_id) REFERENCES animals(id),
  CONSTRAINT fk_vets_visit FOREIGN key(vet_id) REFERENCES vets(id),
  PRIMARY KEY(animal_id, vet_id, date_of_visit)
);