CREATE DATABASE Practica2017;
USE Practica2017;

/*
LAS INSTRUCCIONES ESTAN EN TODO EL DOCUMENTO DDL.
1. NO SE DEBE DE ALTERAR LA ESTRUCTURA DE LA BASE DE DATOS DADA.
2. CREAR EL ARCHIVO CORRESPONDIENTE DE DML PARA LA BASE DE DATOS.
3. EN EL ARCHIVO DML UTILIZAR TODOS LOS PROCEDIMIENTOS DECLARADOS EN EL ARCHIVO DDL.
4. SOLO DE DEBE DE CREAR LOS PROCEDIMIENTOS DE ALMACENADO INDICADOS.
*/


CREATE TABLE Tarea(
		idTarea INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    descripcion VARCHAR(40) NOT NULL,
		fecha_registro DATETIME NOT NULL,
		fecha_final DATETIME NOT NULL,
    PRIMARY KEY (idTarea)
);

CREATE TABLE Usuario(
		idUsuario INT NOT NULL AUTO_INCREMENT,
    nick VARCHAR(30) NOT NULL,
    contrasena VARCHAR(30) NOT NULL
    cambios_contrasena INT NOT NULL
		fecha_registro DATETIME NOT NULL
    fecha_modificacion DATETIME NULL
		picture TEXT NULL,
    PRIMARY KEY (idUsuario)
);

CREATE TABLE UsuarioTareas(
		idUsuarioTareas INT NOT NULL AUTO_INCREMENT,
    idUsuario INT NOT NULL,
    idTarea INT NOT NULL,
    PRIMARY KEY (idUsuarioTareas),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idTarea) REFERENCES Tarea(idTarea)
);

DELIMITER $$
CREATE PROCEDURE sp_insertUsuario(
_nick VARCHAR(30),
_contrasena VARCHAR(30))
BEGIN
	INSERT INTO Usuario(nick, contrasena, cambios_contrasena, fecha_registro, fecha_modificacion, picture)
    VALUES(_nick, _contrasena, 0, NOW(), NOW(), NULL);
END $$
DELIMITER ;

/*
SP USUARIO UPDATE
CREAR UN PROCEDIMIENTO DE ALMACENADO QUE REALICE LO SIGUIENTE:
1. Modificar el usuario que espere los siguientes parametros:
a. nick
b. contrasena
c. picture
d. idUsuario
2. si se modifica la contraseña llevar el control de los cambios de contraseña
3. actualizar la fecha de modificacion
*/

/*
SP_AUTENTICAR
*/
DELIMITER $$
CREATE PROCEDURE sp_autenticarUsuario(
_nick VARCHAR(30),
_contrasena VARCHAR(30))
BEGIN
	SELECT * FROM Usuario WHERE nick = _nick AND contrasena = _contrasena LIMIT 1;
END $$
DELIMITER ;

/*
SP USUARIO SELECT
CREAR UN PROCEDIMIENTO DE ALMACENADO QUE REALICE LO SIGUIENTE:
1. mostrar todos los usuarios con sus datos
2. la consulta debe de llevar lo siguiente:
a. idUsuario,
b. nick
c. contrasena
d. cambios_contrasena
e. fecha_registro
f. hora_registro
g. fecha_modificacion
h. hora_modificacion
i. picture
3. Debe de estar ordenada de los usuarios que han sido modificados ultimamente.
*/

/*
SP USUARIO DELETE
CREAR UN PROCEDIMIENTO DE ALMACENADO QUE REALICE LO SIGUIENTE:
1. Eliminar el usuario
2. Eliminar todas las tareas que tenga asignada
*/

/*
SP TAREA INSERT
CREAR UN PROCEDIMIENTO DE ALMACENADO QUE REALICE LO SIGUIENTE:
1. Registrar una nueva tarea junto al usuario quien lo creo
*/

/*
SP TAREA SELECT
CREAR UN PROCEDIMIENTO DE ALMACENADO QUE REALICE LO SIGUIENTE:
1. Mostrar todas las tareas del usuario por medio de su id
2. Mostrar en la consulta las siguientes columnas.
a. idTarea
b. titulo
c. descripcion
d. fecha_registro
e. hora del registro,
f. fecha_final,
g. hora final
3. la consulta debe de estar ordenada, por fecha y hora.
*/
