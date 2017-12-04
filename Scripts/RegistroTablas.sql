USE BD_SITTPR
GO

INSERT INTO PAIS VALUES ('P0001', 'Per�')
INSERT INTO PAIS VALUES ('P0002', 'Brasil')
INSERT INTO PAIS VALUES ('P0003', 'USA')
INSERT INTO PAIS VALUES ('P0004', 'Espa�a')
INSERT INTO PAIS VALUES ('P0005', 'Australia')
INSERT INTO PAIS VALUES ('P0006', 'Jap�n')
INSERT INTO PAIS VALUES ('P0007', 'China')
INSERT INTO PAIS VALUES ('P0008', 'Argentina')
INSERT INTO PAIS VALUES ('P0009', 'Korea Norte')
INSERT INTO PAIS VALUES ('P0010', 'Canad�')
GO


INSERT INTO TIPOEQMOB VALUES ('TEM01', 'Bus')
INSERT INTO TIPOEQMOB VALUES ('TEM02', 'Tren')
INSERT INTO TIPOEQMOB VALUES ('TEM03', 'Seguridad')
INSERT INTO TIPOEQMOB VALUES ('TEM04', 'Electr�nico')
INSERT INTO TIPOEQMOB VALUES ('TEM05', 'Maquinaria')
GO

INSERT INTO ESTADOMOBEQUIP VALUES ('EEM01', 'Operativo')
INSERT INTO ESTADOMOBEQUIP VALUES ('EEM02', 'Con Fallas')
INSERT INTO ESTADOMOBEQUIP VALUES ('EEM03', 'Reparado')
INSERT INTO ESTADOMOBEQUIP VALUES ('EEM04', 'Cambio')
INSERT INTO ESTADOMOBEQUIP VALUES ('EEM05', 'No Operativo')
GO

INSERT INTO AREA VALUES ('A0001', 'Recursos Humanos')
INSERT INTO AREA VALUES ('A0002', 'Dep. Compras')
INSERT INTO AREA VALUES ('A0003', 'Servicio T�cnico')
INSERT INTO AREA VALUES ('A0004', 'CAU')
INSERT INTO AREA VALUES ('A0005', 'Operaciones')
INSERT INTO AREA VALUES ('A0006', 'Gerencia')
GO

INSERT INTO TIPOEMPLEADO VALUES ('TE001', 'Administrador')
INSERT INTO TIPOEMPLEADO VALUES ('TE002', 'Gerente General')
INSERT INTO TIPOEMPLEADO VALUES ('TE003', 'Asistente de Reclutamiento')
INSERT INTO TIPOEMPLEADO VALUES ('TE004', 'Gerente de RRHH')
INSERT INTO TIPOEMPLEADO VALUES ('TE005', 'Asistente de Dep. Compras')
INSERT INTO TIPOEMPLEADO VALUES ('TE006', 'Gerente de Dep. Compras')
INSERT INTO TIPOEMPLEADO VALUES ('TE007', 'Asistente de Servicio T�cnico')
INSERT INTO TIPOEMPLEADO VALUES ('TE008', 'Gerente de Servicio T�cnico')
INSERT INTO TIPOEMPLEADO VALUES ('TE009', 'Asistente del CAU')
INSERT INTO TIPOEMPLEADO VALUES ('TE010', 'Gerente  del CAU')
INSERT INTO TIPOEMPLEADO VALUES ('TE011', 'Cajero')
GO

INSERT INTO TIPORUTA VALUES ('TR001', 'Ruta A')
INSERT INTO TIPORUTA VALUES ('TR002', 'Ruta B')
INSERT INTO TIPORUTA VALUES ('TR003', 'Ruta C')
INSERT INTO TIPORUTA VALUES ('TR004', 'Ruta Exp 1')
INSERT INTO TIPORUTA VALUES ('TR005', 'Ruta Exp 2')
INSERT INTO TIPORUTA VALUES ('TR006', 'Ruta Exp 3')
INSERT INTO TIPORUTA VALUES ('TR007', 'Ruta Exp 4')
INSERT INTO TIPORUTA VALUES ('TR008', 'Ruta Exp 5')
INSERT INTO TIPORUTA VALUES ('TR009', 'Ruta Exp 6')
INSERT INTO TIPORUTA VALUES ('TR010', 'Ruta SX')
INSERT INTO TIPORUTA VALUES ('TR011', 'Ruta 201')
INSERT INTO TIPORUTA VALUES ('TR012', 'Ruta 202')
INSERT INTO TIPORUTA VALUES ('TR013', 'Ruta 203')
INSERT INTO TIPORUTA VALUES ('TR014', 'Ruta 301')
INSERT INTO TIPORUTA VALUES ('TR015', 'Ruta 302')
INSERT INTO TIPORUTA VALUES ('TR016', 'Ruta 303')
INSERT INTO TIPORUTA VALUES ('TR017', 'Ruta 401')
INSERT INTO TIPORUTA VALUES ('TR018', 'Ruta 402')
INSERT INTO TIPORUTA VALUES ('TR019', 'Ruta 403')
INSERT INTO TIPORUTA VALUES ('TR020', 'L�nea 1')
INSERT INTO TIPORUTA VALUES ('TR021', 'L�nea 2')
GO

INSERT INTO ESTACI�N VALUES ('E0001', 'Central')
INSERT INTO ESTACI�N VALUES ('E0002', 'Naranjal')
INSERT INTO ESTACI�N VALUES ('E0003', 'Matellini')
INSERT INTO ESTACI�N VALUES ('E0004', 'Castilla')
INSERT INTO ESTACI�N VALUES ('E0005', 'Centro Civico')
INSERT INTO ESTACI�N VALUES ('E0006', 'Amancaes')
INSERT INTO ESTACI�N VALUES ('E0007', 'Plaza Butters')
INSERT INTO ESTACI�N VALUES ('E0008', 'Ricardo Palma')
INSERT INTO ESTACI�N VALUES ('E0009', 'Villa el Salvador')
INSERT INTO ESTACI�N VALUES ('E0010', 'Bay�var')
INSERT INTO ESTACI�N VALUES ('E0011', 'Angamos')
GO

INSERT INTO ESTADOEMPUSU VALUES ('EEU01', 'Activo')
INSERT INTO ESTADOEMPUSU VALUES ('EEU02', 'Inactivo')
GO

INSERT INTO TIPOUSUARIO VALUES ('TU001', 'Regular')
INSERT INTO TIPOUSUARIO VALUES ('TU002', 'Extranjero')
INSERT INTO TIPOUSUARIO VALUES ('TU003', 'Universitario')
INSERT INTO TIPOUSUARIO VALUES ('TU004', 'Estudiante')
INSERT INTO TIPOUSUARIO VALUES ('TU005', 'Escolar')
INSERT INTO TIPOUSUARIO VALUES ('TU006', 'Preferencial')
GO

INSERT INTO TIPOSERVICIO VALUES ('TS001', 'Metropolitano')
INSERT INTO TIPOSERVICIO VALUES ('TS002', 'Corredor Azul')
INSERT INTO TIPOSERVICIO VALUES ('TS003', 'Corredor Rojo')
INSERT INTO TIPOSERVICIO VALUES ('TS004', 'Corredor Morado')
INSERT INTO TIPOSERVICIO VALUES ('TS005', 'Tren El�ctrico')
GO

INSERT INTO EMPLEADO VALUES ('E000000001', '75456269', '�lvaro Alonso', 'Laveriano Toscano', 'Masculino', 'a', 20, 'a', 'a', 'alaveriano', '5597', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TE001', 'EEU01', 'E0001', 'A0006')
INSERT INTO EMPLEADO VALUES ('E000000002', '78945612', 'Jorge Andr�s', 'Zegarra Pinto', 'Masculino', 'a', 30, 'a', 'a', 'jzegarra', '111', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TE002', 'EEU01', 'E0001', 'A0006')
INSERT INTO EMPLEADO VALUES ('E000000003', '04879556', 'Franco Jos�', 'Ram�rez Fern�ndez', 'Masculino', 'a', 25, 'a', 'a', 'framirez', '2222', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TE003', 'EEU01', 'E0001', 'A0001')
INSERT INTO EMPLEADO VALUES ('E000000004', '05486931', 'Rub�n Andr�', 'Huamani Arteaga', 'Masculino', 'a', 20, 'a', 'a', 'rhuamani', '3333', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TE004', 'EEU01', 'E0001', 'A0001')
INSERT INTO EMPLEADO VALUES ('E000000005', '73976364', 'Gerardo Martin', 'Tejeda Santos', 'Masculino', 'a', 28, 'a', 'a', 'gtejeda', '4444', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TE005', 'EEU01', 'E0002', 'A0002')
INSERT INTO EMPLEADO VALUES ('E000000006', '48795632', 'Nahomy Anthunet', 'Aguirre Flores', 'Femenino', 'a', 20, 'a', 'a', 'naguirre', '5555', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TE006', 'EEU01', 'E0002', 'A0002')
INSERT INTO EMPLEADO VALUES ('E000000007', '69763545', 'Andrea Sof�a', 'Zavaleta Rodr�guez', 'Femenino', 'a', 23, 'a', 'a', 'azavaleta', '6666', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TE007', 'EEU01', 'E0003', 'A0003')
INSERT INTO EMPLEADO VALUES ('E000000008', '47895631', 'Jos� Antonio', 'Le�n Cusirramos', 'Masculino', 'a', 20, 'a', 'a', 'jleon', '7777', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TE008', 'EEU01', 'E0003', 'A0003')
INSERT INTO EMPLEADO VALUES ('E000000009', '45789630', 'Marcos C�sar', 'Carri�n Rojas', 'Masculino', 'a', 29, 'a', 'a', 'mcarrion', '4321', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TE009', 'EEU01', 'E0004', 'A0004')
INSERT INTO EMPLEADO VALUES ('E000000010', '78954301', 'Mar�a Alicia', 'Toscano Norabuena', 'Femenino', 'a', 30, 'a', 'a', 'mtoscano', '1234', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TE010', 'EEU01', 'E0001', 'A0004')
INSERT INTO EMPLEADO VALUES ('E000000011', '59876224', 'Germ�n Erick', 'Medina Ochoa', 'Masculino', 'a', 21, 'a', 'a', 'gmedina', '8888', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TE011', 'EEU01', 'E0001', 'A0005')
GO

INSERT INTO PROVEEDOR VALUES ('P000000001', '20754562698', 'Rail SAC', 'Fernando Zegarra Pinto', 'Av. Larco 845 - Miraflores', '014789563', 'fzegarra@rail.com', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', '4561-4589-4789-2659-0147', 'P0001')
INSERT INTO PROVEEDOR VALUES ('P000000002', '20458965478', 'Security SRL', 'Eder Suarez Medina', 'Av. Canaval y Moreyra 452 - San Isidro', '012658954', 'esuarez@security.com', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', '4789-5632-4856-4785-0152', 'P0001')
INSERT INTO PROVEEDOR VALUES ('P000000003', '20478956317', 'BusFast SAC', 'Sofia Zavaleta Rodriguez', 'Av. San Borja Nte 759 - San Borja', '014736198', 'szavaleta@busfast.com', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', '4852-3596-1245-7895-0148', 'P0003')
INSERT INTO PROVEEDOR VALUES ('P000000004', '10458795631', 'Elevator SAC', 'Jorge Salas Andrade', 'Av Arequipa 1052 - Lince', '012547896', 'jsalas@elevator.com', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', '4589-6325-9874-8569-1248', 'P0002')
GO

INSERT INTO EQUIPO VALUES ('E000000001', 'Tren 15x3 Rojo', 'KJGH-9565', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000001', 'TEM02', 'EEM01')
INSERT INTO EQUIPO VALUES ('E000000002', 'Bus 10x2', 'KJGH-9565', '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000003', 'TEM02', 'EEM01')
GO

INSERT INTO MOBILIARIO VALUES ('M000000001', 'C�maras de Seguridad', 50, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000002', 'TEM02', 'EEM01', 'E0001')
INSERT INTO MOBILIARIO VALUES ('M000000002', 'Ascensores', 4, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000004', 'TEM02', 'EEM01', 'E0001')
INSERT INTO MOBILIARIO VALUES ('M000000003', 'Equipo de limpieza', 12, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000004', 'TEM03', 'EEM02', 'E0002')
INSERT INTO MOBILIARIO VALUES ('M000000004', 'Ascensores', 2, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000004', 'TEM04', 'EEM02', 'E0004')
INSERT INTO MOBILIARIO VALUES ('M000000005', 'Ascensores', 6, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000004', 'TEM05', 'EEM02', 'E0005')
INSERT INTO MOBILIARIO VALUES ('M000000006', 'Equipo de limpieza', 1, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000004', 'TEM02', 'EEM03', 'E0007')
INSERT INTO MOBILIARIO VALUES ('M000000007', 'Ascensores', 2, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000004', 'TEM01', 'EEM04', 'E0003')
INSERT INTO MOBILIARIO VALUES ('M000000008', 'C�maras de Seguridad', 9, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000004', 'TEM05', 'EEM05', 'E0001')
INSERT INTO MOBILIARIO VALUES ('M000000009', 'C�maras de Seguridad', 2, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000004', 'TEM02', 'EEM05', 'E0008')
INSERT INTO MOBILIARIO VALUES ('M000000010', 'Ascensores', 6, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'P000000004', 'TEM04', 'EEM04', 'E0009')
GO

INSERT INTO USUARIO VALUES ('U000000001', '75456269', 'Alvaro Alonso', 'Laveriano Toscano', 'Masculino', 20, 'Peruano', 'alaveriano', '5597', 0.0, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TU004', 'EEU01', null)
INSERT INTO USUARIO VALUES ('U000000002', '07397636', 'Maria Alicia', 'Toscano Norabuena', 'Femenino', 35, 'Peruano', 'mtoscano', '1234', 0.0, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TU001', 'EEU01', null)
INSERT INTO USUARIO VALUES ('U000000003', '07414075', 'Jorge Enrique', 'Toscano Norabuena', 'Masculino', 40, 'Peruano', 'jtoscano', '1111', 0.0, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TU001', 'EEU01', null)
INSERT INTO USUARIO VALUES ('U000000004', '75489632', 'Rodrigo Manuel', 'DelaFuente Carrion', 'Masculino', 21, 'Peruano', 'rdelafuente', '2222', 0.0, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000', 'TU003', 'EEU01', null)
INSERT INTO USUARIO VALUES ('U000000005', '01478596', 'Luis Miguel', 'Pinto Zea', 'Masculino', 31, 'Peruano', 'lpinto', '3333', 0.0, '2017/10/30 10:08:35.000', '2017/10/30 10:08:35.000','TU001', 'EEU01', null)
GO