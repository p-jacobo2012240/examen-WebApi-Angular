/*DML Pablo Daniel Jacobo Sanchez IN6AM*/

/*PROCEDURE INSERT USUARIO*/
CALL sp_insertUsuario('Sam', 'zero');
CALL sp_insertUsuario('Pablo', '1234');
CALL sp_insertUsuario('?', '?');

/*PROCEDURE UPDATE USUARIO*/
CALL SP_updateUsuario('jose', '1234', '4321');
CALL SP_updateUsuario('sam', 'asdf', 'fdsa');
CALL SP_updateUsuario('?','?','?');

/*PROCEDURE AUTHENTICATE*/
CALL sp_autenticarUsuario('Sam', 'zero');
CALL sp_autenticarUsuario('Pablo', '1234');
CALL sp_autenticarUsuario('?', '?');

/*PROCEDURE SHOW USUARIO*/
CALL sp_selectUsuario('daniel','23456');
CALL sp_selectUsuario('kev','calderon');
CALL sp_selectUsuario('?','?');

/*PROCEDURE DELETE USUARIO */
CALL  SP_deleteUsuario(1);
CALL  SP_deleteUsuario(?);

/*PROCEDURE INSERT TAREA*/
CALL sp_insertTarea('mate', 'es facil');
CALL sp_insertTarea('tecnologiaa', 'es compleja');
CALL sp_insertTarea('?', '?');

/*PROCEDURE SHOW TAREA*/
Call sp_selectTarea('?','?');
