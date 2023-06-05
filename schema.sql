/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int not null,
    name varchar(100) not null,
    date_of_birth date not null,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal not null
);
