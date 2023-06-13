-- patients
CREATE TABLE patients (
	id INTEGER GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(100) NOT NULL,
  date_of_birth DATE NOT NULL,
	PRIMARY KEY(id)
);

-- treatments
CREATE TABLE treatments (
  id INTEGER GENERATED ALWAYS AS IDENTITY,
  type VARCHAR(36) NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY(id)
);

-- medical_histories
CREATE TABLE medical_histories (
  id INTEGER GENERATED ALWAYS AS IDENTITY,
  admitted_at TIMESTAMP NOT NULL,
  status VARCHAR(255),
  PRIMARY KEY(id)
);

ALTER TABLE medical_histories ADD patient_id INTEGER 
REFERENCES patients(id) ON DELETE CASCADE;

-- invoices
CREATE TABLE invoices (
  id INTEGER GENERATED ALWAYS AS IDENTITY,
  total_amount DECIMAL NOT NULL,
  generated_at TIMESTAMP NOT NULL,
  payed_at TIMESTAMP NOT NULL,
  PRIMARY KEY(id)
);

ALTER TABLE invoices ADD medical_history_id INTEGER 
REFERENCES medical_histories(id) ON DELETE CASCADE;
