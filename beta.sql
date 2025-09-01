CREATE TABLE useres(
    id SERIAL PRIMARY KEY,id_number TEXT NOT NULL,firstname VARCHAR(30) NOT NULL,lastname VARCHAR(30) NOT NULL,mobile_numbre TEXT NOT NULL,address TEXT NULL,email TEXT NOT NULL UNIQUE,    password TEXT NOT NULL,status BOOLEAN DEFAULT true,create_at TIMESTAMPTZ DEFAULT now(),    update_at TIMESTAMPTZ DEFAULT now(),    deleted_at TIMESTAMPTZ DEFAULT now(),);

CREATE TABLE useres(
    id SERIAL PRIMARY KEY,
    id_number TEXT NOT NULL,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    mobile_numbre TEXT NOT NULL,
    address TEXT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    status BOOLEAN DEFAULT true,
    create_at TIMESTAMPTZ DEFAULT now(),
    update_at TIMESTAMPTZ DEFAULT now(),
    deleted_at TIMESTAMPTZ DEFAULT now(),

);

insert into users(id_number, firstname, lastname, mobile_numbre, email, password)
values ('456879445', 'cristian ', 'charfuelan', '32154668', 'cristiancharfuelan@email', '1246879');