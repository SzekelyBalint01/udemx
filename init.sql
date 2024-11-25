DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS cars CASCADE;
DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE cars (
                      id SERIAL PRIMARY KEY,
                      name VARCHAR(255) NOT NULL,
                      photo BYTEA,
                      active BOOLEAN NOT NULL DEFAULT TRUE,
                      price INTEGER
);

CREATE TABLE users (
                       id SERIAL PRIMARY KEY,
                       name VARCHAR(255),
                       email VARCHAR(255),
                       address VARCHAR(255),
                       phone VARCHAR(17)

);

CREATE TABLE reservations (
                              id SERIAL PRIMARY KEY,
                              start_date DATE,
                              end_date DATE,
                              car_id INTEGER,
                              user_id INTEGER,
                              rent_days INTEGER,
                              price INTEGER,
                              FOREIGN KEY (car_id) REFERENCES cars (id) ON DELETE CASCADE,
                              FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);

INSERT INTO cars (id, name, photo, active, price) VALUES
                                                      (1, 'Toyota', NULL, TRUE, 5000),
                                                      (2, 'Honda', NULL, FALSE, 8000),
                                                      (3, 'Ford', NULL, TRUE, 6500),
                                                      (4, 'Chevrolet', NULL, TRUE, 8000),
                                                      (5, 'Nissan', NULL, FALSE, 3000),
                                                      (6, 'Volkswagen', NULL, TRUE, 5300),
                                                      (7, 'Hyundai', NULL, TRUE, 2900),
                                                      (8, 'BMW', NULL, FALSE, 10000),
                                                      (9, 'Mercedes', NULL, TRUE, 12000),
                                                      (10, 'Kia', NULL, TRUE, 5400);