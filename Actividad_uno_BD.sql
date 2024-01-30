DROP DATABASE IF EXISTS actividad1_clase;
CREATE DATABASE actividad1_clase;
USE actividad1_clase;

CREATE TABLE Departamento (
    ID_Departamento INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL
);

CREATE TABLE CARGO (
    ID_CARGO INT AUTO_INCREMENT PRIMARY KEY,
    CARGO VARCHAR(255) NOT NULL
);


CREATE TABLE empleado (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    id_CARGO INT,
    salario DECIMAL(10, 2),
    fecha_Inicio DATE,
    id_Departamento INT,
    FOREIGN KEY (ID_Departamento) REFERENCES Departamento(ID_Departamento),
	FOREIGN KEY (ID_CARGO) REFERENCES CARGO(ID_CARGO)
);

CREATE TABLE Proyecto (
    id_Proyecto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    id_departamento INT
);

CREATE TABLE empleado_proyecto (
    id_Empleado INT,
    id_ProyectoS INT,
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado),
    FOREIGN KEY (id_proyectoS) REFERENCES Proyecto(id_proyecto)
);