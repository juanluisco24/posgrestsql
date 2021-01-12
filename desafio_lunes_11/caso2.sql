CREATE TABLE curso(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20)
);
CREATE TABLE alumnos(
    rut VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES curso(id)
);
CREATE TABLE pruebas(
    id SERIAL PRIMARY KEY,
    puntaje INT(2),
    alumnos_rut VARCHAR(10),
    FOREIGN KEY (alumnos_rut) REFERENCES alumnos(rut),
    profesor_id INT,
    FOREIGN KEY (profesor_id) REFERENCES profesor(id)
);
CREATE TABLE profesor(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20),
    departamento VARCHAR(20)
);