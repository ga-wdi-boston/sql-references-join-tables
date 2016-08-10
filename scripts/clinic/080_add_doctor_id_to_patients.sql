ALTER TABLE patients
  ADD COLUMN doctor_id INTEGER REFERENCES doctors(id);
CREATE INDEX patient_doctor_id_index ON patients(doctor_id);
