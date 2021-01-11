CREATE TABLE usuario(
email VARCHAR(50),
nombre VARCHAR(20) NOT NULL,
telefono VARCHAR(15) NOT NULL,
PRIMARY KEY (email));

CREATE TABLE registro(
id SERIAL,
reporte TEXT NOT NULL,
responsable VARCHAR(50) NOT NULL,
usuario_email VARCHAR(50) REFERENCES usuario (email),
PRIMARY KEY (id));

INSERT INTO usuario(email, nombre, telefono) VALUES ('usuario1@gmail.com',
'Juan', '12345678');
INSERT INTO usuario(email, nombre, telefono) VALUES ('usuario2@gmail.com',
'Francisca', '12345679');
INSERT INTO registro (reporte, responsable, usuario_email) values ('El usuario
presenta problemas para realizar el pago online', 'Javiera',
'usuario1@gmail.com');
INSERT INTO registro (reporte, responsable, usuario_email) values ('El usuario
presenta problemas para ingresar a la plataforma', 'Javiera',
'usuario2@gmail.com');

select * from registro join usuario on usuario.email = registro.usuario_email;