USE BD_SITTPR
GO

/*Estados*/
CREATE PROCEDURE usp_ListarEstadoEmpUsu
AS
BEGIN
SELECT * FROM ESTADOEMPUSU 
END
GO

CREATE PROCEDURE usp_ListarEstadoMobEquip
AS
BEGIN
SELECT * FROM ESTADOMOBEQUIP 
END
GO

/*Tipos*/
CREATE PROCEDURE usp_ListarTipoEqMob
AS
BEGIN
SELECT * FROM TIPOEQMOB 
END
GO

CREATE PROCEDURE usp_ListarTipoRuta
AS
BEGIN
SELECT * FROM TIPORUTA
END
GO

CREATE PROCEDURE usp_ListarTipoEmpleado
AS
BEGIN
SELECT * FROM TIPOEMPLEADO 
END
GO

CREATE PROCEDURE usp_ListarTipoServicio
AS
BEGIN
SELECT * FROM TIPOSERVICIO 
END
GO

CREATE PROCEDURE usp_ListarTipoUsuario
AS
BEGIN
SELECT * FROM TIPOUSUARIO 
END
GO

/*Datos*/
CREATE PROCEDURE usp_ListarEstacion
AS
BEGIN
SELECT * FROM ESTACIÓN 
END
GO

CREATE PROCEDURE usp_ListarArea
AS
BEGIN
SELECT * FROM AREA 
END
GO

CREATE PROCEDURE usp_ListarPais
AS
BEGIN
SELECT * FROM PAIS
END
GO

/*Empleado*/

CREATE PROCEDURE usp_IniciarSesion(@USU VARCHAR(50), @PSS VARCHAR(50))
AS
BEGIN
SELECT ESTADOEMPUSUCODIGO, AREACODIGO, TIPOEMPLEADOCODIGO, NOMBRE, APELLIDOS FROM EMPLEADO WHERE USUARIO = @USU AND CONTRASEÑA = @PSS 
END
GO

CREATE PROCEDURE usp_ListarEmpleadoOperaciones
AS
BEGIN
SELECT CODIGO, CONCAT(NOMBRE,' ', APELLIDOS) AS NOMCOMPLETO FROM EMPLEADO WHERE AREACODIGO = 'A0005'
END
GO

CREATE PROCEDURE usp_ListarEmpleado
AS
BEGIN
SELECT * FROM EMPLEADO
END
GO

CREATE PROCEDURE usp_RegistrarEmpleado(@COD CHAR(10), @DNI VARCHAR(50), @NOM VARCHAR(50), 
@APE VARCHAR(50), @SEX VARCHAR(50), @COR VARCHAR(50), @EDA INTEGER, @DIR VARCHAR(50), 
@TEL VARCHAR(50), @USU VARCHAR(50), @CON VARCHAR(50), @FRG DATETIME, @FAC DATETIME, 
@TEM CHAR(5), @TEU CHAR(5), @EST CHAR(5), @ARE CHAR(5))
AS
BEGIN
INSERT INTO EMPLEADO VALUES (@COD, @DNI, @NOM, @APE, @SEX, @COR, @EDA, @DIR, @TEL, @USU, @CON, 
@FRG, @FAC, @TEM, @TEU, @EST, @ARE)
END
GO

CREATE PROCEDURE usp_ActualizarEmpleado(@DNI VARCHAR(50), @NOM VARCHAR(50), 
@APE VARCHAR(50), @SEX VARCHAR(50), @COR VARCHAR(50), @EDA INTEGER, @DIR VARCHAR(50), 
@TEL VARCHAR(50), @FAC DATETIME, @TEM CHAR(5), @TEU CHAR(5), @EST CHAR(5), 
@ARE CHAR(5), @COD CHAR(10))
AS
BEGIN
UPDATE EMPLEADO SET DNI = @DNI, NOMBRE = @NOM, APELLIDOS = @APE, SEXO = @SEX, CORREO = @COR, 
EDAD = @EDA, DIRECCION = @DIR, TELEFONO = @TEL, FECHAACT = @FAC, TIPOEMPLEADOCODIGO = @TEM, 
ESTADOEMPUSUCODIGO = @TEU, ESTACIÓNCODIGO = @EST, AREACODIGO = @ARE WHERE CODIGO = @COD
END
GO

CREATE PROCEDURE usp_ActualizarDatos(@EDA INTEGER, @DIR VARCHAR(50), 
@TEL VARCHAR(50), @USU VARCHAR(50), @PSS VARCHAR(50), @FAC DATETIME, @COD CHAR(10))
AS
BEGIN
UPDATE EMPLEADO SET EDAD = @EDA, DIRECCION = @DIR, TELEFONO = @TEL, USUARIO = @USU, CONTRASEÑA = @PSS,
FECHAACT = @FAC
WHERE CODIGO = @COD
END
GO

/*Proveedor*/
CREATE PROCEDURE usp_ListarProveedor
AS
BEGIN
SELECT * FROM PROVEEDOR
END
GO

CREATE PROCEDURE usp_RegistrarProveedor(@COD CHAR(10), @RUC VARCHAR(50), @RAZ VARCHAR(50), 
@REP VARCHAR(50), @DIR VARCHAR(50), @TEL VARCHAR(50), @COR VARCHAR(50), @FRG DATETIME, 
@FAC DATETIME, @CTA VARCHAR(50), @PAI CHAR(5))
AS
BEGIN
INSERT INTO PROVEEDOR VALUES (@COD, @RUC, @RAZ, @REP, @DIR, @TEL, @COR, @FRG, @FAC, @CTA, @PAI)
END
GO

CREATE PROCEDURE usp_ActualizarProveedor(@RUC VARCHAR(50), @RAZ VARCHAR(50), @REP VARCHAR(50), 
@DIR VARCHAR(50), @TEL VARCHAR(50), @COR VARCHAR(50), @FAC DATETIME, @CTA VARCHAR(50), 
@PAI CHAR(5), @COD CHAR(10))
AS
BEGIN
UPDATE PROVEEDOR SET RUC = @RUC, RAZSOCIAL = @RAZ, REPLEGAL = @REP, DIRECCION = @DIR, TELEFONO = @TEL,
CORREO = @COR, FECHAACT = @FAC, CTABANCARIA = @CTA, PAISCODIGO = @PAI WHERE CODIGO = @COD
END
GO

/*Equipo*/
CREATE PROCEDURE usp_ListarEquipo
AS
BEGIN
SELECT * FROM EQUIPO
END
GO

CREATE PROCEDURE usp_RegistrarEquipo(@COD CHAR(10), @DES VARCHAR(50), @PLA VARCHAR(50), @FRG DATETIME, 
@FAC DATETIME, @PRO CHAR(10), @TIP CHAR(5), @EEM CHAR(5))
AS
BEGIN
INSERT INTO EQUIPO VALUES (@COD, @DES, @PLA, @FRG, @FAC, @PRO, @TIP, @EEM)
END
GO

CREATE PROCEDURE usp_ActualizarEquipo(@DES VARCHAR(50), @PLA VARCHAR(50), @FAC DATETIME, @PRO CHAR(10), 
@TIP CHAR(5), @EEM CHAR(5), @COD CHAR(10))
AS
BEGIN
UPDATE EQUIPO SET DESCRIPCION = @DES, PLACA = @PLA, FECHAACT = @FAC, PROVEEDORCODIGO = @PRO, TIPOEQMOBCODIGO = @TIP, 
ESTADOMOBEQUIPCODIGO = @EEM WHERE CODIGO = @COD
END
GO

/*Mobiliario*/
CREATE PROCEDURE usp_ListarMobiliario
AS
BEGIN
SELECT * FROM MOBILIARIO
END
GO

CREATE PROCEDURE usp_RegistrarMobiliario(@COD CHAR(10), @DES VARCHAR(50), @CAN INTEGER, @FRG DATETIME, 
@FAC DATETIME, @PRO CHAR(10), @TIP CHAR(5), @EEM CHAR(5), @EST CHAR(5))
AS
BEGIN
INSERT INTO MOBILIARIO VALUES (@COD, @DES, @CAN, @FRG, @FAC, @PRO, @TIP, @EEM, @EST)
END
GO

CREATE PROCEDURE usp_ActualizarMobiliario(@DES VARCHAR(50), @CAN INTEGER, @FAC DATETIME, @PRO CHAR(10), 
@TIP CHAR(5), @EEM CHAR(5), @EST CHAR(5), @COD CHAR(10))
AS
BEGIN
UPDATE MOBILIARIO SET DESCRIPCION = @DES, CANTIDAD = @CAN, FECHAACT = @FAC, PROVEEDORCODIGO = @PRO, 
TIPOEQMOBCODIGO = @TIP, ESTADOMOBEQUIPCODIGO = @EEM, ESTACIÓNCODIGO = @EST WHERE CODIGO = @COD
END
GO

/*Usuario*/

CREATE PROCEDURE usp_IniciarSesionU(@USU VARCHAR(50), @PSS VARCHAR(50))
AS
BEGIN
SELECT ESTADOEMPUSUCODIGO, NOMBRE, APELLIDOS FROM EMPLEADO WHERE USUARIO = @USU AND CONTRASEÑA = @PSS 
END
GO

CREATE PROCEDURE usp_ListarUsuario
AS
BEGIN
SELECT * FROM USUARIO
END
GO

CREATE PROCEDURE usp_RegistrarUsuario(@COD CHAR(10), @DNI VARCHAR(50), @NOM VARCHAR(50), @APE VARCHAR(50),
@SEX VARCHAR(50), @EDA INTEGER, @NAC VARCHAR(50), @USU VARCHAR(50), @CON VARCHAR(50), @SAL DECIMAL(10,2), 
@FRG DATETIME, @FAC DATETIME, @TIU CHAR(5), @EST CHAR(5)/*, @HUE IMAGE*/)
AS
BEGIN
INSERT INTO USUARIO VALUES (@COD, @DNI, @NOM, @APE, @SEX, @EDA, @NAC, @USU, @CON, @SAL, @FRG, @FAC, @TIU, 
@EST, null /*@HUE*/)
END
GO

CREATE PROCEDURE usp_ActualizarUsuario(@NOM VARCHAR(50), @APE VARCHAR(50), @SEX VARCHAR(50), @EDA INTEGER, 
@NAC VARCHAR(50), @FAC DATETIME, @TIU CHAR(5), @EST CHAR(5), @COD CHAR(10))
AS
BEGIN
UPDATE USUARIO SET NOMBRE = @NOM, APELLIDOS = @APE, SEXO = @SEX, EDAD = @EDA, NACIONALIDAD = @NAC, FECHAACT = @FAC, 
TIPOUSUARIOCODIGO = @TIU, ESTADOEMPUSUCODIGO = @EST
WHERE CODIGO = @COD
END
GO

CREATE PROCEDURE usp_ActualizarDatosU(@EDA INTEGER, @USU VARCHAR(50), @PSS VARCHAR(50), @FAC DATETIME, @COD CHAR(10))
AS
BEGIN
UPDATE USUARIO SET EDAD = @EDA,  USUARIO = @USU, CONTRASEÑA = @PSS, FECHAACT = @FAC
WHERE CODIGO = @COD
END
GO

CREATE PROCEDURE usp_ActualizarTipo(@TIU CHAR(5), @COD CHAR(10))
AS
BEGIN
UPDATE USUARIO SET TIPOUSUARIOCODIGO = @TIU WHERE CODIGO = @COD
END
GO

CREATE PROCEDURE usp_ActualizarSaldo(@SAL DECIMAL(10,2), @DNI VARCHAR(10))
AS
BEGIN
UPDATE USUARIO SET SALDO = SALDO + @SAL WHERE DNI = @DNI
END
GO

/*Recarga*/

CREATE PROCEDURE usp_ListarRecarga
AS
BEGIN
SELECT * FROM RECARGA
END
GO

CREATE PROCEDURE usp_RecargarSaldo(@COD CHAR(10), @MON DECIMAL(10,2), @FRG DATETIME, @DNI VARCHAR(50), @USU CHAR(10))
AS
BEGIN
INSERT INTO RECARGA VALUES (@COD, @MON, @FRG, @DNI, @USU)
END
GO

/*Reclamo*/

CREATE PROCEDURE usp_ListarReclamo
AS
BEGIN
SELECT * FROM RECLAMO
END
GO

CREATE PROCEDURE usp_GenerarReclamo (@COD CHAR(10), @DNI VARCHAR(50), @NOM VARCHAR(50), @APE VARCHAR(50), @TIP VARCHAR(50),
@FRG DATETIME, @FAC DATETIME, @ETR VARCHAR(50), @DES VARCHAR(50), @USU CHAR(10), @EST CHAR(5),@EMP CHAR(10))
AS
BEGIN
INSERT INTO RECLAMO VALUES (@COD, @DNI, @NOM, @APE, @TIP, @FRG, @FAC, @ETR, @DES,@USU, @EST, @EMP)
END
GO

/*Ruta*/

CREATE PROCEDURE usp_ListarRuta
AS
BEGIN
SELECT * FROM RUTA
END
GO

CREATE PROCEDURE usp_RegistrarRuta (@COD CHAR(10), @FEC DATETIME, @TUR VARCHAR(50), @PLA VARCHAR(50),
@HOR VARCHAR(50), @TIP CHAR(5), @EMP CHAR(10), @EQP CHAR(10))
AS
BEGIN
INSERT INTO RUTA VALUES (@COD, @FEC, @TUR, @PLA, @HOR, @TIP, @EMP, @EQP)
END
GO

/*Reportes*/

CREATE PROCEDURE usp_ReporteMobiliario(@ESTADO CHAR(5), @TIPO CHAR(5))
AS
BEGIN 
SELECT *
FROM MOBILIARIO
WHERE @ESTADO=ESTADOMOBEQUIPCODIGO AND @TIPO=TIPOEQMOBCODIGO
END
GO


CREATE PROCEDURE usp_ReporteEmpleados(@TIPO CHAR(5), @ESTADO CHAR(5))
AS
BEGIN
SELECT *
FROM EMPLEADO
WHERE @ESTADO=ESTADOEMPUSUCODIGO AND @TIPO=TIPOEMPLEADOCODIGO
END
GO

CREATE PROCEDURE usp_ReporteUsuarios(@TIPO CHAR(5),@ESTADO CHAR(5))
AS
BEGIN
SELECT *
FROM USUARIO
WHERE @ESTADO=ESTADOEMPUSUCODIGO AND @TIPO=TIPOUSUARIOCODIGO
END
GO

CREATE PROCEDURE usp_ReporteReclamos
AS
BEGIN
SELECT * FROM RECLAMO
WHERE ESTADO = 'Por Revisar'
END
GO

CREATE PROCEDURE usp_EstadoOperativo
AS
BEGIN
SELECT *
FROM ESTADOMOBEQUIP
WHERE CODIGO = 'EEM01'
END
GO