CREATE DATABASE zoo;

USE zoo;

CREATE TABLE employees ( 
    employee_id INT(8) UNSIGNED NOT NULL auto_increment,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    user_name VARCHAR(25) NOT NULL,
    password VARCHAR(25) NOT NULL,
    hash_value VARCHAR(40) NOT NULL,
    PRIMARY KEY (employee_id)
) AUTO_INCREMENT=1;

CREATE TABLE jobs ( 
    job_id INT(8) UNSIGNED NOT NULL auto_increment,
    job_title VARCHAR(25) NOT NULL,
    access VARCHAR(255) NOT NULL,
    PRIMARY KEY (job_id)
) AUTO_INCREMENT=1;

CREATE TABLE employees_job (
    employee_id INT(8) UNSIGNED NOT NULL,
    job_id INT(8) UNSIGNED NOT NULL, 
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

INSERT INTO employees (first_name, last_name, user_name, password, SHA-512_hash_value)
VALUES ("Griffin", "Keyes", "griffin.keys", "alphabet soup", "a974544e79e5c26ab422bd8acabea2f227cbcb31c7cd0b81a639ee06dd20177d5bc3aad5bae129dfbd1fb58d14bd4ae62faef74a365f27c360224b051381590");

INSERT INTO employees (first_name, last_name, user_name, password, SHA-512_hash_value)
VALUES ("Rosario", "Dawson", "rosario.dawson", "animal doctor", "edcceecf7b57ffb068b5d9b8ccf320619908d403795c8c1ad5e7efb9b6ea188a4f2c0dac16e14a760a05cccea4a52c809c42278217fe10b87a1a2f657d6750d9");

INSERT INTO employees (first_name, last_name, user_name, password, SHA-512_hash_value)
VALUES ("Bernie", "gorilla", "bernie.gorilla", "secret password", "30a78b888e0838c49a300f269d81a400952b5daf0718e34ed75f2e57ae13ae3d8576d2466b0b1268eb82984e128e4cb280f16a8c607e14cdb760b30550eced1b");

INSERT INTO employees (first_name, last_name, user_name, password, SHA-512_hash_value)
VALUES ("Donald", "Monkey", "donald.monkey", "M0nk3y business", "9c77b8bd5a16386e569ef9a092eca0de5d7f8ee703ad538a07ae3b3ea3fcfbf29eed21442c67f52cdfffb851d144fdafa2df7d9c71d47541513a0b1010f0566c");

INSERT INTO employees (first_name, last_name, user_name, password, SHA-512_hash_value)
VALUES ("Jerome", "Grizzlybear", "jerome.grizzlybear", "grizzly1234", "d7206f08fd2b9038b2d8393690ae91f5ffd08b5babffd53fe54d311a2bd82a922b6e9b9a1511dee327782e1c5ca3a7f6ae1137b8f7b81af897d7849871495181");

INSERT INTO employees (first_name, last_name, user_name, password, SHA-512_hash_value)
VALUES ("Bruce", "Grizzlybear", "bruce.grizzlybear", "letmein", "adfb6dd1ab1238afc37acd8ca24c1279f8d46f61907dd842faab35b0cc41c6e8ad84cbdbef4964b8334c22c4985c2387d53bc47e6c3d0940ac962f521a127d9f");


INSERT INTO jobs (job_title, access)
VALUES ("Administrator", "Has zoo's main computer access");

INSERT INTO jobs (job_title, access)
VALUES ("Veterinarian", "Has all animals' health records access");

INSERT INTO jobs_titles (job_title, access)
VALUES ("Zookeeper", "Has all animals' information and daily monitoring logs access");


INSERT INTO employees_job (employee_id, job_id)
VALUES (1, 3);

INSERT INTO employees_job (employee_id, job_id)
VALUES (2, 1);

INSERT INTO employees_job (employee_id, job_id)
VALUES (3, 2);

INSERT INTO employees_job (employee_id, job_id)
VALUES (4, 3);

INSERT INTO employees_job (employee_id, job_id)
VALUES (5, 2);

INSERT INTO employees_job (employee_id, job_id)
VALUES (6, 1);