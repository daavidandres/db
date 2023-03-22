CREATE DATABASE IF NOT EXISTS test;
USE test

CREATE TABLE libros(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titulo TEXT NOT NULL,
    descripcion TEXT NOT NULL,
    autor TEXT NOT NULL,
    paginas INT(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS bibliotecarios(
    id INT(12) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cedula INT(12) NOT NULL,
    nombre TEXT NOT NULL,
    fecha_insercion DATE NOT NULL DEFAULT NOW(),
    email TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS prestamos(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fecha_prestamo DATE NOT NULL DEFAULT NOW(),
    fecha_devolucion DATE NOT NULL DEFAULT NOW(),
    libros TEXT NOT NULL,
    bibliotecario TEXT NOT NULL
)