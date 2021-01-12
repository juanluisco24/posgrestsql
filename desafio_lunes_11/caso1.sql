CREATE TABLE departamento(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20)
);
CREATE TABLE trabajadores(
    nombre VARCHAR(50) NOT NULL,
    rut VARCHAR(10) NOT NULL PRIMARY KEY,
    direccion VARCHAR(255),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamento(id)
);
CREATE TABLE liquidaciones(
    id SERIAL PRIMARY KEY,
    fecha DATE,
    drive VARCHAR(20),
    trabajadores_rut VARCHAR(10),
    FOREIGN KEY (trabajadores_rut) REFERENCES trabajadores(rut)
);