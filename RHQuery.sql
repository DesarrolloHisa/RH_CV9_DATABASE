insert into Rol values
('Admin'),
('Observador'),
('Empleado')

insert into TipoCargo values
('Aprendiz Lectiva'),
('Aprendiz Productiva'),
('Auxiliar Administrativo'),
('Auxiliar Admisiones'),
('Auxiliar Contable'),
('Auxiliar De Enfermer�a'),
('Auxiliar De Farmacia'),
('Auxiliar De Mantenimiento'),
('Auxiliar Seguridad Y Salud En El Trabajo'),
('Auxiliar Servicios Generales'),
('Anestesiologo'),
('Cirujano Infantil'),
('Cirujano Plastico'),
('Colab.Donac'),
('Comunicadora'),
('Contador'),
('Coordinador Medico'),
('Cuentas Medicas'),
('Dermatologo'),
('Directora'),
('Enfermero'),
('Enfermero Jefe'),
('Enfermero Jefe Rural'),
('Fisioterapeuta'),
('Gestor TICS'),
('Gestor de Cuentas'),
('Lider administrativa y financiera'),
('Lider Calidad'),
('Lider de Mantenimiento e Ingenier�a Biom�dica'),
('Lider de proyectos'),
('Lider Seguridad Y Salud En El Trabajo'),
('Lider Servicios Generales'),
('Lider Sistemas De Informaci�n'),
('Lider Talento Humano'),
('Medico Asistencial'),
('Medico General Rural'),
('Medico General'),
('Neurologo'),
('Nutricionista'),
('Oficial De Cumplimiento'),
('Odontopediatra'),
('Ortopedista'),
('Otorrinolaringologo'),
('Pediatra'),
('Pediatra Cardiologo'),
('Pediatra Endocrinologo'),
('Psicologo'),
('Regente De Farmacia'),
('Revisor Fiscal'),
('Revisor Fiscal Suplente'),
('Secretaria'),
('Servicios Generales de Alimentacion'),
('Servicios Generales de Aseo'),
('Servicios Generales de Mensajero'),
('Servicios Generales de Vigilancia'),
('Terapeuta de Familia y Pareja'),
('Trabajador Social'),
('Voluntario')

insert into TipoVinculo Values
('Aprendiz etapa electiva'),
('Aprendiz etapa productiva'),
('Aprendiz por pasantias'),
('Docente'),
('Empleado'),
('Interno'),
('Medico residente'),
('Medico rural (Servicio social obligatorio)'),
('Practicante'),
('Prestacion de servicios'),
('Voluntario')

insert into TipoContrato Values
('Aprendiz'),
('Docencia servicio'),
('Fijo'),
('Indefinido'),
('Institucional'),
('Practicante'),
('Prestacion de servicios')

insert into TipoDocumento Values
('Cedula ciudadania'),
('Cedula extranjeria'),
('Pasaporte'),
('PEP'),
('Tarjeta de identidad')

insert into InfoDocumento values
(1,'Colombia', 'Medellin')

select * from Usuario

insert into Usuario values
('H1SADM1N', 1, '53c9c31b5153d195575884955afada17b42a04cfadd7a25064f0a234e5182acd', 5, 4, 1, 'Admin', null, 'Hisa', null, 1)

insert into EPS Values
('ALIANSALUD EPS'),
('ANAS WAYUU EPSI'),
('ASMET SALUD ESS'),
('ASOCIACION INDIGENA DEL CAUCA EPSI'),
('CAJACOPI ATLANTICO CCF'),
('CAPITAL SALUD EPS-S'),
('CAPRESOCA EPS'),
('COOSALUD EPS-S'),
('COMPENSAR EPS'),
('COMFACHOCO CCF'),
('COMFAFARMA EPS'),
('COMFAORIENTE CCF'),
('COMFAMILIAR DE LA GUAJIRA CCF'),
('COMFENALCO VALLE EPS'),
('DUSAKAWI EPSI'),
('ECOOPSOS ESS EPS-S'),
('EMSSANAR E.S.S.'),
('EPM - EMPRESAS PUBLICAS DE MEDELLIN'),
('EPS SANITAS'),
('EPS SURA'),
('FAMISANAR EPS'),
('FONDO DE PASIVO SOCIAL DE FERROCARRILES NACIONALES DE COLOMBIA EAS'),
('MALLAMAS EPSI'),
('MUTUAL SER ESS'),
('NUEVA EPS EPS'),
('PIJAOS SALUD EPSI'),
('SALUD MIA EPS'),
('SALUD TOTAL EPS S.A.'),
('SAVIA SALUD EPS'),
('SERVICIO OCCIDENTAL DE SALUD EPS SOS')

insert into FondoPensiones Values
('Colfondos'),
('Colpensiones'),
('Porvenir'),
('Proteccion'),
('Skandia')

insert into FondoCesantias Values
('Colfondos'),
('Fondo Nacional del Ahorro'),
('Porvenir'),
('Proteccion'),
('Skandia')

insert into TipoVinculacion Values
('Convenio Docencia Servicio'),
('Convenio Especifico de Practicas Academicas'),
('Convenio Interinstitucional de Practicas Academicas'),
('Convenio de Practica Pedagogica'),
('Docencia Servicio'),
('Interdependencia'),
('Voluntario')

--=====================PROCEDURES==================================
--HV
CREATE PROCEDURE GetAllHV
AS
BEGIN
    SET NOCOUNT ON;

	SELECT 
		Usuario.[User] as Doumento,

		Rol.Tipo as TipoRol,
		--Usuario.RolId,

		--Usuario.[Password],

		TipoVinculo.Tipo as TipoVinculo,
		--Usuario.TipoVinculoId,

		TipoContrato.Tipo as TipoContrato,
		--Usuario.TipoContratoId,

		TipoDocumento.Tipo as TipoDocumento,

		InfoDocumento.PaisExpedicion,
		InfoDocumento.MunicipioExpedicion,
		--Usuario.InfoDocumentoId,

		Usuario.PrimerNombre,
		Usuario.SegundoNombre,
		Usuario.PrimerApellido,
		Usuario.SegundoApellido,
		Usuario.Estado,

		DatosPersonales.LibretaMilitar,
		DatosPersonales.FechaNacimiento,
		DatosPersonales.PaisNacimiento,
		DatosPersonales.MunicipioNacimiento,
		DatosPersonales.Celular,
		DatosPersonales.Email,
		DatosPersonales.Sexo,

		Direccion.DireccionCompleta as Direccion,
		--DatosPersonales.DireccionId,
    
		DatosPersonales.MunicipioResidencia,
		DatosPersonales.Estrato,
		DatosPersonales.ViveCon,
		DatosPersonales.GrupoEtnico,

		PersonasACargo.Hijo as HijosACargo,
		PersonasACargo.Conyugue as ConyuguesACargo,
		PersonasACargo.Padres as PadresACargo,
		PersonasACargo.Otros as OtrasPersonasACargo,
		--DatosPersonales.PersonasACargoId,

		DatosPersonales.EstadoCivil,

		EPS.Tipo as EPS,
		--DatosPersonales.EPSId,

		FondoPensiones.Tipo as FondoPensiones,
		--DatosPersonales.FondoPensionesId,

		FondoCesantias.Tipo as FondoCesantias,
		--DatosPersonales.FondoCesantiasId,

		DatosGenerales.ComoSupo,
		DatosGenerales.OtrosIngresos as TieneOtrosIngresos,
		DatosGenerales.Ingreso,
		DatosGenerales.ParientesTrabajando as ParientesEnLaEmpresa,
		DatosGenerales.TipoVivienda,
		--DatosPersonales.DatosGeneralesId,

		Practicas.Institucion,
		Practicas.Programa,
		Practicas.Titulo,
		Practicas.FechaInicio,
		Practicas.FechaFinalizacion,
		Practicas.DocenciaServicios,
		--DatosPersonales.PracticasId,

		ContactoEmergencia.Nombre as ContactoEmergenciaNombre,
		ContactoEmergencia.Parentesco as ContactoEmergenciaParentesco,
		ContactoEmergencia.Celular as ContactoEmergenciaCelular,

		DatosFamiliares.Nombre as DatoFamiliarNombre,
		FORMAT(DatosFamiliares.FechaNacimiento, 'dd-MM-yyyy') as DatoFamiliarFechaNacimiento,
		DatosFamiliares.Parentesco as DatoFamiliarParentesco,
		DatosFamiliares.Ocupacion as DatoFamiliarOcupacion,

		Escolaridad.Grado as EscolaridadGrado,
		Escolaridad.Titulo as EscolaridadTitulo,
		Escolaridad.Institucion as EscolaridadInstitucion,
		Escolaridad.[Year] as EscolaridadAnio,

		InfoLaboral.FechaIngreso as InfoLaboralFechaIngreso,
		InfoLaboral.FechaRetiro as InfoLaboralFechaRetiro,
		InfoLaboral.NombreEmpresa as InfoLaboralNombreEmpresa,
		InfoLaboral.MotivoRetiro as InfoLaboralMotivoRetiro,
		InfoLaboral.Celular as InfoLaboralCelular,
		InfoLaboral.Cargo as InfoLaboralCargo,

		ReferenciasFamiliares.Nombre as ReferenciasFamiliaresNombre,
		ReferenciasFamiliares.Parentesco as ReferenciasFamiliaresParentesco,
		ReferenciasFamiliares.Celular as ReferenciasFamiliaresCelular,

		ReferenciasPersonales.Nombre as ReferenciasPersonalesNombre,
		ReferenciasPersonales.Parentesco as ReferenciasPersonalesParentesco,
		ReferenciasPersonales.Celular as ReferenciasPersonalesCelular,

		DatosPersonales.FechaCreacion
	FROM 
		Usuario
		INNER JOIN DatosPersonales ON Usuario.[User] = DatosPersonales.UsuarioId
		INNER JOIN Rol ON Usuario.RolId = Rol.Id
		INNER JOIN TipoVinculo ON Usuario.TipoVinculoId = TipoVinculo.Id
		INNER JOIN TipoContrato ON Usuario.TipoContratoId = TipoContrato.Id
		INNER JOIN InfoDocumento ON Usuario.InfoDocumentoId = InfoDocumento.Id
		INNER JOIN TipoDocumento ON InfoDocumento.TipoDocumentoId = TipoDocumento.Id
		LEFT JOIN Direccion ON DatosPersonales.DireccionId = Direccion.Id
		LEFT JOIN PersonasACargo ON DatosPersonales.PersonasACargoId = PersonasACargo.Id
		LEFT JOIN EPS ON DatosPersonales.EPSId = EPS.Id
		LEFT JOIN FondoPensiones ON DatosPersonales.FondoPensionesId = FondoPensiones.Id
		LEFT JOIN FondoCesantias ON DatosPersonales.FondoCesantiasId = FondoCesantias.Id
		LEFT JOIN DatosGenerales ON DatosPersonales.DatosGeneralesId = DatosGenerales.Id
		LEFT JOIN Practicas ON DatosPersonales.PracticasId = Practicas.Id
		LEFT JOIN ContactoEmergencia ON ContactoEmergencia.DatosPersonalesId = DatosPersonales.Id
		LEFT JOIN DatosFamiliares ON DatosFamiliares.DatosPersonalesId = DatosPersonales.Id
		LEFT JOIN Escolaridad ON Escolaridad.DatosPersonalesId = DatosPersonales.Id
		LEFT JOIN InfoLaboral ON InfoLaboral.DatosPersonalesId = DatosPersonales.Id
		LEFT JOIN ReferenciasFamiliares ON ReferenciasFamiliares.DatosPersonalesId = DatosPersonales.Id
		LEFT JOIN ReferenciasPersonales ON ReferenciasPersonales.DatosPersonalesId = DatosPersonales.Id
END
GO

CREATE PROCEDURE GetActiveHV
AS
BEGIN
    SET NOCOUNT ON;

	SELECT DISTINCT
		Usuario.[User] as Doumento,

		Rol.Tipo as TipoRol,
		--Usuario.RolId,

		--Usuario.[Password],

		TipoVinculo.Tipo as TipoVinculo,
		--Usuario.TipoVinculoId,

		TipoContrato.Tipo as TipoContrato,
		--Usuario.TipoContratoId,

		TipoDocumento.Tipo as TipoDocumento,

		InfoDocumento.PaisExpedicion,
		InfoDocumento.MunicipioExpedicion,
		--Usuario.InfoDocumentoId,

		Usuario.PrimerNombre,
		Usuario.SegundoNombre,
		Usuario.PrimerApellido,
		Usuario.SegundoApellido,
		Usuario.Estado,

		DatosPersonales.LibretaMilitar,
		DatosPersonales.FechaNacimiento,
		DatosPersonales.PaisNacimiento,
		DatosPersonales.MunicipioNacimiento,
		DatosPersonales.Celular,
		DatosPersonales.Email,
		DatosPersonales.Sexo,

		Direccion.DireccionCompleta as Direccion,
		--DatosPersonales.DireccionId,
    
		DatosPersonales.MunicipioResidencia,
		DatosPersonales.Estrato,
		DatosPersonales.ViveCon,
		DatosPersonales.GrupoEtnico,

		PersonasACargo.Hijo as HijosACargo,
		PersonasACargo.Conyugue as ConyuguesACargo,
		PersonasACargo.Padres as PadresACargo,
		PersonasACargo.Otros as OtrasPersonasACargo,
		--DatosPersonales.PersonasACargoId,

		DatosPersonales.EstadoCivil,

		EPS.Tipo as EPS,
		--DatosPersonales.EPSId,

		FondoPensiones.Tipo as FondoPensiones,
		--DatosPersonales.FondoPensionesId,

		FondoCesantias.Tipo as FondoCesantias,
		--DatosPersonales.FondoCesantiasId,

		DatosGenerales.ComoSupo,
		DatosGenerales.OtrosIngresos as TieneOtrosIngresos,
		DatosGenerales.Ingreso,
		DatosGenerales.ParientesTrabajando as ParientesEnLaEmpresa,
		DatosGenerales.TipoVivienda,
		--DatosPersonales.DatosGeneralesId,

		Practicas.Institucion,
		Practicas.Programa,
		Practicas.Titulo,
		Practicas.FechaInicio,
		Practicas.FechaFinalizacion,
		Practicas.DocenciaServicios,
		--DatosPersonales.PracticasId,

		ContactoEmergencia.Nombre as ContactoEmergenciaNombre,
		ContactoEmergencia.Parentesco as ContactoEmergenciaParentesco,
		ContactoEmergencia.Celular as ContactoEmergenciaCelular,

		DatosFamiliares.Nombre as DatoFamiliarNombre,
		FORMAT(DatosFamiliares.FechaNacimiento, 'dd-MM-yyyy') as DatoFamiliarFechaNacimiento,
		DatosFamiliares.Parentesco as DatoFamiliarParentesco,
		DatosFamiliares.Ocupacion as DatoFamiliarOcupacion,

		Escolaridad.Grado as EscolaridadGrado,
		Escolaridad.Titulo as EscolaridadTitulo,
		Escolaridad.Institucion as EscolaridadInstitucion,
		Escolaridad.[Year] as EscolaridadAnio,

		InfoLaboral.FechaIngreso as InfoLaboralFechaIngreso,
		InfoLaboral.FechaRetiro as InfoLaboralFechaRetiro,
		InfoLaboral.NombreEmpresa as InfoLaboralNombreEmpresa,
		InfoLaboral.MotivoRetiro as InfoLaboralMotivoRetiro,
		InfoLaboral.Celular as InfoLaboralCelular,
		InfoLaboral.Cargo as InfoLaboralCargo,

		ReferenciasFamiliares.Nombre as ReferenciasFamiliaresNombre,
		ReferenciasFamiliares.Parentesco as ReferenciasFamiliaresParentesco,
		ReferenciasFamiliares.Celular as ReferenciasFamiliaresCelular,

		ReferenciasPersonales.Nombre as ReferenciasPersonalesNombre,
		ReferenciasPersonales.Parentesco as ReferenciasPersonalesParentesco,
		ReferenciasPersonales.Celular as ReferenciasPersonalesCelular,

		DatosPersonales.FechaCreacion
	FROM 
		Usuario
		INNER JOIN DatosPersonales ON Usuario.[User] = DatosPersonales.UsuarioId
		INNER JOIN Rol ON Usuario.RolId = Rol.Id
		INNER JOIN TipoVinculo ON Usuario.TipoVinculoId = TipoVinculo.Id
		INNER JOIN TipoContrato ON Usuario.TipoContratoId = TipoContrato.Id
		INNER JOIN InfoDocumento ON Usuario.InfoDocumentoId = InfoDocumento.Id
		INNER JOIN TipoDocumento ON InfoDocumento.TipoDocumentoId = TipoDocumento.Id
		LEFT JOIN Direccion ON DatosPersonales.DireccionId = Direccion.Id
		LEFT JOIN PersonasACargo ON DatosPersonales.PersonasACargoId = PersonasACargo.Id
		LEFT JOIN EPS ON DatosPersonales.EPSId = EPS.Id
		LEFT JOIN FondoPensiones ON DatosPersonales.FondoPensionesId = FondoPensiones.Id
		LEFT JOIN FondoCesantias ON DatosPersonales.FondoCesantiasId = FondoCesantias.Id
		LEFT JOIN DatosGenerales ON DatosPersonales.DatosGeneralesId = DatosGenerales.Id
		LEFT JOIN Practicas ON DatosPersonales.PracticasId = Practicas.Id
		LEFT JOIN ContactoEmergencia ON ContactoEmergencia.DatosPersonalesId = DatosPersonales.Id
		LEFT JOIN DatosFamiliares ON DatosFamiliares.DatosPersonalesId = DatosPersonales.Id
		LEFT JOIN Escolaridad ON Escolaridad.DatosPersonalesId = DatosPersonales.Id
		LEFT JOIN InfoLaboral ON InfoLaboral.DatosPersonalesId = DatosPersonales.Id
		LEFT JOIN ReferenciasFamiliares ON ReferenciasFamiliares.DatosPersonalesId = DatosPersonales.Id
		LEFT JOIN ReferenciasPersonales ON ReferenciasPersonales.DatosPersonalesId = DatosPersonales.Id
		WHERE Usuario.Estado = 1
END
GO


--===========================================================================================================================================================================================================================
CREATE PROCEDURE GetAllHV
AS
BEGIN
    SET NOCOUNT ON;

	WITH CTE AS (
		SELECT
		Usuario.[User] as Documento,

			Rol.Tipo as TipoRol,
			--Usuario.RolId,

			--Usuario.[Password],

			TipoVinculo.Tipo as TipoVinculo,
			--Usuario.TipoVinculoId,

			TipoContrato.Tipo as TipoContrato,
			--Usuario.TipoContratoId,

			TipoDocumento.Tipo as TipoDocumento,

			InfoDocumento.PaisExpedicion,
			InfoDocumento.MunicipioExpedicion,
			--Usuario.InfoDocumentoId,

			Usuario.PrimerNombre,
			Usuario.SegundoNombre,
			Usuario.PrimerApellido,
			Usuario.SegundoApellido,

			DatosPersonales.LibretaMilitar,
			DatosPersonales.FechaNacimiento,
			DatosPersonales.PaisNacimiento,
			DatosPersonales.DepartamentoNacimiento,
			DatosPersonales.MunicipioNacimiento,
			DatosPersonales.Celular,
			DatosPersonales.Email,
			DatosPersonales.Sexo,

			Direccion.DireccionCompleta as Direccion,
			--DatosPersonales.DireccionId,
    
			DatosPersonales.MunicipioResidencia,
			DatosPersonales.BarrioResidencia,
			DatosPersonales.Estrato,
			DatosPersonales.ViveCon,
			DatosPersonales.GrupoEtnico,

			PersonasACargo.Hijo as HijosACargo,
			PersonasACargo.Conyugue as ConyuguesACargo,
			PersonasACargo.Padres as PadresACargo,
			PersonasACargo.Otros as OtrasPersonasACargo,
			--DatosPersonales.PersonasACargoId,

			DatosPersonales.EstadoCivil,

			EPS.Tipo as EPS,
			--DatosPersonales.EPSId,

			FondoPensiones.Tipo as FondoPensiones,
			--DatosPersonales.FondoPensionesId,

			FondoCesantias.Tipo as FondoCesantias,
			--DatosPersonales.FondoCesantiasId,

			DatosGenerales.ComoSupo,
			DatosGenerales.OtrosIngresos as TieneOtrosIngresos,
			DatosGenerales.Ingreso,
			DatosGenerales.ParientesTrabajando as ParientesEnLaEmpresa,
			DatosGenerales.TipoVivienda,
			--DatosPersonales.DatosGeneralesId,

			Practicas.Institucion,
			Practicas.Programa,
			Practicas.Titulo,
			Practicas.FechaInicio,
			Practicas.FechaFinalizacion,
			Practicas.DocenciaServicios,
			--DatosPersonales.PracticasId,

			ContactoEmergencia.Nombre as ContactoEmergenciaNombre,
			ContactoEmergencia.Parentesco as ContactoEmergenciaParentesco,
			ContactoEmergencia.Celular as ContactoEmergenciaCelular,

			DatosFamiliares.Nombre as DatoFamiliarNombre,
			FORMAT(DatosFamiliares.FechaNacimiento, 'dd-MM-yyyy') as DatoFamiliarFechaNacimiento,
			DatosFamiliares.Parentesco as DatoFamiliarParentesco,
			DatosFamiliares.Ocupacion as DatoFamiliarOcupacion,

			Escolaridad.Grado as EscolaridadGrado,
			Escolaridad.Titulo as EscolaridadTitulo,
			Escolaridad.Institucion as EscolaridadInstitucion,
			Escolaridad.[Year] as EscolaridadAnio,

			InfoLaboral.FechaIngreso as InfoLaboralFechaIngreso,
			InfoLaboral.FechaRetiro as InfoLaboralFechaRetiro,
			InfoLaboral.NombreEmpresa as InfoLaboralNombreEmpresa,
			InfoLaboral.MotivoRetiro as InfoLaboralMotivoRetiro,
			InfoLaboral.Celular as InfoLaboralCelular,
			InfoLaboral.Cargo as InfoLaboralCargo,

			ReferenciasFamiliares.Nombre as ReferenciasFamiliaresNombre,
			ReferenciasFamiliares.Parentesco as ReferenciasFamiliaresParentesco,
			ReferenciasFamiliares.Celular as ReferenciasFamiliaresCelular,

			ReferenciasPersonales.Nombre as ReferenciasPersonalesNombre,
			ReferenciasPersonales.Parentesco as ReferenciasPersonalesParentesco,
			ReferenciasPersonales.Celular as ReferenciasPersonalesCelular,

			DatosPersonales.FechaCreacion,
			CASE
				WHEN Usuario.Estado = 1 THEN 'Activo'
				WHEN Usuario.Estado = 0 THEN 'Inactivo'
			END AS Estado,

			ROW_NUMBER() OVER (PARTITION BY Usuario.[User] ORDER BY (SELECT NULL)) AS RowNum

			FROM 
			Usuario
			INNER JOIN DatosPersonales ON Usuario.[User] = DatosPersonales.UsuarioId
			INNER JOIN Rol ON Usuario.RolId = Rol.Id
			INNER JOIN TipoVinculo ON Usuario.TipoVinculoId = TipoVinculo.Id
			INNER JOIN TipoContrato ON Usuario.TipoContratoId = TipoContrato.Id
			INNER JOIN InfoDocumento ON Usuario.InfoDocumentoId = InfoDocumento.Id
			INNER JOIN TipoDocumento ON InfoDocumento.TipoDocumentoId = TipoDocumento.Id
			LEFT JOIN Direccion ON DatosPersonales.DireccionId = Direccion.Id
			LEFT JOIN PersonasACargo ON DatosPersonales.PersonasACargoId = PersonasACargo.Id
			LEFT JOIN EPS ON DatosPersonales.EPSId = EPS.Id
			LEFT JOIN FondoPensiones ON DatosPersonales.FondoPensionesId = FondoPensiones.Id
			LEFT JOIN FondoCesantias ON DatosPersonales.FondoCesantiasId = FondoCesantias.Id
			LEFT JOIN DatosGenerales ON DatosPersonales.DatosGeneralesId = DatosGenerales.Id
			LEFT JOIN Practicas ON DatosPersonales.PracticasId = Practicas.Id
			LEFT JOIN ContactoEmergencia ON ContactoEmergencia.DatosPersonalesId = DatosPersonales.Id
			LEFT JOIN DatosFamiliares ON DatosFamiliares.DatosPersonalesId = DatosPersonales.Id
			LEFT JOIN Escolaridad ON Escolaridad.DatosPersonalesId = DatosPersonales.Id
			LEFT JOIN InfoLaboral ON InfoLaboral.DatosPersonalesId = DatosPersonales.Id
			LEFT JOIN ReferenciasFamiliares ON ReferenciasFamiliares.DatosPersonalesId = DatosPersonales.Id
			LEFT JOIN ReferenciasPersonales ON ReferenciasPersonales.DatosPersonalesId = DatosPersonales.Id

			)
	SELECT *
	FROM CTE
	WHERE RowNum = 1;
END
GO

CREATE PROCEDURE GetActiveHV
AS
BEGIN
    SET NOCOUNT ON;

	WITH CTE AS (
		SELECT
		Usuario.[User] as Documento,

			Rol.Tipo as TipoRol,
			--Usuario.RolId,

			--Usuario.[Password],

			TipoVinculo.Tipo as TipoVinculo,
			--Usuario.TipoVinculoId,

			TipoContrato.Tipo as TipoContrato,
			--Usuario.TipoContratoId,

			TipoDocumento.Tipo as TipoDocumento,

			InfoDocumento.PaisExpedicion,
			InfoDocumento.MunicipioExpedicion,
			--Usuario.InfoDocumentoId,

			Usuario.PrimerNombre,
			Usuario.SegundoNombre,
			Usuario.PrimerApellido,
			Usuario.SegundoApellido,

			DatosPersonales.LibretaMilitar,
			DatosPersonales.FechaNacimiento,
			DatosPersonales.PaisNacimiento,
			DatosPersonales.DepartamentoNacimiento,
			DatosPersonales.MunicipioNacimiento,
			DatosPersonales.Celular,
			DatosPersonales.Email,
			DatosPersonales.Sexo,

			Direccion.DireccionCompleta as Direccion,
			--DatosPersonales.DireccionId,
    
			DatosPersonales.MunicipioResidencia,
			DatosPersonales.BarrioResidencia,
			DatosPersonales.Estrato,
			DatosPersonales.ViveCon,
			DatosPersonales.GrupoEtnico,

			PersonasACargo.Hijo as HijosACargo,
			PersonasACargo.Conyugue as ConyuguesACargo,
			PersonasACargo.Padres as PadresACargo,
			PersonasACargo.Otros as OtrasPersonasACargo,
			--DatosPersonales.PersonasACargoId,

			DatosPersonales.EstadoCivil,

			EPS.Tipo as EPS,
			--DatosPersonales.EPSId,

			FondoPensiones.Tipo as FondoPensiones,
			--DatosPersonales.FondoPensionesId,

			FondoCesantias.Tipo as FondoCesantias,
			--DatosPersonales.FondoCesantiasId,

			DatosGenerales.ComoSupo,
			DatosGenerales.OtrosIngresos as TieneOtrosIngresos,
			DatosGenerales.Ingreso,
			DatosGenerales.ParientesTrabajando as ParientesEnLaEmpresa,
			DatosGenerales.TipoVivienda,
			--DatosPersonales.DatosGeneralesId,

			Practicas.Institucion,
			Practicas.Programa,
			Practicas.Titulo,
			Practicas.FechaInicio,
			Practicas.FechaFinalizacion,
			Practicas.DocenciaServicios,
			--DatosPersonales.PracticasId,

			ContactoEmergencia.Nombre as ContactoEmergenciaNombre,
			ContactoEmergencia.Parentesco as ContactoEmergenciaParentesco,
			ContactoEmergencia.Celular as ContactoEmergenciaCelular,

			DatosFamiliares.Nombre as DatoFamiliarNombre,
			FORMAT(DatosFamiliares.FechaNacimiento, 'dd-MM-yyyy') as DatoFamiliarFechaNacimiento,
			DatosFamiliares.Parentesco as DatoFamiliarParentesco,
			DatosFamiliares.Ocupacion as DatoFamiliarOcupacion,

			Escolaridad.Grado as EscolaridadGrado,
			Escolaridad.Titulo as EscolaridadTitulo,
			Escolaridad.Institucion as EscolaridadInstitucion,
			Escolaridad.[Year] as EscolaridadAnio,

			InfoLaboral.FechaIngreso as InfoLaboralFechaIngreso,
			InfoLaboral.FechaRetiro as InfoLaboralFechaRetiro,
			InfoLaboral.NombreEmpresa as InfoLaboralNombreEmpresa,
			InfoLaboral.MotivoRetiro as InfoLaboralMotivoRetiro,
			InfoLaboral.Celular as InfoLaboralCelular,
			InfoLaboral.Cargo as InfoLaboralCargo,

			ReferenciasFamiliares.Nombre as ReferenciasFamiliaresNombre,
			ReferenciasFamiliares.Parentesco as ReferenciasFamiliaresParentesco,
			ReferenciasFamiliares.Celular as ReferenciasFamiliaresCelular,

			ReferenciasPersonales.Nombre as ReferenciasPersonalesNombre,
			ReferenciasPersonales.Parentesco as ReferenciasPersonalesParentesco,
			ReferenciasPersonales.Celular as ReferenciasPersonalesCelular,

			DatosPersonales.FechaCreacion,
			CASE
				WHEN Usuario.Estado = 1 THEN 'Activo'
				WHEN Usuario.Estado = 0 THEN 'Inactivo'
			END AS Estado,

			ROW_NUMBER() OVER (PARTITION BY Usuario.[User] ORDER BY (SELECT NULL)) AS RowNum

			FROM 
			Usuario
			INNER JOIN DatosPersonales ON Usuario.[User] = DatosPersonales.UsuarioId
			INNER JOIN Rol ON Usuario.RolId = Rol.Id
			INNER JOIN TipoVinculo ON Usuario.TipoVinculoId = TipoVinculo.Id
			INNER JOIN TipoContrato ON Usuario.TipoContratoId = TipoContrato.Id
			INNER JOIN InfoDocumento ON Usuario.InfoDocumentoId = InfoDocumento.Id
			INNER JOIN TipoDocumento ON InfoDocumento.TipoDocumentoId = TipoDocumento.Id
			LEFT JOIN Direccion ON DatosPersonales.DireccionId = Direccion.Id
			LEFT JOIN PersonasACargo ON DatosPersonales.PersonasACargoId = PersonasACargo.Id
			LEFT JOIN EPS ON DatosPersonales.EPSId = EPS.Id
			LEFT JOIN FondoPensiones ON DatosPersonales.FondoPensionesId = FondoPensiones.Id
			LEFT JOIN FondoCesantias ON DatosPersonales.FondoCesantiasId = FondoCesantias.Id
			LEFT JOIN DatosGenerales ON DatosPersonales.DatosGeneralesId = DatosGenerales.Id
			LEFT JOIN Practicas ON DatosPersonales.PracticasId = Practicas.Id
			LEFT JOIN ContactoEmergencia ON ContactoEmergencia.DatosPersonalesId = DatosPersonales.Id
			LEFT JOIN DatosFamiliares ON DatosFamiliares.DatosPersonalesId = DatosPersonales.Id
			LEFT JOIN Escolaridad ON Escolaridad.DatosPersonalesId = DatosPersonales.Id
			LEFT JOIN InfoLaboral ON InfoLaboral.DatosPersonalesId = DatosPersonales.Id
			LEFT JOIN ReferenciasFamiliares ON ReferenciasFamiliares.DatosPersonalesId = DatosPersonales.Id
			LEFT JOIN ReferenciasPersonales ON ReferenciasPersonales.DatosPersonalesId = DatosPersonales.Id
			WHERE Usuario.Estado = 1

			)
	SELECT *
	FROM CTE
	WHERE RowNum = 1;
END
GO




--===========================================================================================================================================================================================================================


--Contracts
CREATE PROCEDURE GetAllContracts
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Hoy DATE;

	SET @Hoy = GETDATE();

	WITH ContratoOrdenado AS (
		SELECT c.*, ROW_NUMBER() OVER (PARTITION BY c.EmpleadoId ORDER BY c.FechaIngreso) AS rn
		FROM Contrato c
	)
    SELECT e.Documento, e.LugarExpedicion, e.PrimerNombre, e.SegundoNombre, e.PrimerApellido, e.SegundoApellido, e.FechaNacimiento, e.Sexo, tca.Tipo AS TipoCargo, c.AreaFuncional, c.Salario, ep.Tipo AS TipoEPS, fp.Tipo AS TipoFondoPensiones, fc.Tipo AS TipoFondoCesantias, tc.Tipo AS TipoContrato, c.TiempoContratado, c.RegistroMedico, c.FechaIngreso, c.FechaRetiro,
    CASE
		WHEN c.FechaRetiro IS NULL THEN 
            CONVERT(VARCHAR(10), DATEDIFF( mm, c.FechaIngreso, @Hoy) / 12) + ' a�os ' +
            CONVERT(VARCHAR(10), DATEDIFF( mm, c.FechaIngreso, @Hoy) % 12) + ' meses ' +
            CONVERT(VARCHAR(10), DATEDIFF(dd, DATEADD(mm, DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, c.FechaIngreso, @Hoy), c.FechaIngreso), @Hoy), DATEADD(yy, DATEDIFF(yy, c.FechaIngreso, @Hoy), c.FechaIngreso)), @Hoy)) + ' d�as'
        ELSE
            c.TiempoVinculacion
    END AS TiempoVinculacion,
    c.MotivoRetiro, c.Observaciones,
    CASE
        WHEN e.Estado = 1 THEN 'Activo'
        WHEN e.Estado = 0 THEN 'Inactivo'
    END AS Estado
    FROM Empleado e
    JOIN Contrato c ON e.Documento = c.EmpleadoId
    JOIN EPS ep ON c.EPSId = ep.Id
    LEFT JOIN FondoPensiones fp ON c.FondoPensionesId = fp.Id
    LEFT JOIN FondoCesantias fc ON c.FondoCesantiasId = fc.Id
    LEFT JOIN TipoContrato tc ON c.TipoContratoId = tc.Id
    JOIN TipoCargo tca ON c.TipoCargoId = tca.Id
END
GO


CREATE PROCEDURE GetActiveEmployeeContracts
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Hoy DATE;
    SET @Hoy = GETDATE();

    SELECT e.Documento, e.LugarExpedicion, e.PrimerNombre, e.SegundoNombre, e.PrimerApellido, e.SegundoApellido, e.FechaNacimiento, e.Sexo, tca.Tipo AS TipoCargo, c.AreaFuncional, c.Salario, ep.Tipo AS TipoEPS, fp.Tipo AS TipoFondoPensiones, fc.Tipo AS TipoFondoCesantias, tc.Tipo AS TipoContrato, c.TiempoContratado, c.RegistroMedico, c.FechaIngreso, c.FechaRetiro,
    CASE
        WHEN c.FechaRetiro IS NULL THEN 
			CONVERT(VARCHAR(10), DATEDIFF( mm, c.FechaIngreso, @Hoy) / 12) + ' a�os ' +
            CONVERT(VARCHAR(10), DATEDIFF( mm, c.FechaIngreso, @Hoy) % 12) + ' meses ' +
            CONVERT(VARCHAR(10), DATEDIFF(dd, DATEADD(mm, DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, c.FechaIngreso, @Hoy), c.FechaIngreso), @Hoy), DATEADD(yy, DATEDIFF(yy, c.FechaIngreso, @Hoy), c.FechaIngreso)), @Hoy)) + ' d�as'
        ELSE
            c.TiempoVinculacion
    END AS TiempoVinculacion,
    c.MotivoRetiro, c.Observaciones,
    CASE
        WHEN e.Estado = 1 THEN 'Activo'
        WHEN e.Estado = 0 THEN 'Inactivo'
    END AS Estado
    FROM Empleado e
    JOIN Contrato c ON e.Documento = c.EmpleadoId
    JOIN EPS ep ON c.EPSId = ep.Id
    LEFT JOIN FondoPensiones fp ON c.FondoPensionesId = fp.Id
    LEFT JOIN FondoCesantias fc ON c.FondoCesantiasId = fc.Id
    LEFT JOIN TipoContrato tc ON c.TipoContratoId = tc.Id
    JOIN TipoCargo tca ON c.TipoCargoId = tca.Id
	WHERE e.Estado = 1
END
GO

CREATE PROCEDURE GetEmployeeContracts
@doc int
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Hoy DATE;
    SET @Hoy = GETDATE();

    SELECT e.Documento, e.LugarExpedicion, e.PrimerNombre, e.SegundoNombre, e.PrimerApellido, e.SegundoApellido, e.FechaNacimiento, e.Sexo, tca.Tipo AS TipoCargo, c.AreaFuncional, c.Salario, ep.Tipo AS TipoEPS, fp.Tipo AS TipoFondoPensiones, fc.Tipo AS TipoFondoCesantias, tc.Tipo AS TipoContrato, c.TiempoContratado, c.RegistroMedico, c.FechaIngreso, c.FechaRetiro,
    CASE
        WHEN c.FechaRetiro IS NULL THEN 
            CONVERT(VARCHAR(10), DATEDIFF( mm, c.FechaIngreso, @Hoy) / 12) + ' a�os ' +
            CONVERT(VARCHAR(10), DATEDIFF( mm, c.FechaIngreso, @Hoy) % 12) + ' meses ' +
            CONVERT(VARCHAR(10), DATEDIFF(dd, DATEADD(mm, DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, c.FechaIngreso, @Hoy), c.FechaIngreso), @Hoy), DATEADD(yy, DATEDIFF(yy, c.FechaIngreso, @Hoy), c.FechaIngreso)), @Hoy)) + ' d�as'
        ELSE
            c.TiempoVinculacion
    END AS TiempoVinculacion,
    c.MotivoRetiro, c.Observaciones,
    CASE
        WHEN e.Estado = 1 THEN 'Activo'
        WHEN e.Estado = 0 THEN 'Inactivo'
    END AS Estado
    FROM Empleado e
    JOIN Contrato c ON e.Documento = c.EmpleadoId
    JOIN EPS ep ON c.EPSId = ep.Id
    LEFT JOIN FondoPensiones fp ON c.FondoPensionesId = fp.Id
    LEFT JOIN FondoCesantias fc ON c.FondoCesantiasId = fc.Id
    LEFT JOIN TipoContrato tc ON c.TipoContratoId = tc.Id
    JOIN TipoCargo tca ON c.TipoCargoId = tca.Id
	WHERE e.Documento = @doc 
END
GO

--Students
CREATE PROCEDURE GetStudents
AS
BEGIN
    SELECT e.Documento, e.PrimerNombre, e.SegundoNombre, e.PrimerApellido, e.SegundoApellido, e.FechaIngreso,
           tv.Tipo AS TipoVinculacion, e.TipoCargo, e.Institucion, e.AreaFuncional, e.FechaRetiro,
           e.MotivoRetiro, e.Observaciones, e.Estado,
	CASE
        WHEN e.Estado = 1 THEN 'Activo'
        WHEN e.Estado = 0 THEN 'Inactivo'
    END AS Estado
    FROM Estudiante e
    INNER JOIN TipoVinculacion tv ON e.TipoVinculacionId = tv.Id
END
GO

CREATE PROCEDURE GetActiveStudents
AS
BEGIN
    SELECT e.Documento, e.PrimerNombre, e.SegundoNombre, e.PrimerApellido, e.SegundoApellido, e.FechaIngreso,
           tv.Tipo AS TipoVinculacion, e.TipoCargo, e.Institucion, e.AreaFuncional, e.FechaRetiro,
           e.MotivoRetiro, e.Observaciones, e.Estado,
	CASE
        WHEN e.Estado = 1 THEN 'Activo'
        WHEN e.Estado = 0 THEN 'Inactivo'
    END AS Estado
    FROM Estudiante e
    INNER JOIN TipoVinculacion tv ON e.TipoVinculacionId = tv.Id
	WHERE Estado = 1
END
GO

--Volunteers
CREATE PROCEDURE GetVolunteers
AS
BEGIN
    SELECT v.Documento, v.PrimerNombre, v.SegundoNombre, v.PrimerApellido, v.SegundoApellido, v.FechaIngreso,
           tv.Tipo AS TipoVinculacion, tc.Tipo AS TipoCargo, v.AreaFuncional, v.FechaRetiro,
           v.MotivoRetiro, v.Observaciones, v.Estado,
	CASE
        WHEN v.Estado = 1 THEN 'Activo'
        WHEN v.Estado = 0 THEN 'Inactivo'
    END AS Estado
    FROM Voluntario v
    INNER JOIN TipoVinculacion tv ON v.TipoVinculacionId = tv.Id
    INNER JOIN TipoCargo tc ON v.TipoCargoId = tc.Id
END
GO

CREATE PROCEDURE GetActiveVolunteers
AS
BEGIN
    SELECT v.Documento, v.PrimerNombre, v.SegundoNombre, v.PrimerApellido, v.SegundoApellido, v.FechaIngreso,
           tv.Tipo AS TipoVinculacion, tc.Tipo AS TipoCargo, v.AreaFuncional, v.FechaRetiro,
           v.MotivoRetiro, v.Observaciones, v.Estado,
	CASE
        WHEN v.Estado = 1 THEN 'Activo'
        WHEN v.Estado = 0 THEN 'Inactivo'
    END AS Estado
    FROM Voluntario v
    INNER JOIN TipoVinculacion tv ON v.TipoVinculacionId = tv.Id
    INNER JOIN TipoCargo tc ON v.TipoCargoId = tc.Id
	WHERE Estado = 1
END
GO

--Interdependences
CREATE PROCEDURE GetInterdependences
AS
BEGIN
    SELECT i.Documento, i.PrimerNombre, i.SegundoNombre, i.PrimerApellido, i.SegundoApellido, i.FechaIngreso,
           tv.Tipo AS TipoVinculacion, tc.Tipo AS TipoCargo, i.Institucion, i.AreaFuncional, i.FechaRetiro,
           i.MotivoRetiro, i.Observaciones, i.Estado,
	CASE
        WHEN i.Estado = 1 THEN 'Activo'
        WHEN i.Estado = 0 THEN 'Inactivo'
    END AS Estado
    FROM Interdependencia i
    INNER JOIN TipoVinculacion tv ON i.TipoVinculacionId = tv.Id
    INNER JOIN TipoCargo tc ON i.TipoCargoId = tc.Id
END
GO

CREATE PROCEDURE GetActiveInterdependences
AS
BEGIN
    SELECT i.Documento, i.PrimerNombre, i.SegundoNombre, i.PrimerApellido, i.SegundoApellido, i.FechaIngreso,
           tv.Tipo AS TipoVinculacion, tc.Tipo AS TipoCargo, i.Institucion, i.AreaFuncional, i.FechaRetiro,
           i.MotivoRetiro, i.Observaciones, i.Estado,
	CASE
        WHEN i.Estado = 1 THEN 'Activo'
        WHEN i.Estado = 0 THEN 'Inactivo'
    END AS Estado
    FROM Interdependencia i
    INNER JOIN TipoVinculacion tv ON i.TipoVinculacionId = tv.Id
    INNER JOIN TipoCargo tc ON i.TipoCargoId = tc.Id
	WHERE Estado = 1
END
GO

--TeachingServices
CREATE PROCEDURE GetTeachingServices
AS
BEGIN
    SELECT d.Documento, d.PrimerNombre, d.SegundoNombre, d.PrimerApellido, d.SegundoApellido, d.FechaIngreso,
           tv.Tipo AS TipoVinculacion, tc.Tipo AS TipoCargo, d.Institucion, d.AreaFuncional, d.FechaRetiro,
           d.MotivoRetiro, d.Observaciones, d.Estado,
	CASE
        WHEN d.Estado = 1 THEN 'Activo'
        WHEN d.Estado = 0 THEN 'Inactivo'
    END AS Estado
    FROM DocenciaServicio d
    INNER JOIN TipoVinculacion tv ON d.TipoVinculacionId = tv.Id
    INNER JOIN TipoCargo tc ON d.TipoCargoId = tc.Id
END
GO

CREATE PROCEDURE GetActiveTeachingServices
AS
BEGIN
    SELECT d.Documento, d.PrimerNombre, d.SegundoNombre, d.PrimerApellido, d.SegundoApellido, d.FechaIngreso,
           tv.Tipo AS TipoVinculacion, tc.Tipo AS TipoCargo, d.Institucion, d.AreaFuncional, d.FechaRetiro,
           d.MotivoRetiro, d.Observaciones, d.Estado,
	CASE
        WHEN d.Estado = 1 THEN 'Activo'
        WHEN d.Estado = 0 THEN 'Inactivo'
    END AS Estado
    FROM DocenciaServicio d
    INNER JOIN TipoVinculacion tv ON d.TipoVinculacionId = tv.Id
    INNER JOIN TipoCargo tc ON d.TipoCargoId = tc.Id
	WHERE Estado = 1
END
GO

--///////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
insert into Usuario values
('a', 1, 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb', 3, 2, 2, 'Alex', null, 'Avec', null, 1),
('b', 2, '3e23e8160039594a33894f6564e1b1348bbd7a0088d42c4acb73eeaed59c009d', 3, 2, 2, 'Alex', 'Esteban', 'Avec', null, 1),
('c', 3, '2e7d2c03a9507ae265ecf5b5356885a53393a2029d241394997265a1a25aefc6', 3, 2, 2, 'Alex', null, 'Avec', null, 1),
('d', 3, '18ac3e7343f016890c510e93f935261169d9e3f565436429830faf0934f4f8e4', 3, 2, 2, 'Alex', null, 'Avec', 'Ruiz', 1),
('e', 3, '3f79bb7b435b05321651daefd374cdc681dc06faa65e374e38337b88ca046dea', 3, 2, 2, 'Alex', null, 'Avec', 'Ruiz', 0),
('3', 3, '3f79bb7b435b05321651daefd374cdc681dc06faa65e374e38337b88ca046dea', 4, 2, 2, 'Alex', null, 'Avec', 'Ruiz', 0),
('43157596', 3, '09b7ada9b425fdfc15a92390a11d999fe33e531bb7e2a0c5394d95e2558d4bea', 5, 3, 1, 'Maragarita', 'Maria', 'Zapata', 'Agudelo', 1)

/*--insert into ReferenciasPersonales values('a', 'a', 'a', 'a', 321, 321)
--insert into ReferenciasFamiliares values('b', 'b', 'b', 'b', 321, 321)
insert into DatosGenerales values ('a', 'a', 1, 'a', 'a')
insert into PersonasACargo values(1,2,3,4)
insert into Practicas Values ('a', 'b', 'c', '12/02/2003', '12/01/2024', 'Si')*/

--insert into Direccion values
--('Calle', 'chan', 'ty', 'chi', 'chon', 'Calle chantychichon'),
--('Avenida', '20','2', '4', null, 'Avenida 20 # 2 - 4')

--insert into DatosPersonales values
--('b', 22222, '02/02/2003', 'kim', 'ara', 310, 'a@a.com', 'x', 1, 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
--('a', 22222, '02/02/2004', 'kim', 'ara', 310, 'a@a.com', 'x', 1, 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
--('b', 22222, '02/02/2005', 'kim', 'ara', 310, 'a@a.com', 'x', 1, 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
--('a', 22222, '02/02/2006', 'kim', 'ara', 310, 'a@a.com', 'x', 1, 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
--('b', 22222, '02/02/2021', 'kim', 'ara', 310, 'a@a.com', 'x', 1, 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
--('a', 22222, '02/02/2021', 'kim', 'ara', 310, 'a@a.com', 'x', 1, 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
--('c', 22222, '02/02/2021', 'kim', 'ara', 310, 'a@a.com', 'x', 1, 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
--('43157596', NULL, '2010-01-05', 'Colombia', 'Medell�n', 3200000, 'prueba@gmail.com', 'Mujer', 2, 'Medell�n', 2, 'Padres', 'Ninguno', 1, 'Casado', 20, 1, 1, NULL, NULL, '0001-01-01')

--insert into Empleado values
--(123, 'Bello', 'Juan', null, 'Ruiz', 'Melo', '02/28/2000', 'Masculino', 1),
--(12345, 'Medellin', 'ana', null, 'bellota', null, '02/28/2003', 'Femenino', 1)

--insert into Contrato values
--(123, 2, 'Adminitrativo', 1200000, 8, null, null, 240, null, '10/04/2022', null, null, null, 'Muy malo'),
--(12345, 1, 'Adminitrativo', 1500000, 2, 4, 2, 240, null, '10/04/2023', null, null, null, 'Muy bueno')



truncate table EPS

drop database DB_CV

SmallDateTime
date




Select * from TipoCargo
select * from Estudiante


select* from InfoDocumento
select* from Practicas
select* from InfoLaboral
select* from PersonasACargo	
select* from DatosFamiliares
select* from TipoDocumento
select* from TipoVinculo
select* from TipoContrato
select* from Escolaridad
Select * from FondoPensiones
Select * from Direccion
Select * from DatosGenerales
select * from Usuario
select* from ContactoEmergencia
Select * from ReferenciasPersonales
select * from ReferenciasFamiliares
select * from DatosPersonales
select * from Contrato
select * from Empleado

insert into DatosPersonales values
(10,'b', 1, 2, 22222, 1, 'w', 'x', 'y', 'z', '02/02/2003', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(11,'a', 1, 2, 22222, 1, 'a', 'b', 'd', 'e', '02/02/2004', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(12,'b', 1, 2, 22222, 1, 'f', 'g', 'h', 'i', '02/02/2005', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(13,'a', 1, 2, 22222, 1, 'j', 'k', 'l', 'm', '02/02/2006', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(14,'a', 1, 2, 22222, 1, 'w', 'x', 'y', 'z', '02/02/2008', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(15,'b', 1, 2, 22222, 1, 'a', 'b', 'd', 'e', '02/02/2009', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(16,'a', 1, 2, 22222, 1, 'f', 'g', 'h', 'i', '02/02/2010', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(17,'b', 1, 2, 22222, 1, 'j', 'k', 'l', 'm', '03/02/2011', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(18,'a', 1, 2, 22222, 1, 'w', 'x', 'y', 'z', '05/04/2004', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(19,'b', 1, 2, 22222, 1, 'a', 'b', 'd', 'e', '05/05/2004', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(20,'a', 1, 2, 22222, 1, 'f', 'g', 'h', 'i', '02/02/2021', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(21,'b', 1, 2, 22222, 1, 'j', 'k', 'l', 'm', '02/02/2021', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(22,'a', 1, 2, 22222, 1, 'j', 'k', 'l', 'm', '02/02/2021', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME()),
(23,'c', 1, 2, 22222, 1, 'j', 'k', 'l', 'm', '02/02/2021', 'kim', 'ara', 310, 'a@a.com', 'x', 'CL', 'Belt', 3, 'dad', 'nigga', 1, 'soltero', 1, 2, 3, 1, 1, SYSDATETIME())

insert into DatosPersonales Values
(1, 'a', 1, 2, 2000, 2, 1, SYSDATETIME()),
(2, 'a', 1, 2, 2000, 2, 1, SYSDATETIME()),
(3, 'a', 1, 2, 2000, 1, 1, SYSDATETIME()),	
(4, 'a', 1, 2, 2000, 1, 1, SYSDATETIME()),
(5, 'a', 1, 2, 2000, 2, 1, SYSDATETIME()),
(6, 'a', 1, 2, 2000, 1, 1, SYSDATETIME()),
(7, 'a', 1, 2, 2000, 1, 1, SYSDATETIME()),
(8, 'a', 1, 2, 2000, 2, 1, SYSDATETIME())

--INSERT INTO Departamento VALUES
--	(5,'ANTIOQUIA'),
--	(8,'ATL�NTICO'),
--	(11,'BOGOT�, D.C.'),
--	(13,'BOL�VAR'),
--	(15,'BOYAC�'),
--	(17,'CALDAS'),
--	(18,'CAQUET�'),
--	(19,'CAUCA'),
--	(20,'CESAR'),
--	(23,'C�RDOBA'),
--	(25,'CUNDINAMARCA'),
--	(27,'CHOC�'),
--	(41,'HUILA'),
--	(44,'LA GUAJIRA'),
--	(47,'MAGDALENA'),
--	(50,'META'),
--	(52,'NARI�O'),
--	(54,'NORTE DE SANTANDER'),
--	(63,'QUINDIO'),
--	(66,'RISARALDA'),
--	(68,'SANTANDER'),
--	(70,'SUCRE'),
--	(73,'TOLIMA'),
--	(76,'VALLE DEL CAUCA'),
--	(81,'ARAUCA'),
--	(85,'CASANARE'),
--	(86,'PUTUMAYO'),
--	(88,'ARCHIPI�LAGO DE SAN ANDR�S, PROVIDENCIA Y SANTA CATALINA'),
--	(91,'AMAZONAS'),
--	(94,'GUAIN�A'),
--	(95,'GUAVIARE'),
--	(97,'VAUP�S'),
--	(99,'VICHADA');

INSERT INTO Pais VALUES
(1, 'Australia'),
(2, 'Austria'),
(3, 'Azerbaiy�n'),
(4, 'Anguilla'),
(5, 'Argentina'),
(6, 'Armenia'),
(7, 'Bielorrusia'),
(8, 'Belice'),
(9, 'B�lgica'),
(10, 'Bermudas'),
(11, 'Bulgaria'),
(12, 'Brasil'),
(13, 'Reino Unido'),
(14, 'Hungr�a'),
(15, 'Vietnam'),
(16, 'Haiti'),
(17, 'Guadalupe'),
(18, 'Alemania'),
(19, 'Pa�ses Bajos, Holanda'),
(20, 'Grecia'),
(21, 'Georgia'),
(22, 'Dinamarca'),
(23, 'Egipto'),
(24, 'Israel'),
(25, 'India'),
(26, 'Ir�n'),
(27, 'Irlanda'),
(28, 'Espa�a'),
(29, 'Italia'),
(30, 'Kazajst�n'),
(31, 'Camer�n'),
(32, 'Canad�'),
(33, 'Chipre'),
(34, 'Kirguist�n'),
(35, 'China'),
(36, 'Costa Rica'),
(37, 'Kuwait'),
(38, 'Letonia'),
(39, 'Libia'),
(40, 'Lituania'),
(41, 'Luxemburgo'),
(42, 'M�xico'),
(43, 'Moldavia'),
(44, 'M�naco'),
(45, 'Nueva Zelanda'),
(46, 'Noruega'),
(47, 'Polonia'),
(48, 'Portugal'),
(49, 'Reuni�n'),
(50, 'Rusia'),
(51, 'El Salvador'),
(52, 'Eslovaquia'),
(53, 'Eslovenia'),
(54, 'Surinam'),
(55, 'Estados Unidos'),
(56, 'Tadjikistan'),
(57, 'Turkmenistan'),
(58, 'Islas Turcas y Caicos'),
(59, 'Turqu�a'),
(60, 'Uganda'),
(61, 'Uzbekist�n'),
(62, 'Ucrania'),
(63, 'Finlandia'),
(64, 'Francia'),
(65, 'Rep�blica Checa'),
(66, 'Suiza'),
(67, 'Suecia'),
(68, 'Estonia'),
(69, 'Corea del Sur'),
(70, 'Jap�n'),
(71, 'Croacia'),
(72, 'Ruman�a'),
(73, 'Hong Kong'),
(74, 'Indonesia'),
(75, 'Jordania'),
(76, 'Malasia'),
(77, 'Singapur'),
(78, 'Taiwan'),
(79, 'Bosnia y Herzegovina'),
(80, 'Bahamas'),
(81, 'Chile'),
(82, 'Colombia'),
(83, 'Islandia'),
(84, 'Corea del Norte'),
(85, 'Macedonia'),
(86, 'Malta'),
(87, 'Pakist�n'),
(88, 'Pap�a-Nueva Guinea'),
(89, 'Per�'),
(90, 'Filipinas'),
(91, 'Arabia Saudita'),
(92, 'Tailandia'),
(93, 'Emiratos �rabes Unidos'),
(94, 'Groenlandia'),
(95, 'Venezuela'),
(96, 'Zimbabwe'),
(97, 'Kenia'),
(98, 'Algeria'),
(99, 'L�bano'),
(100, 'Botsuana'),
(101, 'Tanzania'),
(102, 'Namibia'),
(103, 'Ecuador'),
(104, 'Marruecos'),
(105, 'Ghana'),
(106, 'Siria'),
(107, 'Nepal'),
(108, 'Mauritania'),
(109, 'Seychelles'),
(110, 'Paraguay'),
(111, 'Uruguay'),
(112, 'Congo (Brazzaville)'),
(113, 'Cuba'),
(114, 'Albania'),
(115, 'Nigeria'),
(116, 'Zambia'),
(117, 'Mozambique'),
(119, 'Angola'),
(120, 'Sri Lanka'),
(121, 'Etiop�a'),
(122, 'T�nez'),
(123, 'Bolivia'),
(124, 'Panam�'),
(125, 'Malawi'),
(126, 'Liechtenstein'),
(127, 'Bahrein'),
(128, 'Barbados'),
(130, 'Chad'),
(131, 'Man, Isla de'),
(132, 'Jamaica'),
(133, 'Mal�'),
(134, 'Madagascar'),
(135, 'Senegal'),
(136, 'Togo'),
(137, 'Honduras'),
(138, 'Rep�blica Dominicana'),
(139, 'Mongolia'),
(140, 'Irak'),
(141, 'Sud�frica'),
(142, 'Aruba'),
(143, 'Gibraltar'),
(144, 'Afganist�n'),
(145, 'Andorra'),
(147, 'Antigua y Barbuda'),
(149, 'Bangladesh'),
(151, 'Ben�n'),
(152, 'But�n'),
(154, 'Islas Virgenes Brit�nicas'),
(155, 'Brun�i'),
(156, 'Burkina Faso'),
(157, 'Burundi'),
(158, 'Camboya'),
(159, 'Cabo Verde'),
(164, 'Comores'),
(165, 'Congo (Kinshasa)'),
(166, 'Cook, Islas'),
(168, 'Costa de Marfil'),
(169, 'Djibouti, Yibuti'),
(171, 'Timor Oriental'),
(172, 'Guinea Ecuatorial'),
(173, 'Eritrea'),
(175, 'Feroe, Islas'),
(176, 'Fiyi'),
(178, 'Polinesia Francesa'),
(180, 'Gab�n'),
(181, 'Gambia'),
(184, 'Granada'),
(185, 'Guatemala'),
(186, 'Guernsey'),
(187, 'Guinea'),
(188, 'Guinea-Bissau'),
(189, 'Guyana'),
(193, 'Jersey'),
(195, 'Kiribati'),
(196, 'Laos'),
(197, 'Lesotho'),
(198, 'Liberia'),
(200, 'Maldivas'),
(201, 'Martinica'),
(202, 'Mauricio'),
(205, 'Myanmar'),
(206, 'Nauru'),
(207, 'Antillas Holandesas'),
(208, 'Nueva Caledonia'),
(209, 'Nicaragua'),
(210, 'N�ger'),
(212, 'Norfolk Island'),
(213, 'Om�n'),
(215, 'Isla Pitcairn'),
(216, 'Qatar'),
(217, 'Ruanda'),
(218, 'Santa Elena'),
(219, 'San Cristobal y Nevis'),
(220, 'Santa Luc�a'),
(221, 'San Pedro y Miquel�n'),
(222, 'San Vincente y Granadinas'),
(223, 'Samoa'),
(224, 'San Marino'),
(225, 'San Tom� y Pr�ncipe'),
(226, 'Serbia y Montenegro'),
(227, 'Sierra Leona'),
(228, 'Islas Salom�n'),
(229, 'Somalia'),
(232, 'Sud�n'),
(234, 'Swazilandia'),
(235, 'Tokelau'),
(236, 'Tonga'),
(237, 'Trinidad y Tobago'),
(239, 'Tuvalu'),
(240, 'Vanuatu'),
(241, 'Wallis y Futuna'),
(242, 'S�hara Occidental'),
(243, 'Yemen'),
(246, 'Puerto Rico');

INSERT INTO Municipio VALUES
	(1,'Abriaqu�',5),
	(2,'Acac�as',50),
	(3,'Acand�',27),
	(4,'Acevedo',41),
	(5,'Ach�',13),
	(6,'Agrado',41),
	(7,'Agua de Dios',25),
	(8,'Aguachica',20),
	(9,'Aguada',68),
	(10,'Aguadas',17),
	(11,'Aguazul',85),
	(12,'Agust�n Codazzi',20),
	(13,'Aipe',41),
	(14,'Albania',18),
	(15,'Albania',44),
	(16,'Albania',68),
	(17,'Alb�n',25),
	(18,'Alb�n (San Jos�)',52),
	(19,'Alcal�',76),
	(20,'Alejandria',5),
	(21,'Algarrobo',47),
	(22,'Algeciras',41),
	(23,'Almaguer',19),
	(24,'Almeida',15),
	(25,'Alpujarra',73),
	(26,'Altamira',41),
	(27,'Alto Baud� (Pie de Pato)',27),
	(28,'Altos del Rosario',13),
	(29,'Alvarado',73),
	(30,'Amag�',5),
	(31,'Amalfi',5),
	(32,'Ambalema',73),
	(33,'Anapoima',25),
	(34,'Ancuya',52),
	(35,'Andaluc�a',76),
	(36,'Andes',5),
	(37,'Angel�polis',5),
	(38,'Angostura',5),
	(39,'Anolaima',25),
	(40,'Anor�',5),
	(41,'Anserma',17),
	(42,'Ansermanuevo',76),
	(43,'Anzo�tegui',73),
	(44,'Anz�',5),
	(45,'Apartad�',5),
	(46,'Apulo',25),
	(47,'Ap�a',66),
	(48,'Aquitania',15),
	(49,'Aracataca',47),
	(50,'Aranzazu',17),
	(51,'Aratoca',68),
	(52,'Arauca',81),
	(53,'Arauquita',81),
	(54,'Arbel�ez',25),
	(55,'Arboleda (Berruecos)',52),
	(56,'Arboledas',54),
	(57,'Arboletes',5),
	(58,'Arcabuco',15),
	(59,'Arenal',13),
	(60,'Argelia',5),
	(61,'Argelia',19),
	(62,'Argelia',76),
	(63,'Ariguan� (El Dif�cil)',47),
	(64,'Arjona',13),
	(65,'Armenia',5),
	(66,'Armenia',63),
	(67,'Armero (Guayabal)',73),
	(68,'Arroyohondo',13),
	(69,'Astrea',20),
	(70,'Ataco',73),
	(71,'Atrato (Yuto)',27),
	(72,'Ayapel',23),
	(73,'Bagad�',27),
	(74,'Bah�a Solano (M�tis)',27),
	(75,'Bajo Baud� (Pizarro)',27),
	(76,'Balboa',19),
	(77,'Balboa',66),
	(78,'Baranoa',8),
	(79,'Baraya',41),
	(80,'Barbacoas',52),
	(81,'Barbosa',5),
	(82,'Barbosa',68),
	(83,'Barichara',68),
	(84,'Barranca de Up�a',50),
	(85,'Barrancabermeja',68),
	(86,'Barrancas',44),
	(87,'Barranco de Loba',13),
	(88,'Barranquilla',8),
	(89,'Becerr�l',20),
	(90,'Belalc�zar',17),
	(91,'Bello',5),
	(92,'Belmira',5),
	(93,'Beltr�n',25),
	(94,'Bel�n',15),
	(95,'Bel�n',52),
	(96,'Bel�n de Bajir�',27),
	(97,'Bel�n de Umbr�a',66),
	(98,'Bel�n de los Andaqu�es',18),
	(99,'Berbeo',15),
	(100,'Betania',5),
	(101,'Beteitiva',15),
	(102,'Betulia',5),
	(103,'Betulia',68),
	(104,'Bituima',25),
	(105,'Boavita',15),
	(106,'Bochalema',54),
	(107,'Bogot� D.C.',11),
	(108,'Bojac�',25),
	(109,'Bojay� (Bellavista)',27),
	(110,'Bol�var',5),
	(111,'Bol�var',19),
	(112,'Bol�var',68),
	(113,'Bol�var',76),
	(114,'Bosconia',20),
	(115,'Boyac�',15),
	(116,'Brice�o',5),
	(117,'Brice�o',15),
	(118,'Bucaramanga',68),
	(119,'Bucarasica',54),
	(120,'Buenaventura',76),
	(121,'Buenavista',15),
	(122,'Buenavista',23),
	(123,'Buenavista',63),
	(124,'Buenavista',70),
	(125,'Buenos Aires',19),
	(126,'Buesaco',52),
	(127,'Buga',76),
	(128,'Bugalagrande',76),
	(129,'Bur�tica',5),
	(130,'Busbanza',15),
	(131,'Cabrera',25),
	(132,'Cabrera',68),
	(133,'Cabuyaro',50),
	(134,'Cachipay',25),
	(135,'Caicedo',5),
	(136,'Caicedonia',76),
	(137,'Caimito',70),
	(138,'Cajamarca',73),
	(139,'Cajib�o',19),
	(140,'Cajic�',25),
	(141,'Calamar',13),
	(142,'Calamar',95),
	(143,'Calarc�',63),
	(144,'Caldas',5),
	(145,'Caldas',15),
	(146,'Caldono',19),
	(147,'California',68),
	(148,'Calima (Dari�n)',76),
	(149,'Caloto',19),
	(150,'Cal�',76),
	(151,'Campamento',5),
	(152,'Campo de la Cruz',8),
	(153,'Campoalegre',41),
	(154,'Campohermoso',15),
	(155,'Canalete',23),
	(156,'Candelaria',8),
	(157,'Candelaria',76),
	(158,'Cantagallo',13),
	(159,'Cant�n de San Pablo',27),
	(160,'Caparrap�',25),
	(161,'Capitanejo',68),
	(162,'Caracol�',5),
	(163,'Caramanta',5),
	(164,'Carcas�',68),
	(165,'Carepa',5),
	(166,'Carmen de Apical�',73),
	(167,'Carmen de Carupa',25),
	(168,'Carmen de Viboral',5),
	(169,'Carmen del Dari�n (CURBARAD�)',27),
	(170,'Carolina',5),
	(171,'Cartagena',13),
	(172,'Cartagena del Chair�',18),
	(173,'Cartago',76),
	(174,'Carur�',97),
	(175,'Casabianca',73),
	(176,'Castilla la Nueva',50),
	(177,'Caucasia',5),
	(178,'Ca�asgordas',5),
	(179,'Cepita',68),
	(180,'Ceret�',23),
	(181,'Cerinza',15),
	(182,'Cerrito',68),
	(183,'Cerro San Antonio',47),
	(184,'Chachagu�',52),
	(185,'Chaguan�',25),
	(186,'Chal�n',70),
	(187,'Chaparral',73),
	(188,'Charal�',68),
	(189,'Charta',68),
	(190,'Chigorod�',5),
	(191,'Chima',68),
	(192,'Chimichagua',20),
	(193,'Chim�',23),
	(194,'Chinavita',15),
	(195,'Chinchin�',17),
	(196,'Chin�cota',54),
	(197,'Chin�',23),
	(198,'Chipaque',25),
	(199,'Chipat�',68),
	(200,'Chiquinquir�',15),
	(201,'Chiriguan�',20),
	(202,'Chiscas',15),
	(203,'Chita',15),
	(204,'Chitag�',54),
	(205,'Chitaraque',15),
	(206,'Chivat�',15),
	(207,'Chivolo',47),
	(208,'Choach�',25),
	(209,'Chocont�',25),
	(210,'Ch�meza',85),
	(211,'Ch�a',25),
	(212,'Ch�quiza',15),
	(213,'Ch�vor',15),
	(214,'Cicuco',13),
	(215,'Cimitarra',68),
	(216,'Circasia',63),
	(217,'Cisneros',5),
	(218,'Ci�naga',15),
	(219,'Ci�naga',47),
	(220,'Ci�naga de Oro',23),
	(221,'Clemencia',13),
	(222,'Cocorn�',5),
	(223,'Coello',73),
	(224,'Cogua',25),
	(225,'Colombia',41),
	(226,'Colos� (Ricaurte)',70),
	(227,'Col�n',86),
	(228,'Col�n (G�nova)',52),
	(229,'Concepci�n',5),
	(230,'Concepci�n',68),
	(231,'Concordia',5),
	(232,'Concordia',47),
	(233,'Condoto',27),
	(234,'Confines',68),
	(235,'Consaca',52),
	(236,'Contadero',52),
	(237,'Contrataci�n',68),
	(238,'Convenci�n',54),
	(239,'Copacabana',5),
	(240,'Coper',15),
	(241,'Cordob�',63),
	(242,'Corinto',19),
	(243,'Coromoro',68),
	(244,'Corozal',70),
	(245,'Corrales',15),
	(246,'Cota',25),
	(247,'Cotorra',23),
	(248,'Covarach�a',15),
	(249,'Cove�as',15),
	(250,'Coyaima',73),
	(251,'Cravo Norte',81),
	(252,'Cuaspud (Carlosama)',52),
	(253,'Cubarral',50),
	(254,'Cubar�',15),
	(255,'Cucaita',15),
	(256,'Cucunub�',25),
	(257,'Cucutilla',54),
	(258,'Cuitiva',15),
	(259,'Cumaral',50),
	(260,'Cumaribo',99),
	(261,'Cumbal',52),
	(262,'Cumbitara',52),
	(263,'Cunday',73),
	(264,'Curillo',18),
	(265,'Curit�',68),
	(266,'Curuman�',20),
	(267,'C�ceres',5),
	(268,'C�chira',54),
	(269,'C�cota',54),
	(270,'C�queza',25),
	(271,'C�rtegui',27),
	(272,'C�mbita',15),
	(273,'C�rdoba',13),
	(274,'C�rdoba',52),
	(275,'C�cuta',54),
	(276,'Dabeiba',5),
	(277,'Dagua',76),
	(278,'Dibulla',44),
	(279,'Distracci',44),
	(280,'Dolores',73),
	(281,'Don Mat�as',5),
	(282,'Dos Quebradas',66),
	(283,'Duitama',15),
	(284,'Durania',54),
	(285,'Eb�jico',5),
	(286,'El Bagre',5),
	(287,'El Banco',47),
	(288,'El Cairo',76),
	(289,'El Calvario',50),
	(290,'El Carmen',54),
	(291,'El Carmen',68),
	(292,'El Carmen de Atrato',27),
	(293,'El Carmen de Bol�var',13),
	(294,'El Castillo',50),
	(295,'El Cerrito',76),
	(296,'El Charco',52),
	(297,'El Cocuy',15),
	(298,'El Colegio',25),
	(299,'El Copey',20),
	(300,'El Doncello',18),
	(301,'El Dorado',50),
	(302,'El Dovio',76),
	(303,'El Espino',15),
	(304,'El Guacamayo',68),
	(305,'El Guamo',13),
	(306,'El Molino',44),
	(307,'El Paso',20),
	(308,'El Paujil',18),
	(309,'El Pe�ol',52),
	(310,'El Pe�on',13),
	(311,'El Pe�on',68),
	(312,'El Pe��n',25),
	(313,'El Pi�on',47),
	(314,'El Play�n',68),
	(315,'El Retorno',95),
	(316,'El Ret�n',47),
	(317,'El Roble',70),
	(318,'El Rosal',25),
	(319,'El Rosario',52),
	(320,'El Tabl�n de G�mez',52),
	(321,'El Tambo',19),
	(322,'El Tambo',52),
	(323,'El Tarra',54),
	(324,'El Zulia',54),
	(325,'El �guila',76),
	(326,'El�as',41),
	(327,'Encino',68),
	(328,'Enciso',68),
	(329,'Entrerr�os',5),
	(330,'Envigado',5),
	(331,'Espinal',73),
	(332,'Facatativ�',25),
	(333,'Falan',73),
	(334,'Filadelfia',17),
	(335,'Filandia',63),
	(336,'Firavitoba',15),
	(337,'Flandes',73),
	(338,'Florencia',18),
	(339,'Florencia',19),
	(340,'Floresta',15),
	(341,'Florida',76),
	(342,'Floridablanca',68),
	(343,'Flori�n',68),
	(344,'Fonseca',44),
	(345,'Fort�l',81),
	(346,'Fosca',25),
	(347,'Francisco Pizarro',52),
	(348,'Fredonia',5),
	(349,'Fresno',73),
	(350,'Frontino',5),
	(351,'Fuente de Oro',50),
	(352,'Fundaci�n',47),
	(353,'Funes',52),
	(354,'Funza',25),
	(355,'Fusagasug�',25),
	(356,'F�meque',25),
	(357,'F�quene',25),
	(358,'Gachal�',25),
	(359,'Gachancip�',25),
	(360,'Gachantiv�',15),
	(361,'Gachet�',25),
	(362,'Galapa',8),
	(363,'Galeras (Nueva Granada)',70),
	(364,'Gal�n',68),
	(365,'Gama',25),
	(366,'Gamarra',20),
	(367,'Garagoa',15),
	(368,'Garz�n',41),
	(369,'Gigante',41),
	(370,'Ginebra',76),
	(371,'Giraldo',5),
	(372,'Girardot',25),
	(373,'Girardota',5),
	(374,'Gir�n',68),
	(375,'Gonzalez',20),
	(376,'Gramalote',54),
	(377,'Granada',5),
	(378,'Granada',25),
	(379,'Granada',50),
	(380,'Guaca',68),
	(381,'Guacamayas',15),
	(382,'Guacar�',76),
	(383,'Guachav�s',52),
	(384,'Guachen�',19),
	(385,'Guachet�',25),
	(386,'Guachucal',52),
	(387,'Guadalupe',5),
	(388,'Guadalupe',41),
	(389,'Guadalupe',68),
	(390,'Guaduas',25),
	(391,'Guaitarilla',52),
	(392,'Gualmat�n',52),
	(393,'Guamal',47),
	(394,'Guamal',50),
	(395,'Guamo',73),
	(396,'Guapota',68),
	(397,'Guap�',19),
	(398,'Guaranda',70),
	(399,'Guarne',5),
	(400,'Guasca',25),
	(401,'Guatap�',5),
	(402,'Guataqu�',25),
	(403,'Guatavita',25),
	(404,'Guateque',15),
	(405,'Guavat�',68),
	(406,'Guayabal de Siquima',25),
	(407,'Guayabetal',25),
	(408,'Guayat�',15),
	(409,'Guepsa',68),
	(410,'Guic�n',15),
	(411,'Guti�rrez',25),
	(412,'Gu�tica',66),
	(413,'G�mbita',68),
	(414,'G�meza',15),
	(415,'G�nova',63),
	(416,'G�mez Plata',5),
	(417,'Hacar�',54),
	(418,'Hatillo de Loba',13),
	(419,'Hato',68),
	(420,'Hato Corozal',85),
	(421,'Hatonuevo',44),
	(422,'Heliconia',5),
	(423,'Herr�n',54),
	(424,'Herveo',73),
	(425,'Hispania',5),
	(426,'Hobo',41),
	(427,'Honda',73),
	(428,'Ibagu�',73),
	(429,'Icononzo',73),
	(430,'Iles',52),
	(431,'Im�es',52),
	(432,'Inz�',19),
	(433,'In�rida',94),
	(434,'Ipiales',52),
	(435,'Isnos',41),
	(436,'Istmina',27),
	(437,'Itag��',5),
	(438,'Ituango',5),
	(439,'Iz�',15),
	(440,'Jambal�',19),
	(441,'Jamund�',76),
	(442,'Jard�n',5),
	(443,'Jenesano',15),
	(444,'Jeric�',5),
	(445,'Jeric�',15),
	(446,'Jerusal�n',25),
	(447,'Jes�s Mar�a',68),
	(448,'Jord�n',68),
	(449,'Juan de Acosta',8),
	(450,'Jun�n',25),
	(451,'Jurad�',27),
	(452,'La Apartada y La Frontera',23),
	(453,'La Argentina',41),
	(454,'La Belleza',68),
	(455,'La Calera',25),
	(456,'La Capilla',15),
	(457,'La Ceja',5),
	(458,'La Celia',66),
	(459,'La Cruz',52),
	(460,'La Cumbre',76),
	(461,'La Dorada',17),
	(462,'La Esperanza',54),
	(463,'La Estrella',5),
	(464,'La Florida',52),
	(465,'La Gloria',20),
	(466,'La Jagua de Ibirico',20),
	(467,'La Jagua del Pilar',44),
	(468,'La Llanada',52),
	(469,'La Macarena',50),
	(470,'La Merced',17),
	(471,'La Mesa',25),
	(472,'La Monta�ita',18),
	(473,'La Palma',25),
	(474,'La Paz',68),
	(475,'La Paz (Robles)',20),
	(476,'La Pe�a',25),
	(477,'La Pintada',5),
	(478,'La Plata',41),
	(479,'La Playa',54),
	(480,'La Primavera',99),
	(481,'La Salina',85),
	(482,'La Sierra',19),
	(483,'La Tebaida',63),
	(484,'La Tola',52),
	(485,'La Uni�n',5),
	(486,'La Uni�n',52),
	(487,'La Uni�n',70),
	(488,'La Uni�n',76),
	(489,'La Uvita',15),
	(490,'La Vega',19),
	(491,'La Vega',25),
	(492,'La Victoria',15),
	(493,'La Victoria',17),
	(494,'La Victoria',76),
	(495,'La Virginia',66),
	(496,'Labateca',54),
	(497,'Labranzagrande',15),
	(498,'Land�zuri',68),
	(499,'Lebrija',68),
	(500,'Leiva',52),
	(501,'Lejan�as',50),
	(502,'Lenguazaque',25),
	(503,'Leticia',91),
	(504,'Liborina',5),
	(505,'Linares',52),
	(506,'Llor�',27),
	(507,'Lorica',23),
	(508,'Los C�rdobas',23),
	(509,'Los Palmitos',70),
	(510,'Los Patios',54),
	(511,'Los Santos',68),
	(512,'Lourdes',54),
	(513,'Luruaco',8),
	(514,'L�rida',73),
	(515,'L�bano',73),
	(516,'L�pez (Micay)',19),
	(517,'Macanal',15),
	(518,'Macaravita',68),
	(519,'Maceo',5),
	(520,'Machet�',25),
	(521,'Madrid',25),
	(522,'Magangu�',13),
	(523,'Mag�i (Pay�n)',52),
	(524,'Mahates',13),
	(525,'Maicao',44),
	(526,'Majagual',70),
	(527,'Malambo',8),
	(528,'Mallama (Piedrancha)',52),
	(529,'Manat�',8),
	(530,'Manaure',44),
	(531,'Manaure Balc�n del Cesar',20),
	(532,'Manizales',17),
	(533,'Manta',25),
	(534,'Manzanares',17),
	(535,'Man�',85),
	(536,'Mapiripan',50),
	(537,'Margarita',13),
	(538,'Marinilla',5),
	(539,'Marip�',15),
	(540,'Mariquita',73),
	(541,'Marmato',17),
	(542,'Marquetalia',17),
	(543,'Marsella',66),
	(544,'Marulanda',17),
	(545,'Mar�a la Baja',13),
	(546,'Matanza',68),
	(547,'Medell�n',5),
	(548,'Medina',25),
	(549,'Medio Atrato',27),
	(550,'Medio Baud�',27),
	(551,'Medio San Juan (ANDAGOYA)',27),
	(552,'Melgar',73),
	(553,'Mercaderes',19),
	(554,'Mesetas',50),
	(555,'Mil�n',18),
	(556,'Miraflores',15),
	(557,'Miraflores',95),
	(558,'Miranda',19),
	(559,'Mistrat�',66),
	(560,'Mit�',97),
	(561,'Mocoa',86),
	(562,'Mogotes',68),
	(563,'Molagavita',68),
	(564,'Momil',23),
	(565,'Momp�s',13),
	(566,'Mongua',15),
	(567,'Mongu�',15),
	(568,'Moniquir�',15),
	(569,'Montebello',5),
	(570,'Montecristo',13),
	(571,'Montel�bano',23),
	(572,'Montenegro',63),
	(573,'Monteria',23),
	(574,'Monterrey',85),
	(575,'Morales',13),
	(576,'Morales',19),
	(577,'Morelia',18),
	(578,'Morroa',70),
	(579,'Mosquera',25),
	(580,'Mosquera',52),
	(581,'Motavita',15),
	(582,'Mo�itos',23),
	(583,'Murillo',73),
	(584,'Murind�',5),
	(585,'Mutat�',5),
	(586,'Mutiscua',54),
	(587,'Muzo',15),
	(588,'M�laga',68),
	(589,'Nari�o',5),
	(590,'Nari�o',25),
	(591,'Nari�o',52),
	(592,'Natagaima',73),
	(593,'Nech�',5),
	(594,'Necocl�',5),
	(595,'Neira',17),
	(596,'Neiva',41),
	(597,'Nemoc�n',25),
	(598,'Nilo',25),
	(599,'Nimaima',25),
	(600,'Nobsa',15),
	(601,'Nocaima',25),
	(602,'Norcasia',17),
	(603,'Noros�',13),
	(604,'Novita',27),
	(605,'Nueva Granada',47),
	(606,'Nuevo Col�n',15),
	(607,'Nunch�a',85),
	(608,'Nuqu�',27),
	(609,'N�taga',41),
	(610,'Obando',76),
	(611,'Ocamonte',68),
	(612,'Oca�a',54),
	(613,'Oiba',68),
	(614,'Oicat�',15),
	(615,'Olaya',5),
	(616,'Olaya Herrera',52),
	(617,'Onzaga',68),
	(618,'Oporapa',41),
	(619,'Orito',86),
	(620,'Orocu�',85),
	(621,'Ortega',73),
	(622,'Ospina',52),
	(623,'Otanche',15),
	(624,'Ovejas',70),
	(625,'Pachavita',15),
	(626,'Pacho',25),
	(627,'Padilla',19),
	(628,'Paicol',41),
	(629,'Pailitas',20),
	(630,'Paime',25),
	(631,'Paipa',15),
	(632,'Pajarito',15),
	(633,'Palermo',41),
	(634,'Palestina',17),
	(635,'Palestina',41),
	(636,'Palmar',68),
	(637,'Palmar de Varela',8),
	(638,'Palmas del Socorro',68),
	(639,'Palmira',76),
	(640,'Palmito',70),
	(641,'Palocabildo',73),
	(642,'Pamplona',54),
	(643,'Pamplonita',54),
	(644,'Pandi',25),
	(645,'Panqueba',15),
	(646,'Paratebueno',25),
	(647,'Pasca',25),
	(648,'Pat�a (El Bordo)',19),
	(649,'Pauna',15),
	(650,'Paya',15),
	(651,'Paz de Ariporo',85),
	(652,'Paz de R�o',15),
	(653,'Pedraza',47),
	(654,'Pelaya',20),
	(655,'Pensilvania',17),
	(656,'Peque',5),
	(657,'Pereira',66),
	(658,'Pesca',15),
	(659,'Pe�ol',5),
	(660,'Piamonte',19),
	(661,'Pie de Cuesta',68),
	(662,'Piedras',73),
	(663,'Piendam�',19),
	(664,'Pijao',63),
	(665,'Piji�o',47),
	(666,'Pinchote',68),
	(667,'Pinillos',13),
	(668,'Piojo',8),
	(669,'Pisva',15),
	(670,'Pital',41),
	(671,'Pitalito',41),
	(672,'Pivijay',47),
	(673,'Planadas',73),
	(674,'Planeta Rica',23),
	(675,'Plato',47),
	(676,'Policarpa',52),
	(677,'Polonuevo',8),
	(678,'Ponedera',8),
	(679,'Popay�n',19),
	(680,'Pore',85),
	(681,'Potos�',52),
	(682,'Pradera',76),
	(683,'Prado',73),
	(684,'Providencia',52),
	(685,'Providencia',88),
	(686,'Pueblo Bello',20),
	(687,'Pueblo Nuevo',23),
	(688,'Pueblo Rico',66),
	(689,'Pueblorrico',5),
	(690,'Puebloviejo',47),
	(691,'Puente Nacional',68),
	(692,'Puerres',52),
	(693,'Puerto As�s',86),
	(694,'Puerto Berr�o',5),
	(695,'Puerto Boyac�',15),
	(696,'Puerto Caicedo',86),
	(697,'Puerto Carre�o',99),
	(698,'Puerto Colombia',8),
	(699,'Puerto Concordia',50),
	(700,'Puerto Escondido',23),
	(701,'Puerto Gait�n',50),
	(702,'Puerto Guzm�n',86),
	(703,'Puerto Legu�zamo',86),
	(704,'Puerto Libertador',23),
	(705,'Puerto Lleras',50),
	(706,'Puerto L�pez',50),
	(707,'Puerto Nare',5),
	(708,'Puerto Nari�o',91),
	(709,'Puerto Parra',68),
	(710,'Puerto Rico',18),
	(711,'Puerto Rico',50),
	(712,'Puerto Rond�n',81),
	(713,'Puerto Salgar',25),
	(714,'Puerto Santander',54),
	(715,'Puerto Tejada',19),
	(716,'Puerto Triunfo',5),
	(717,'Puerto Wilches',68),
	(718,'Pul�',25),
	(719,'Pupiales',52),
	(720,'Purac� (Coconuco)',19),
	(721,'Purificaci�n',73),
	(722,'Pur�sima',23),
	(723,'P�cora',17),
	(724,'P�ez',15),
	(725,'P�ez (Belalcazar)',19),
	(726,'P�ramo',68),
	(727,'Quebradanegra',25),
	(728,'Quetame',25),
	(729,'Quibd�',27),
	(730,'Quimbaya',63),
	(731,'Quinch�a',66),
	(732,'Quipama',15),
	(733,'Quipile',25),
	(734,'Ragonvalia',54),
	(735,'Ramiriqu�',15),
	(736,'Recetor',85),
	(737,'Regidor',13),
	(738,'Remedios',5),
	(739,'Remolino',47),
	(740,'Repel�n',8),
	(741,'Restrepo',50),
	(742,'Restrepo',76),
	(743,'Retiro',5),
	(744,'Ricaurte',25),
	(745,'Ricaurte',52),
	(746,'Rio Negro',68),
	(747,'Rioblanco',73),
	(748,'Riofr�o',76),
	(749,'Riohacha',44),
	(750,'Risaralda',17),
	(751,'Rivera',41),
	(752,'Roberto Pay�n (San Jos�)',52),
	(753,'Roldanillo',76),
	(754,'Roncesvalles',73),
	(755,'Rond�n',15),
	(756,'Rosas',19),
	(757,'Rovira',73),
	(758,'R�quira',15),
	(759,'R�o Ir�',27),
	(760,'R�o Quito',27),
	(761,'R�o Sucio',17),
	(762,'R�o Viejo',13),
	(763,'R�o de oro',20),
	(764,'R�onegro',5),
	(765,'R�osucio',27),
	(766,'Sabana de Torres',68),
	(767,'Sabanagrande',8),
	(768,'Sabanalarga',5),
	(769,'Sabanalarga',8),
	(770,'Sabanalarga',85),
	(771,'Sabanas de San Angel (SAN ANGEL)',47),
	(772,'Sabaneta',5),
	(773,'Saboy�',15),
	(774,'Sahag�n',23),
	(775,'Saladoblanco',41),
	(776,'Salamina',17),
	(777,'Salamina',47),
	(778,'Salazar',54),
	(779,'Salda�a',73),
	(780,'Salento',63),
	(781,'Salgar',5),
	(782,'Samac�',15),
	(783,'Samaniego',52),
	(784,'Saman�',17),
	(785,'Sampu�s',70),
	(786,'San Agust�n',41),
	(787,'San Alberto',20),
	(788,'San Andr�s',68),
	(789,'San Andr�s Sotavento',23),
	(790,'San Andr�s de Cuerqu�a',5),
	(791,'San Antero',23),
	(792,'San Antonio',73),
	(793,'San Antonio de Tequendama',25),
	(794,'San Benito',68),
	(795,'San Benito Abad',70),
	(796,'San Bernardo',25),
	(797,'San Bernardo',52),
	(798,'San Bernardo del Viento',23),
	(799,'San Calixto',54),
	(800,'San Carlos',5),
	(801,'San Carlos',23),
	(802,'San Carlos de Guaroa',50),
	(803,'San Cayetano',25),
	(804,'San Cayetano',54),
	(805,'San Cristobal',13),
	(806,'San Diego',20),
	(807,'San Eduardo',15),
	(808,'San Estanislao',13),
	(809,'San Fernando',13),
	(810,'San Francisco',5),
	(811,'San Francisco',25),
	(812,'San Francisco',86),
	(813,'San G�l',68),
	(814,'San Jacinto',13),
	(815,'San Jacinto del Cauca',13),
	(816,'San Jer�nimo',5),
	(817,'San Joaqu�n',68),
	(818,'San Jos�',17),
	(819,'San Jos� de Miranda',68),
	(820,'San Jos� de Monta�a',5),
	(821,'San Jos� de Pare',15),
	(822,'San Jos� de Ur�',23),
	(823,'San Jos� del Fragua',18),
	(824,'San Jos� del Guaviare',95),
	(825,'San Jos� del Palmar',27),
	(826,'San Juan de Arama',50),
	(827,'San Juan de Betulia',70),
	(828,'San Juan de Nepomuceno',13),
	(829,'San Juan de Pasto',52),
	(830,'San Juan de R�o Seco',25),
	(831,'San Juan de Urab�',5),
	(832,'San Juan del Cesar',44),
	(833,'San Juanito',50),
	(834,'San Lorenzo',52),
	(835,'San Luis',73),
	(836,'San Lu�s',5),
	(837,'San Lu�s de Gaceno',15),
	(838,'San Lu�s de Palenque',85),
	(839,'San Marcos',70),
	(840,'San Mart�n',20),
	(841,'San Mart�n',50),
	(842,'San Mart�n de Loba',13),
	(843,'San Mateo',15),
	(844,'San Miguel',68),
	(845,'San Miguel',86),
	(846,'San Miguel de Sema',15),
	(847,'San Onofre',70),
	(848,'San Pablo',13),
	(849,'San Pablo',52),
	(850,'San Pablo de Borbur',15),
	(851,'San Pedro',5),
	(852,'San Pedro',70),
	(853,'San Pedro',76),
	(854,'San Pedro de Cartago',52),
	(855,'San Pedro de Urab�',5),
	(856,'San Pelayo',23),
	(857,'San Rafael',5),
	(858,'San Roque',5),
	(859,'San Sebasti�n',19),
	(860,'San Sebasti�n de Buenavista',47),
	(861,'San Vicente',5),
	(862,'San Vicente del Cagu�n',18),
	(863,'San Vicente del Chucur�',68),
	(864,'San Zen�n',47),
	(865,'Sandon�',52),
	(866,'Santa Ana',47),
	(867,'Santa B�rbara',5),
	(868,'Santa B�rbara',68),
	(869,'Santa B�rbara (Iscuand�)',52),
	(870,'Santa B�rbara de Pinto',47),
	(871,'Santa Catalina',13),
	(872,'Santa F� de Antioquia',5),
	(873,'Santa Genoveva de Docorod�',27),
	(874,'Santa Helena del Op�n',68),
	(875,'Santa Isabel',73),
	(876,'Santa Luc�a',8),
	(877,'Santa Marta',47),
	(878,'Santa Mar�a',15),
	(879,'Santa Mar�a',41),
	(880,'Santa Rosa',13),
	(881,'Santa Rosa',19),
	(882,'Santa Rosa de Cabal',66),
	(883,'Santa Rosa de Osos',5),
	(884,'Santa Rosa de Viterbo',15),
	(885,'Santa Rosa del Sur',13),
	(886,'Santa Rosal�a',99),
	(887,'Santa Sof�a',15),
	(888,'Santana',15),
	(889,'Santander de Quilichao',19),
	(890,'Santiago',54),
	(891,'Santiago',86),
	(892,'Santo Domingo',5),
	(893,'Santo Tom�s',8),
	(894,'Santuario',5),
	(895,'Santuario',66),
	(896,'Sapuyes',52),
	(897,'Saravena',81),
	(898,'Sardinata',54),
	(899,'Sasaima',25),
	(900,'Sativanorte',15),
	(901,'Sativasur',15),
	(902,'Segovia',5),
	(903,'Sesquil�',25),
	(904,'Sevilla',76),
	(905,'Siachoque',15),
	(906,'Sibat�',25),
	(907,'Sibundoy',86),
	(908,'Silos',54),
	(909,'Silvania',25),
	(910,'Silvia',19),
	(911,'Simacota',68),
	(912,'Simijaca',25),
	(913,'Simit�',13),
	(914,'Sincelejo',70),
	(915,'Sinc�',70),
	(916,'Sip�',27),
	(917,'Sitionuevo',47),
	(918,'Soacha',25),
	(919,'Soat�',15),
	(920,'Socha',15),
	(921,'Socorro',68),
	(922,'Socot�',15),
	(923,'Sogamoso',15),
	(924,'Solano',18),
	(925,'Soledad',8),
	(926,'Solita',18),
	(927,'Somondoco',15),
	(928,'Sons�n',5),
	(929,'Sopetr�n',5),
	(930,'Soplaviento',13),
	(931,'Sop�',25),
	(932,'Sora',15),
	(933,'Sorac�',15),
	(934,'Sotaquir�',15),
	(935,'Sotara (Paispamba)',19),
	(936,'Sotomayor (Los Andes)',52),
	(937,'Suaita',68),
	(938,'Suan',8),
	(939,'Suaza',41),
	(940,'Subachoque',25),
	(941,'Sucre',19),
	(942,'Sucre',68),
	(943,'Sucre',70),
	(944,'Suesca',25),
	(945,'Supat�',25),
	(946,'Sup�a',17),
	(947,'Surat�',68),
	(948,'Susa',25),
	(949,'Susac�n',15),
	(950,'Sutamarch�n',15),
	(951,'Sutatausa',25),
	(952,'Sutatenza',15),
	(953,'Su�rez',19),
	(954,'Su�rez',73),
	(955,'S�cama',85),
	(956,'S�chica',15),
	(957,'Tabio',25),
	(958,'Tad�',27),
	(959,'Talaigua Nuevo',13),
	(960,'Tamalameque',20),
	(961,'Tame',81),
	(962,'Taminango',52),
	(963,'Tangua',52),
	(964,'Taraira',97),
	(965,'Taraz�',5),
	(966,'Tarqui',41),
	(967,'Tarso',5),
	(968,'Tasco',15),
	(969,'Tauramena',85),
	(970,'Tausa',25),
	(971,'Tello',41),
	(972,'Tena',25),
	(973,'Tenerife',47),
	(974,'Tenjo',25),
	(975,'Tenza',15),
	(976,'Teorama',54),
	(977,'Teruel',41),
	(978,'Tesalia',41),
	(979,'Tibacuy',25),
	(980,'Tiban�',15),
	(981,'Tibasosa',15),
	(982,'Tibirita',25),
	(983,'Tib�',54),
	(984,'Tierralta',23),
	(985,'Timan�',41),
	(986,'Timbiqu�',19),
	(987,'Timb�o',19),
	(988,'Tinjac�',15),
	(989,'Tipacoque',15),
	(990,'Tiquisio (Puerto Rico)',13),
	(991,'Titirib�',5),
	(992,'Toca',15),
	(993,'Tocaima',25),
	(994,'Tocancip�',25),
	(995,'Togu�',15),
	(996,'Toledo',5),
	(997,'Toledo',54),
	(998,'Tol�',70),
	(999,'Tol� Viejo',70),
	(1000,'Tona',68),
	(1001,'Topag�',15),
	(1002,'Topaip�',25),
	(1003,'Torib�o',19),
	(1004,'Toro',76),
	(1005,'Tota',15),
	(1006,'Totor�',19),
	(1007,'Trinidad',85),
	(1008,'Trujillo',76),
	(1009,'Tubar�',8),
	(1010,'Tuch�n',23),
	(1011,'Tul�a',76),
	(1012,'Tumaco',52),
	(1013,'Tunja',15),
	(1014,'Tunungua',15),
	(1015,'Turbaco',13),
	(1016,'Turban�',13),
	(1017,'Turbo',5),
	(1018,'Turmequ�',15),
	(1019,'Tuta',15),
	(1020,'Tutas�',15),
	(1021,'T�mara',85),
	(1022,'T�mesis',5),
	(1023,'T�querres',52),
	(1024,'Ubal�',25),
	(1025,'Ubaque',25),
	(1026,'Ubat�',25),
	(1027,'Ulloa',76),
	(1028,'Une',25),
	(1029,'Ungu�a',27),
	(1030,'Uni�n Panamericana (�NIMAS)',27),
	(1031,'Uramita',5),
	(1032,'Uribe',50),
	(1033,'Uribia',44),
	(1034,'Urrao',5),
	(1035,'Urumita',44),
	(1036,'Usiacuri',8),
	(1037,'Valdivia',5),
	(1038,'Valencia',23),
	(1039,'Valle de San Jos�',68),
	(1040,'Valle de San Juan',73),
	(1041,'Valle del Guamuez',86),
	(1042,'Valledupar',20),
	(1043,'Valparaiso',5),
	(1044,'Valparaiso',18),
	(1045,'Vegach�',5),
	(1046,'Venadillo',73),
	(1047,'Venecia',5),
	(1048,'Venecia (Ospina P�rez)',25),
	(1049,'Ventaquemada',15),
	(1050,'Vergara',25),
	(1051,'Versalles',76),
	(1052,'Vetas',68),
	(1053,'Viani',25),
	(1054,'Vig�a del Fuerte',5),
	(1055,'Vijes',76),
	(1056,'Villa Caro',54),
	(1057,'Villa Rica',19),
	(1058,'Villa de Leiva',15),
	(1059,'Villa del Rosario',54),
	(1060,'Villagarz�n',86),
	(1061,'Villag�mez',25),
	(1062,'Villahermosa',73),
	(1063,'Villamar�a',17),
	(1064,'Villanueva',13),
	(1065,'Villanueva',44),
	(1066,'Villanueva',68),
	(1067,'Villanueva',85),
	(1068,'Villapinz�n',25),
	(1069,'Villarrica',73),
	(1070,'Villavicencio',50),
	(1071,'Villavieja',41),
	(1072,'Villeta',25),
	(1073,'Viot�',25),
	(1074,'Viracach�',15),
	(1075,'Vista Hermosa',50),
	(1076,'Viterbo',17),
	(1077,'V�lez',68),
	(1078,'Yacop�',25),
	(1079,'Yacuanquer',52),
	(1080,'Yaguar�',41),
	(1081,'Yal�',5),
	(1082,'Yarumal',5),
	(1083,'Yolomb�',5),
	(1084,'Yond� (Casabe)',5),
	(1085,'Yopal',85),
	(1086,'Yotoco',76),
	(1087,'Yumbo',76),
	(1088,'Zambrano',13),
	(1089,'Zapatoca',68),
	(1090,'Zapay�n (PUNTA DE PIEDRAS)',47),
	(1091,'Zaragoza',5),
	(1092,'Zarzal',76),
	(1093,'Zetaquir�',15),
	(1094,'Zipac�n',25),
	(1095,'Zipaquir�',25),
	(1096,'Zona Bananera (PRADO - SEVILLA)',47),
	(1097,'�brego',54),
	(1098,'�quira',41),
	(1099,'�mbita',15),
	(1100,'�tica',25);
	*/