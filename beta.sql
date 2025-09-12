                                    --  tabla countries
CREATE TABLE countries (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(10) NOT NULL,
    abrv VARCHAR(10),
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

--  tabla departments
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(10),
    abrv VARCHAR(10),
    country_id INT NOT NULL REFERENCES countries(id),
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

--  tabla cities
CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(10),
    abrv VARCHAR(10),
    department_id INT NOT NULL REFERENCES departments(id),
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

--  tabla users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    id_number TEXT NOT NULL,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    mobile_number TEXT NOT NULL,
    address TEXT,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    status BOOLEAN DEFAULT true,
    city_id INT REFERENCES cities(id),
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);
INSERT INTO countries (name, code, abrv) VALUES
('Colombia', 'CO', 'COL'),
('Mexico', 'MX', 'MEX'),
('Argentina', 'AR', 'ARG');

-- Insertar datos en departments
INSERT INTO departments (name, code, abrv, country_id) VALUES
('Antioquia', 'ANT', 'ANT', 1),
('Cundinamarca', 'CUN', 'CUN', 1),
('Jalisco', 'JAL', 'JAL', 2),
('Buenos Aires', 'BUE', 'BUE', 3);

-- Insertar datos en cities
INSERT INTO cities (name, code, abrv, department_id) VALUES
('Medellin', 'MDE', 'MDE', 1),
('Bogotá', 'BOG', 'BOG', 2),
('Guadalajara', 'GDL', 'GDL', 3),
('La Plata', 'LPL', 'LPL', 4);

-- Insertar usuario con ciudad relacionad
INSERT INTO users (id_number, firstname, lastname, mobile_number, email, password, city_id)
VALUES ('789654123', 'Juan', 'Pérez', '3001234567', 'juan.perez@email.com', 'password123', 1);
