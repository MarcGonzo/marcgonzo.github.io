ALTER TABLE employees ADD COLUMN work_schedule VARCHAR(10) NOT NULL;

UPDATE employees SET work_schedule = "AM" WHERE job_id = 1;

UPDATE employees SET work_schedule = "PM" WHERE job_id = 2;

UPDATE employees SET work_schedule = "AM/PM" WHERE job_id = 3;

INSERT INTO employees (first_name, last_name, user_name, password, SHA-512_hash_value, work_schedule)
VALUES ("Marcos", "Gonzalez", "marcos.gonzalez", "password1234", "8C7C9D16278AC60A19776F204F3109B1C2FC782FF8B671F42426A85CF72B1021887DD9E4FEBE420DCD215BA499FF12E230DAF67AFFFDE8BF84BEFE867A8822C4", "AM");

INSERT INTO employees (first_name, last_name, user_name, password, SHA-512_hash_value, work_schedule)
VALUES ("Adelia", "Gonzalez", "adelia.gonzalez", "flower9876", "9ACA8E9F5E19EE9624FF8CD59B06C3EEA4C34EB15F8DC59462B2E3DA71C5BA4C28FB24DA73149511069086313BBBDABF8CA47C6AC94B27E1B58011F824452BD0", "PM");