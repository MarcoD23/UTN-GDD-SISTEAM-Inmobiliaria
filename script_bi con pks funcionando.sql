USE [GD2C2023]
GO

-------------------------------------------------------------------------------------------------
--------------------------------------------SCHEMA-----------------------------------------------
-------------------------------------------------------------------------------------------------

CREATE SCHEMA BI_SYSTEAM
GO

-------------------------------------------------------------------------------------------------
----------------------------------------CREATE TABLES--------------------------------------------
-------------------------------------------------------------------------------------------------
CREATE TABLE BI_SYSTEAM.BI_TIEMPO (
    ID_TIEMPO DECIMAL(18,0) IDENTITY(1,1) PRIMARY KEY,
    TIEMPO_ANIO INT,
    TIEMPO_CUATRIMESTRE INT,
    TIEMPO_MES INT
);

CREATE TABLE BI_SYSTEAM.BI_UBICACION (
    ID_UBICACION DECIMAL(18,0) IDENTITY(1,1) PRIMARY KEY,
    PROVINCIA NVARCHAR(255),
    LOCALIDAD NVARCHAR(255),
    BARRIO NVARCHAR(255)
);

CREATE TABLE BI_SYSTEAM.BI_SUCURSAL (
    ID_SUCURSAL DECIMAL(18,0) PRIMARY KEY IDENTITY,
    SUCURSAL_NOMBRE NVARCHAR(255)
	,SUCURSAL_TELEFONO VARCHAR(100),
	SUCURSAL_DIRECCION VARCHAR(100)
);

CREATE TABLE BI_SYSTEAM.BI_RANGO_ETARIO (
    ID_RANGO_ETARIO DECIMAL(18,0) IDENTITY(1,1) PRIMARY KEY,
    RANGO_ETARIO_DESCRIPCION NVARCHAR(255)
);

CREATE TABLE BI_SYSTEAM.BI_TIPO_INMUEBLE (
    ID_TIPO_INMUEBLE DECIMAL(18,0) IDENTITY(1,1) PRIMARY KEY,
    TIPO_INMUEBLE_DESCRIPCION NVARCHAR(255)
);

CREATE TABLE BI_SYSTEAM.BI_AMBIENTES (
    ID_AMBIENTES DECIMAL(18,0) IDENTITY(1,1) PRIMARY KEY,
    AMBIENTES_DESCRIPCION NVARCHAR(255)
);

CREATE TABLE BI_SYSTEAM.BI_RANGO_M2 (
    ID_RANGO_M2 DECIMAL(18,0) IDENTITY(1,1) PRIMARY KEY,
    RANGO_M2_DESCRIPCION NVARCHAR(255)
);

CREATE TABLE BI_SYSTEAM.BI_TIPO_OPERACION (
    ID_TIPO_OPERACION DECIMAL(18,0) IDENTITY(1,1) PRIMARY KEY,
    TIPO_OPERACION_DESCRIPCION NVARCHAR(255)
);

CREATE TABLE BI_SYSTEAM.BI_TIPO_MONEDA (
    ID_TIPO_MONEDA DECIMAL(18,0) IDENTITY(1,1) PRIMARY KEY,
    TIPO_MONEDA_DESCRIPCION NVARCHAR(255)
);

CREATE TABLE BI_SYSTEAM.BI_ESTADO_ANUNCIO (
	ID_ESTADO_ANUNCIO DECIMAL(18,0) PRIMARY KEY IDENTITY,
	ESTADO_ANUNCIO_DESCRIPCION VARCHAR(100)
);


CREATE TABLE BI_SYSTEAM.BI_FACT_ANUNCIO (

	ID_TIEMPO_FECHA_PUBLICACION DECIMAL(18,0)   FOREIGN KEY REFERENCES BI_SYSTEAM.BI_TIEMPO,
    ID_TIEMPO_FECHA_FINALIZACION DECIMAL(18,0)  FOREIGN KEY REFERENCES BI_SYSTEAM.BI_TIEMPO,

	ID_UBICACION DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_UBICACION,
	ID_SUCURSAL DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_SUCURSAL,
	ID_TIPO_INMUEBLE DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_TIPO_INMUEBLE,
	ID_RANGO_ETARIO DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_RANGO_ETARIO,
	ID_AMBIENTES DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_AMBIENTES,
	ID_RANGO_M2 DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_RANGO_M2,
    ID_TIPO_OPERACION DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_TIPO_OPERACION,
	ID_ESTADO_ANUNCIO DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_ESTADO_ANUNCIO,
	ID_TIPO_MONEDA DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_TIPO_MONEDA
	
	
	,
	ANUNCIO_DIAS_PUBLICADO INT,
	ANUNCIO_PRECIO INT,
	SUMA_PRECIOS_ANUNCIOS INT,
	ANUNCIO_DIAS_PUBLICADO_SUMA INT,
	CANTIDAD_ANUNCIOS INT
	


		PRIMARY KEY(
	ID_SUCURSAL,
	ID_RANGO_ETARIO,
	ID_TIPO_INMUEBLE,
	ID_TIPO_OPERACION,
	ID_TIPO_MONEDA,
	ID_AMBIENTES,
	ID_RANGO_M2,
	ID_UBICACION,
	ID_TIEMPO_FECHA_PUBLICACION,
    ID_TIEMPO_FECHA_FINALIZACION,
	ID_ESTADO_ANUNCIO)
);

CREATE TABLE BI_SYSTEAM.BI_FACT_VENTA (
	ID_TIEMPO_FECHA DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_TIEMPO,
	ID_UBICACION DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_UBICACION,
	ID_SUCURSAL DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_SUCURSAL,
	ID_TIPO_INMUEBLE DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_TIPO_INMUEBLE,
	ID_AMBIENTES DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_AMBIENTES,
	ID_RANGO_M2 DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_RANGO_M2,
	ID_RANGO_ETARIO DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_RANGO_ETARIO,
	ID_TIPO_OPERACION DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_TIPO_OPERACION,
	ID_TIPO_MONEDA DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_TIPO_MONEDA
	
	
	,
    PRECIO_VENTA NUMERIC(18,0),
	COMISION DECIMAL(18, 2),
	CANT_VENTAS NUMERIC(18,0),
	PRECIO_PROMEDIO_M2 NUMERIC (18,0)
	
	PRIMARY KEY(
	ID_AMBIENTES,
	ID_TIPO_OPERACION,
	ID_TIEMPO_FECHA,
	ID_UBICACION,
	ID_TIPO_INMUEBLE,
	ID_TIPO_MONEDA,
	ID_SUCURSAL,
	ID_RANGO_ETARIO,
	ID_RANGO_M2
	)
);

CREATE TABLE BI_SYSTEAM.BI_FACT_ALQUILER (
	ID_TIEMPO DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_TIEMPO,
	ID_UBICACION DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_UBICACION,
	ID_RANGO_ETARIO_INQUILINO DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_RANGO_ETARIO,
	ID_RANGO_ETARIO_AGENTE DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_RANGO_ETARIO,
	ID_SUCURSAL DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_SUCURSAL,
	ID_TIPO_INMUEBLE DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_TIPO_INMUEBLE,
	ID_RANGO_M2 DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_RANGO_M2,
	ID_AMBIENTES DECIMAL(18,0) FOREIGN KEY REFERENCES BI_SYSTEAM.BI_AMBIENTES

	
	,ALQUILER_PRECIO NUMERIC(18, 2),
	ALQUILER_ESTADO NVARCHAR(255),
	ALQUILER_COMISION DECIMAL(18, 2),
	ALQUILER_CANT_ALQUILER NUMERIC(18, 2),
	ALQUILER_PAGO_ATRASADO NUMERIC(18, 2),
	ALQUILER_PAGO_EN_TERMINO NUMERIC(18, 2)
	

	
	PRIMARY KEY(
	ID_TIEMPO,
	ID_UBICACION,
	ID_RANGO_ETARIO_INQUILINO,
	ID_RANGO_ETARIO_AGENTE,
	ID_SUCURSAL,
	ID_TIPO_INMUEBLE,
	ID_RANGO_M2,
	ID_AMBIENTES
	)
);
GO

--- FUNCIONES -----
-------------------

CREATE FUNCTION BI_SYSTEAM.mes (@mes as INT) RETURNS VARCHAR(20) AS BEGIN
    RETURN CASE @mes
            WHEN 1 THEN 'Enero'
            WHEN 2 THEN 'Febrero'
            WHEN 3 THEN 'Marzo'
            WHEN 4 THEN 'Abril'
            WHEN 5 THEN 'Mayo'
            WHEN 6 THEN 'Junio'
            WHEN 7 THEN 'Julio'
            WHEN 8 THEN 'Agosto'
            WHEN 9 THEN 'Septiembre'
            WHEN 10 THEN 'Octubre'
            WHEN 11 THEN 'Noviembre'
            WHEN 12 THEN 'Diciembre'
            ELSE ''
            END
END
GO

CREATE FUNCTION BI_SYSTEAM.cuatrimestre(@fecha as DATE) RETURNS INT AS
BEGIN
    RETURN MONTH(@fecha) / 4 + 1
END
GO

CREATE FUNCTION BI_SYSTEAM.cuatrimestre_mes(@mes as INT) RETURNS INT AS
BEGIN
    RETURN CEILING(@mes/4.0)
END
GO


CREATE FUNCTION BI_SYSTEAM.calcular_a�o(@id NUMERIC(18,0))
RETURNS INTEGER
AS 
BEGIN
RETURN (
	SELECT TIEMPO_ANIO
	FROM BI_SYSTEAM.BI_tiempo T
	WHERE T.ID_TIEMPO = @id
	)
END
GO

CREATE FUNCTION BI_SYSTEAM.calcular_mes(@id NUMERIC(18,0))
RETURNS INTEGER
AS 
BEGIN
RETURN (
	SELECT TIEMPO_MES
	FROM BI_SYSTEAM.BI_tiempo T
	WHERE T.ID_TIEMPO = @id
	)
END
GO

CREATE FUNCTION BI_SYSTEAM.calcular_tiempo_id(@id NUMERIC(18,0))
RETURNS INTEGER
AS 
BEGIN
RETURN (
	SELECT TOP 1 id_tiempo 
	FROM BI_SYSTEAM.BI_tiempo T
	WHERE T.TIEMPO_ANIO = BI_SYSTEAM.calcular_a�o(@id) AND T.TIEMPO_MES = (BI_SYSTEAM.calcular_mes(@id)-1)
	)
END
GO



CREATE FUNCTION BI_SYSTEAM.calcular_tiempo_id2(@fecha DATE) 
RETURNS INTEGER
AS 
BEGIN
RETURN (
	SELECT TOP 1 id_tiempo 
	FROM BI_SYSTEAM.BI_TIEMPO T
	WHERE T.TIEMPO_ANIO = YEAR(@fecha) AND T.TIEMPO_MES = MONTH(@fecha))
END
GO


CREATE FUNCTION BI_SYSTEAM.FX_CALCULAR_RANGO_ETARIO_AGENTE(@AGENTE INT)
RETURNS INT
BEGIN
	DECLARE @FECHA_NACIMIENTO SMALLDATETIME
	DECLARE @EDAD INT
	DECLARE @ID_RANGO_ETARIO_EMPLEADO INT
	SET @FECHA_NACIMIENTO = (SELECT AGENTE_FECHA_NAC
							FROM SYSTEAM.AGENTE
							WHERE AGENTE_CODIGO = @AGENTE)
	SET @EDAD = YEAR(GETDATE()) - YEAR(@FECHA_NACIMIENTO)

	IF @EDAD < 25
		SET @ID_RANGO_ETARIO_EMPLEADO = 1
	ELSE IF @EDAD BETWEEN  25 AND 35
		SET @ID_RANGO_ETARIO_EMPLEADO = 2
	ELSE IF @EDAD BETWEEN 35 AND 50
		SET @ID_RANGO_ETARIO_EMPLEADO = 3
	ELSE IF @EDAD > 50
		SET @ID_RANGO_ETARIO_EMPLEADO = 4

RETURN @ID_RANGO_ETARIO_EMPLEADO
END
GO

CREATE FUNCTION BI_SYSTEAM.FX_CALCULAR_RANGO_ETARIO_INQUILINO(@INQUILINO INT)
RETURNS INT
BEGIN
	DECLARE @FECHA_NACIMIENTO SMALLDATETIME
	DECLARE @EDAD INT
	DECLARE @ID_RANGO_ETARIO_EMPLEADO INT
	SET @FECHA_NACIMIENTO = (SELECT INQUILINO_FECHA_NAC
							FROM SYSTEAM.INQUILINO
							WHERE INQUILINO_CODIGO = @INQUILINO)
	SET @EDAD = YEAR(GETDATE()) - YEAR(@FECHA_NACIMIENTO)

	IF @EDAD < 25
		SET @ID_RANGO_ETARIO_EMPLEADO = 1
	ELSE IF @EDAD BETWEEN  25 AND 35
		SET @ID_RANGO_ETARIO_EMPLEADO = 2
	ELSE IF @EDAD BETWEEN 35 AND 50
		SET @ID_RANGO_ETARIO_EMPLEADO = 3
	ELSE IF @EDAD > 50
		SET @ID_RANGO_ETARIO_EMPLEADO = 4

RETURN @ID_RANGO_ETARIO_EMPLEADO
END
GO



CREATE FUNCTION BI_SYSTEAM.FX_CALCULAR_RANGO_METROS(@INMUEBLE INT)
RETURNS INT
BEGIN
	DECLARE @SUPERFICIE numeric(18, 2)
	DECLARE @ID_RANGO_METROS INT

	SET @SUPERFICIE = (SELECT i.INMUEBLE_SUPERFICIETOTAL
					   FROM SYSTEAM.INMUEBLE i
					   WHERE i.INMUEBLE_CODIGO = @INMUEBLE)

	IF @SUPERFICIE < 35
		SET @ID_RANGO_METROS = 1
	ELSE IF @SUPERFICIE BETWEEN 35 AND 55
		SET @ID_RANGO_METROS = 2
	ELSE IF @SUPERFICIE BETWEEN 55 AND 75
		SET @ID_RANGO_METROS = 3
	ELSE IF @SUPERFICIE BETWEEN 75 AND 100
		SET @ID_RANGO_METROS = 4
	ELSE IF @SUPERFICIE > 100
		SET @ID_RANGO_METROS = 5

RETURN @ID_RANGO_METROS
END
GO


CREATE FUNCTION BI_SYSTEAM.rango_m2 (@m2 as NUMERIC(18,2)) RETURNS VARCHAR(10) AS BEGIN
IF @m2 < 35
	RETURN '< 35'
ELSE IF @m2 BETWEEN 35 AND 55
	RETURN '35 - 55'
ELSE IF @m2 BETWEEN 55 AND 75
	RETURN '55 - 75'
ELSE IF @m2 BETWEEN 75 AND 100
	RETURN '75 - 100'
ELSE IF @m2 > 100
	RETURN '> 100'
RETURN ''
END
GO

CREATE FUNCTION BI_SYSTEAM.calcular_rango_m2_id(@metros NUMERIC(18,2)) 
RETURNS INTEGER
AS BEGIN
RETURN (
	SELECT TOP 1 id_rango_m2 
	FROM BI_SYSTEAM.BI_RANGO_M2 rm2 
	WHERE rm2.RANGO_M2_DESCRIPCION = BI_SYSTEAM.rango_m2 (@metros))
END
GO


CREATE FUNCTION BI_SYSTEAM.calcular_ubicacion_id(@provincia VARCHAR(100), @localidad VARCHAR(100), @barrio VARCHAR(100))
RETURNS decimal(18,0)
AS 
BEGIN
DECLARE @id_ubicacion decimal(18,0)
SELECT 
	@id_ubicacion = U.ID_UBICACION 
FROM 
	BI_SYSTEAM.BI_UBICACION U
WHERE 
	U.PROVINCIA=@provincia AND U.LOCALIDAD=@localidad AND U.BARRIO=@barrio
RETURN 
	@id_ubicacion
END
GO

CREATE FUNCTION BI_SYSTEAM.calcular_sucursal_id(@direccion VARCHAR(100)) 
RETURNS INTEGER
AS 
BEGIN
RETURN (
	SELECT TOP 1 S.ID_SUCURSAL 
	FROM BI_SYSTEAM.BI_SUCURSAL S
	WHERE S.SUCURSAL_DIRECCION=@direccion)
END
GO

CREATE FUNCTION BI_SYSTEAM.calcular_tipo_inmueble_id(@tipo VARCHAR(100)) 
RETURNS INTEGER
AS 
BEGIN
RETURN (
	SELECT TOP 1 ti.ID_TIPO_INMUEBLE 
	FROM BI_SYSTEAM.BI_TIPO_INMUEBLE ti
	WHERE ti.TIPO_INMUEBLE_DESCRIPCION=@tipo)
END
GO

CREATE FUNCTION BI_SYSTEAM.calcular_ambiente_id(@detalle VARCHAR(100)) 
RETURNS INTEGER
AS 
BEGIN
	DECLARE @id_ambiente decimal(18,0)
	SELECT @id_ambiente =  amb.ID_AMBIENTES
	FROM BI_SYSTEAM.BI_AMBIENTES amb
	WHERE amb.AMBIENTES_DESCRIPCION=@detalle
	RETURN @id_ambiente
END
GO

CREATE FUNCTION BI_SYSTEAM.rango_etario (@fecha as DATE) RETURNS VARCHAR(10) AS BEGIN
    DECLARE @edad INT
    SET @edad = FLOOR(DATEDIFF(DAY,@fecha,GETDATE())/365.0)
    IF @edad < 25
        RETURN '< 25'
    ELSE IF @edad BETWEEN 25 AND 35
        RETURN '25 - 35'
    ELSE IF @edad BETWEEN 35 AND 50
        RETURN '35 - 50'
    ELSE IF @edad > 50
        RETURN '> 50'
    RETURN ''
END
GO

CREATE FUNCTION BI_SYSTEAM.calcular_rango_etario_id(@fecha DATE) RETURNS INTEGER
AS BEGIN
RETURN (
	SELECT TOP 1 id_rango_etario  
	FROM BI_SYSTEAM.BI_RANGO_ETARIO re
	WHERE re.RANGO_ETARIO_DESCRIPCION= BI_SYSTEAM.rango_etario(@fecha))
END
GO

CREATE FUNCTION BI_SYSTEAM.calcular_tipo_operacion_id(@detalle VARCHAR(100)) 
RETURNS INTEGER
AS 
BEGIN
RETURN (
	SELECT TOP 1 tiop.ID_TIPO_OPERACION
	FROM BI_SYSTEAM.BI_TIPO_OPERACION tiop
	WHERE tiop.TIPO_OPERACION_DESCRIPCION=@detalle)
END
GO

CREATE FUNCTION BI_SYSTEAM.calcular_tipo_moneda_id(@detalle VARCHAR(100)) 
RETURNS INTEGER
AS 
BEGIN
RETURN (
	SELECT TOP 1 tm.ID_TIPO_MONEDA 
	FROM BI_SYSTEAM.BI_TIPO_MONEDA tm
	WHERE tm.TIPO_MONEDA_DESCRIPCION=@detalle)
END
GO


CREATE FUNCTION BI_SYSTEAM.calcular_tiempo_anterior(@tiempo_id DECIMAL(18,0)) RETURNS DECIMAL(18,0)
AS BEGIN
RETURN (SELECT TOP 1 DT.id_tiempo FROM BI_SYSTEAM.BI_TIEMPO DT
		WHERE (DT.TIEMPO_ANIO = (SELECT TIEMPO_ANIO FROM BI_SYSTEAM.BI_TIEMPO WHERE id_tiempo = @tiempo_id)
		AND DT.TIEMPO_MES = (SELECT TIEMPO_MES FROM BI_SYSTEAM.BI_TIEMPO WHERE id_tiempo = @tiempo_id) - 1)
		OR (DT.TIEMPO_ANIO = (SELECT TIEMPO_ANIO FROM BI_SYSTEAM.BI_TIEMPO WHERE id_tiempo = @tiempo_id) -1
		              AND DT.TIEMPO_MES = 12)
ORDER BY DT.TIEMPO_ANIO DESC, DT.TIEMPO_MES DESC)
END
GO

CREATE FUNCTION BI_SYSTEAM.calcular_estado_anuncio_id(@detalle VARCHAR(100)) 
RETURNS INTEGER
AS 
BEGIN
RETURN (
	SELECT TOP 1 esta.ID_ESTADO_ANUNCIO 
	FROM BI_SYSTEAM.BI_ESTADO_ANUNCIO esta
	WHERE esta.ESTADO_ANUNCIO_DESCRIPCION=@detalle)
END
GO



-------------------
--- PROCEDURES ----
-------------------


--MIGRACION DE BI_TIEMPO
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_TIEMPO AS
BEGIN
	INSERT INTO BI_SYSTEAM.BI_TIEMPO(
		TIEMPO_ANIO,
		TIEMPO_CUATRIMESTRE, 
		TIEMPO_MES)
	SELECT
		A�o,
		Cuatrimestre,
		Mes
	FROM
	(	SELECT
		YEAR(fecha) AS A�o,
		DATEPART(QUARTER, fecha) AS Cuatrimestre,
		MONTH(fecha) AS Mes
		FROM
		(	SELECT ANUNCIO_FECHA_PUBLICACION AS fecha FROM SYSTEAM.ANUNCIO UNION ALL
			SELECT ANUNCIO_FECHA_FINALIZACION FROM SYSTEAM.ANUNCIO UNION ALL
			SELECT VENTA_FECHA FROM SYSTEAM.Venta UNION ALL
			SELECT ALQUILER_FECHA_INICIO FROM SYSTEAM.Alquiler UNION ALL
			SELECT ALQUILER_FECHA_FIN  FROM SYSTEAM.Alquiler UNION ALL
			SELECT PAGO_ALQUILER_FECHA FROM SYSTEAM.Pago_Alquiler UNION ALL
			SELECT PAGO_ALQUILER_FECHA_VENCIMIENTO FROM SYSTEAM.Pago_Alquiler UNION ALL
			SELECT PAGO_ALQUILER_FECHA_INI FROM SYSTEAM.Pago_Alquiler UNION ALL
			SELECT PAGO_ALQUILER_FECHA_FIN FROM SYSTEAM.Pago_Alquiler
		) AS fechas
	) AS resultado
	GROUP BY
	A�o,
	Cuatrimestre,
	Mes
	ORDER BY
	A�o,
	Mes;

END
GO



--MIGRACION DE BI_UBICACION
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_UBICACION
AS
BEGIN
	INSERT INTO BI_SYSTEAM.BI_UBICACION(
		provincia,
		localidad,
		barrio
	)
	SELECT 
		p.PROVINCIA_NOMBRE,
		l.LOCALIDAD_NOMBRE,
		b.BARRIO_NOMBRE
	FROM SYSTEAM.BARRIO b
		JOIN SYSTEAM.LOCALIDAD l ON l.LOCALIDAD_CODIGO  = b.LOCALIDAD_CODIGO 
		JOIN SYSTEAM.PROVINCIA p ON p.PROVINCIA_CODIGO  = l.PROVINCIA_CODIGO
END
GO

--MIGRACION DE BI_TIPO_OPERACION
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_TIPO_OPERACION
AS
BEGIN
	INSERT INTO BI_SYSTEAM.BI_TIPO_OPERACION(
		TIPO_OPERACION_DESCRIPCION
	)
	SELECT DISTINCT
		TIPO_ANUNCIO_NOMBRE
	FROM SYSTEAM.TIPO_ANUNCIO
END
GO

--MIGRACION DE BI_AMBIENTES
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_AMBIENTES
AS
BEGIN
	INSERT INTO BI_SYSTEAM.BI_AMBIENTES(
		AMBIENTES_DESCRIPCION
	)
	SELECT DISTINCT
		INMUEBLE_CANT_AMBIENTES_DETALLE
	FROM SYSTEAM.INMUEBLE_CANT_AMBIENTES
END
GO

--MIGRACION DE BI_SUCURSAL
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_SUCURSAL
AS
BEGIN
	INSERT INTO BI_SYSTEAM.BI_SUCURSAL(
		SUCURSAL_NOMBRE,
		SUCURSAL_TELEFONO,
		SUCURSAL_DIRECCION
	)
	SELECT DISTINCT
		SUCURSAL_NOMBRE,
		SUCURSAL_TELEFONO,
		SUCURSAL_DIRECCION
	FROM SYSTEAM.SUCURSAL
END
GO

--MIGRACION DE BI_TIPO_MONEDA
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_TIPO_MONEDA
AS
BEGIN
    INSERT INTO BI_SYSTEAM.BI_TIPO_MONEDA (
		TIPO_MONEDA_DESCRIPCION
	)
    SELECT DISTINCT(
		MONEDA_NOMBRE
	)
    FROM SYSTEAM.MONEDA sm
END
GO

--MIGRACION DE BI_TIPO_INMUEBLE
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_TIPO_INMUEBLE
AS
BEGIN

    INSERT INTO BI_SYSTEAM.BI_TIPO_INMUEBLE (
		TIPO_INMUEBLE_DESCRIPCION
	)
    SELECT DISTINCT(
		INMUEBLE_TIPO_DETALLE
	)
    FROM SYSTEAM.INMUEBLE_TIPO sit
END
GO


--MIGRACION DE BI_RANGO_M2

CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_RANGO_M2
AS
BEGIN

	INSERT INTO BI_SYSTEAM.BI_RANGO_M2(RANGO_M2_DESCRIPCION)
		(SELECT '< 35' rango UNION
		SELECT '35 - 55' rango UNION
		SELECT '55 - 75' rango UNION
		SELECT '75 - 100' rango UNION
		SELECT '> 100' rango)

END;
GO



--MIGRACION DE BI_RANGO_ETARIO
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_RANGO_ETARIO
AS
BEGIN
	INSERT INTO BI_SYSTEAM.BI_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
			(SELECT '< 25' rango UNION
			SELECT '25 - 35' rango UNION
			SELECT '35 - 50' rango UNION
			SELECT '> 50' rango)
END;
GO

--MIGRACION DE BI_ESTADO_ANUNCIO
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_ESTADO_ANUNCIO
AS
BEGIN
	INSERT INTO BI_SYSTEAM.BI_ESTADO_ANUNCIO(
		ESTADO_ANUNCIO_DESCRIPCION)
	SELECT DISTINCT
		B.ANUNCIO_ESTADO
	FROM SYSTEAM.ANUNCIO b
END
GO



--MIGRACION DE BI_FACT_ANUNCIO
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_FACT_ANUNCIO
AS
BEGIN
INSERT INTO BI_SYSTEAM.BI_FACT_ANUNCIO(
	ID_TIPO_INMUEBLE,
	ID_RANGO_M2,
	ID_TIPO_OPERACION,
	ID_AMBIENTES,
	ID_SUCURSAL,
	ID_TIPO_MONEDA,
	ID_UBICACION,
	ID_RANGO_ETARIO,
	ID_TIEMPO_FECHA_PUBLICACION,
    ID_TIEMPO_FECHA_FINALIZACION,
	ID_ESTADO_ANUNCIO

	
	,ANUNCIO_PRECIO,
	SUMA_PRECIOS_ANUNCIOS,
	ANUNCIO_DIAS_PUBLICADO,
	ANUNCIO_DIAS_PUBLICADO_SUMA,
	CANTIDAD_ANUNCIOS
	
)
SELECT DISTINCT

	BI_SYSTEAM.calcular_tipo_inmueble_id(it.INMUEBLE_TIPO_DETALLE),
	BI_SYSTEAM.calcular_rango_m2_id(i.INMUEBLE_SUPERFICIETOTAL),
	BI_SYSTEAM.calcular_tipo_operacion_id(ta.TIPO_ANUNCIO_NOMBRE),
	BI_SYSTEAM.calcular_ambiente_id(ica.INMUEBLE_CANT_AMBIENTES_DETALLE),
	BI_SYSTEAM.calcular_sucursal_id(su.SUCURSAL_DIRECCION),
	BI_SYSTEAM.calcular_tipo_moneda_id(m.MONEDA_NOMBRE),
	BI_SYSTEAM.calcular_ubicacion_id(p.PROVINCIA_NOMBRE,l.LOCALIDAD_NOMBRE,bb.BARRIO_NOMBRE),
	BI_SYSTEAM.calcular_rango_etario_id(ag.AGENTE_FECHA_NAC),
	BI_SYSTEAM.calcular_tiempo_id2(a.ANUNCIO_FECHA_PUBLICACION),
	BI_SYSTEAM.calcular_tiempo_id2(a.ANUNCIO_FECHA_FINALIZACION),
	BI_SYSTEAM.calcular_estado_anuncio_id(a.ANUNCIO_ESTADO)

	
	,
	ISNULL(AVG(a.ANUNCIO_PRECIO_PUBLICADO),0), -- PRECIO PROMEDIO
	ISNULL(SUM(a.ANUNCIO_PRECIO_PUBLICADO),0), -- SUMA PRECIOS ANUNCIOS
	ISNULL(AVG(DATEDIFF(DAY, a.ANUNCIO_FECHA_PUBLICACION, a.ANUNCIO_FECHA_FINALIZACION )),0),-- DIAS PROMEDIO PUBLICADO
	ISNULL(SUM(DATEDIFF(DAY, a.ANUNCIO_FECHA_PUBLICACION, a.ANUNCIO_FECHA_FINALIZACION )),0), -- DIAS PUBLICADO SUMA
	COUNT(*)
	

FROM SYSTEAM.ANUNCIO a
	JOIN SYSTEAM.INMUEBLE i ON i.INMUEBLE_CODIGO = a.INMUEBLE_CODIGO
	JOIN SYSTEAM.INMUEBLE_TIPO it ON it.INMUEBLE_TIPO_CODIGO  = i.INMUEBLE_TIPO_CODIGO

	JOIN SYSTEAM.TIPO_ANUNCIO ta ON ta.TIPO_ANUNCIO_CODIGO = a.TIPO_ANUNCIO_CODIGO
	
	JOIN SYSTEAM.INMUEBLE_CANT_AMBIENTES ica ON ica.INMUEBLE_CANT_AMBIENTES_CODIGO = i.INMUEBLE_CANT_AMBIENTES_CODIGO

	JOIN SYSTEAM.AGENTE ag ON ag.AGENTE_CODIGO = a.AGENTE_CODIGO
	JOIN SYSTEAM.SUCURSAL su ON su.SUCURSAL_CODIGO = ag.SUCURSAL_CODIGO 

	JOIN SYSTEAM.BARRIO bb ON bb.BARRIO_CODIGO =  i.BARRIO_CODIGO
	JOIN SYSTEAM.LOCALIDAD l ON l.LOCALIDAD_CODIGO =  bb.LOCALIDAD_CODIGO
	JOIN SYSTEAM.PROVINCIA p ON p.PROVINCIA_CODIGO =  l.PROVINCIA_CODIGO

	JOIN SYSTEAM.MONEDA m ON m.MONEDA_CODIGO = a.MONEDA_CODIGO

GROUP BY
	BI_SYSTEAM.calcular_tipo_inmueble_id(it.INMUEBLE_TIPO_DETALLE),
	BI_SYSTEAM.calcular_rango_m2_id(i.INMUEBLE_SUPERFICIETOTAL),
	BI_SYSTEAM.calcular_tipo_operacion_id(ta.TIPO_ANUNCIO_NOMBRE),
	BI_SYSTEAM.calcular_ambiente_id(ica.INMUEBLE_CANT_AMBIENTES_DETALLE),
	BI_SYSTEAM.calcular_sucursal_id(su.SUCURSAL_DIRECCION),
	BI_SYSTEAM.calcular_ubicacion_id(p.PROVINCIA_NOMBRE,l.LOCALIDAD_NOMBRE,bb.BARRIO_NOMBRE),
	BI_SYSTEAM.calcular_rango_etario_id(ag.AGENTE_FECHA_NAC),
	BI_SYSTEAM.calcular_tipo_moneda_id(m.MONEDA_NOMBRE),
	BI_SYSTEAM.calcular_tiempo_id2(a.ANUNCIO_FECHA_PUBLICACION),
	BI_SYSTEAM.calcular_tiempo_id2(a.ANUNCIO_FECHA_FINALIZACION),
	BI_SYSTEAM.calcular_estado_anuncio_id(a.ANUNCIO_ESTADO)

END 
GO


--MIGRACION DE BI_FACT_ALQUILER
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_FACT_ALQUILER
AS
BEGIN
INSERT INTO BI_SYSTEAM.BI_FACT_ALQUILER(

			ID_TIEMPO,
			ID_UBICACION,
			ID_RANGO_ETARIO_INQUILINO,
			ID_RANGO_ETARIO_AGENTE,
			ID_SUCURSAL,
			ID_RANGO_M2,
			ID_AMBIENTES,
			ID_TIPO_INMUEBLE

			
			,
			ALQUILER_PRECIO,
			ALQUILER_COMISION,
			ALQUILER_CANT_ALQUILER,
			ALQUILER_PAGO_ATRASADO,
			ALQUILER_PAGO_EN_TERMINO
			
)
SELECT DISTINCT
	 BI_SYSTEAM.calcular_tiempo_id2(a.ALQUILER_FECHA_INICIO),
	 BI_SYSTEAM.calcular_ubicacion_id(p.PROVINCIA_NOMBRE,l.LOCALIDAD_NOMBRE,bb.BARRIO_NOMBRE),
	 BI_SYSTEAM.calcular_rango_etario_id(inq.INQUILINO_FECHA_NAC),
	 BI_SYSTEAM.calcular_rango_etario_id(ag.AGENTE_FECHA_NAC),
	 BI_SYSTEAM.calcular_sucursal_id(su.SUCURSAL_DIRECCION),
	 BI_SYSTEAM.calcular_rango_m2_id(i.INMUEBLE_SUPERFICIETOTAL),
	 BI_SYSTEAM.calcular_ambiente_id(ica.INMUEBLE_CANT_AMBIENTES_DETALLE),
	 BI_SYSTEAM.calcular_tipo_inmueble_id(it.INMUEBLE_TIPO_DETALLE)
	

	
	,sum(isnull(pa.PAGO_ALQUILER_IMPORTE,0)) AS SUMAPAGOALQUILER,
	sum(isnull(a.ALQUILER_COMISION,0)) AS SUMACOMICIONES,
	COUNT(*),                       -- CANT ALQUILERS


	sum(CASE WHEN pa.PAGO_ALQUILER_FECHA >= pa.PAGO_ALQUILER_FECHA_VENCIMIENTO THEN 1 ELSE 0 END), --PAGO ATRASADO
	sum(CASE WHEN pa.PAGO_ALQUILER_FECHA < pa.PAGO_ALQUILER_FECHA_VENCIMIENTO THEN 1 ELSE 0 END)  --PAGO EN TERMINO
	

	
FROM SYSTEAM.ALQUILER a

JOIN SYSTEAM.ANUNCIO an ON an.ANUNCIO_CODIGO = a.ANUNCIO_CODIGO

JOIN SYSTEAM.INMUEBLE i ON i.INMUEBLE_CODIGO = an.INMUEBLE_CODIGO
JOIN SYSTEAM.BARRIO bb ON bb.BARRIO_CODIGO =  i.BARRIO_CODIGO
JOIN SYSTEAM.LOCALIDAD l ON l.LOCALIDAD_CODIGO =  bb.LOCALIDAD_CODIGO
JOIN SYSTEAM.PROVINCIA p ON p.PROVINCIA_CODIGO =  l.PROVINCIA_CODIGO

JOIN SYSTEAM.AGENTE ag ON ag.AGENTE_CODIGO = an.AGENTE_CODIGO
JOIN SYSTEAM.SUCURSAL su ON su.SUCURSAL_CODIGO =  ag.SUCURSAL_CODIGO

JOIN SYSTEAM.INMUEBLE_TIPO it ON it.INMUEBLE_TIPO_CODIGO  = i.INMUEBLE_TIPO_CODIGO

JOIN SYSTEAM.INMUEBLE_CANT_AMBIENTES ica ON ica.INMUEBLE_CANT_AMBIENTES_CODIGO = i.INMUEBLE_CANT_AMBIENTES_CODIGO

JOIN SYSTEAM.INQUILINO inq ON inq.INQUILINO_CODIGO = a.INQUILINO_CODIGO

JOIN SYSTEAM.TIPO_ANUNCIO ta ON ta.TIPO_ANUNCIO_CODIGO = an.TIPO_ANUNCIO_CODIGO
JOIN SYSTEAM.PAGO_ALQUILER pa ON pa.ALQUILER_CODIGO = a.ALQUILER_CODIGO


GROUP BY 
	BI_SYSTEAM.calcular_tiempo_id2(a.ALQUILER_FECHA_INICIO),
	 BI_SYSTEAM.calcular_ubicacion_id(p.PROVINCIA_NOMBRE,l.LOCALIDAD_NOMBRE,bb.BARRIO_NOMBRE),
	 BI_SYSTEAM.calcular_sucursal_id(su.SUCURSAL_DIRECCION),
	 BI_SYSTEAM.calcular_tipo_inmueble_id(it.INMUEBLE_TIPO_DETALLE),
	 BI_SYSTEAM.calcular_ambiente_id(ica.INMUEBLE_CANT_AMBIENTES_DETALLE),
	 BI_SYSTEAM.calcular_rango_m2_id(i.INMUEBLE_SUPERFICIETOTAL),
	 BI_SYSTEAM.calcular_rango_etario_id(ag.AGENTE_FECHA_NAC),
	 BI_SYSTEAM.calcular_rango_etario_id(inq.INQUILINO_FECHA_NAC)
	--,pa.PAGO_ALQUILER_FECHA,
	-- pa.PAGO_ALQUILER_FECHA_VENCIMIENTO

END
GO

--MIGRACION DE BI_FACT_VENTA
CREATE PROCEDURE BI_SYSTEAM.CARGAR_BI_FACT_VENTA
AS
BEGIN

INSERT INTO BI_SYSTEAM.BI_FACT_VENTA(
    ID_AMBIENTES,      
    ID_TIPO_OPERACION, 
    ID_TIPO_INMUEBLE,
    ID_RANGO_M2,
    ID_TIPO_MONEDA,
    ID_SUCURSAL,		
	ID_UBICACION,
	ID_RANGO_ETARIO,
	ID_TIEMPO_FECHA 
	
	,PRECIO_VENTA,
    COMISION,
	CANT_VENTAS,
	PRECIO_PROMEDIO_M2
	
    
) 
SELECT DISTINCT
	BI_SYSTEAM.calcular_ambiente_id(ica.INMUEBLE_CANT_AMBIENTES_DETALLE),
	BI_SYSTEAM.calcular_tipo_operacion_id(ta.TIPO_ANUNCIO_NOMBRE),
	BI_SYSTEAM.calcular_tipo_inmueble_id(it.INMUEBLE_TIPO_DETALLE),
	BI_SYSTEAM.calcular_rango_m2_id(i.INMUEBLE_SUPERFICIETOTAL),
	BI_SYSTEAM.calcular_tipo_moneda_id(m.MONEDA_NOMBRE),
	BI_SYSTEAM.calcular_sucursal_id(su.SUCURSAL_DIRECCION),
	BI_SYSTEAM.calcular_ubicacion_id(p.PROVINCIA_NOMBRE,l.LOCALIDAD_NOMBRE,bb.BARRIO_NOMBRE),

	BI_SYSTEAM.calcular_rango_etario_id(ag.AGENTE_FECHA_NAC),
	BI_SYSTEAM.calcular_tiempo_id2(a.ANUNCIO_FECHA_PUBLICACION)

	
	,SUM(v.VENTA_PRECIO_VENTA)										AS [Suma Ventas],
	SUM(isnull(v.VENTA_COMISION,0))									AS [Suma Comisiones Ventas],
	COUNT(*)														AS [Cantidad de Ventas], 
	(SUM(v.VENTA_PRECIO_VENTA) / SUM(I.INMUEBLE_SUPERFICIETOTAL))	AS [Precio por M2]
	
	

FROM SYSTEAM.VENTA v 
	JOIN SYSTEAM.ANUNCIO a ON v.ANUNCIO_CODIGO = a.ANUNCIO_CODIGO
	JOIN SYSTEAM.INMUEBLE i ON i.INMUEBLE_CODIGO = a.INMUEBLE_CODIGO
	JOIN SYSTEAM.INMUEBLE_CANT_AMBIENTES ica ON ica.INMUEBLE_CANT_AMBIENTES_CODIGO = i.INMUEBLE_CANT_AMBIENTES_CODIGO

	JOIN SYSTEAM.TIPO_ANUNCIO ta ON ta.TIPO_ANUNCIO_CODIGO = a.TIPO_ANUNCIO_CODIGO

	JOIN SYSTEAM.INMUEBLE_TIPO it ON it.INMUEBLE_TIPO_CODIGO  = i.INMUEBLE_TIPO_CODIGO

	JOIN SYSTEAM.MONEDA m ON m.MONEDA_CODIGO = a.MONEDA_CODIGO

	JOIN SYSTEAM.AGENTE ag ON ag.AGENTE_CODIGO = a.AGENTE_CODIGO
	JOIN SYSTEAM.SUCURSAL su ON su.SUCURSAL_CODIGO = ag.SUCURSAL_CODIGO 

	JOIN SYSTEAM.BARRIO bb ON bb.BARRIO_CODIGO =  i.BARRIO_CODIGO
	JOIN SYSTEAM.LOCALIDAD l ON l.LOCALIDAD_CODIGO =  bb.LOCALIDAD_CODIGO
	JOIN SYSTEAM.PROVINCIA p ON p.PROVINCIA_CODIGO =  l.PROVINCIA_CODIGO

GROUP BY 
	BI_SYSTEAM.calcular_ambiente_id(ica.INMUEBLE_CANT_AMBIENTES_DETALLE),
	BI_SYSTEAM.calcular_tipo_operacion_id(ta.TIPO_ANUNCIO_NOMBRE),
	BI_SYSTEAM.calcular_tipo_inmueble_id(it.INMUEBLE_TIPO_DETALLE),
	BI_SYSTEAM.calcular_rango_m2_id(i.INMUEBLE_SUPERFICIETOTAL),
	BI_SYSTEAM.calcular_tipo_moneda_id(m.MONEDA_NOMBRE),
	BI_SYSTEAM.calcular_sucursal_id(su.SUCURSAL_DIRECCION),
	BI_SYSTEAM.calcular_ubicacion_id(p.PROVINCIA_NOMBRE,l.LOCALIDAD_NOMBRE,bb.BARRIO_NOMBRE),
	BI_SYSTEAM.calcular_rango_etario_id(ag.AGENTE_FECHA_NAC),
	BI_SYSTEAM.calcular_tiempo_id2(a.ANUNCIO_FECHA_PUBLICACION),
	BI_SYSTEAM.calcular_estado_anuncio_id(a.ANUNCIO_ESTADO)

	
END
GO


EXEC BI_SYSTEAM.CARGAR_BI_TIEMPO
EXEC BI_SYSTEAM.CARGAR_BI_TIPO_MONEDA
EXEC BI_SYSTEAM.CARGAR_BI_TIPO_INMUEBLE
EXEC BI_SYSTEAM.CARGAR_BI_RANGO_M2
EXEC BI_SYSTEAM.CARGAR_BI_RANGO_ETARIO
EXEC BI_SYSTEAM.CARGAR_BI_UBICACION
EXEC BI_SYSTEAM.CARGAR_BI_SUCURSAL
EXEC BI_SYSTEAM.CARGAR_BI_TIPO_OPERACION
EXEC BI_SYSTEAM.CARGAR_BI_AMBIENTES
EXEC BI_SYSTEAM.CARGAR_BI_ESTADO_ANUNCIO

EXEC BI_SYSTEAM.CARGAR_BI_FACT_ANUNCIO
EXEC BI_SYSTEAM.CARGAR_BI_FACT_ALQUILER
EXEC BI_SYSTEAM.CARGAR_BI_FACT_VENTA
GO


-------------------
--- VIEWS ----
-------------------

--VISTA 1:


CREATE VIEW BI_SYSTEAM.VISTA_PROMEDIO_DIAS_PUBLICADOS_ANUNCIOS AS 
	SELECT 
		t1.TIEMPO_ANIO												AS [A�o publicacion anuncio],
		t1.TIEMPO_CUATRIMESTRE										AS [Cuatrimestre publicacion anuncio],
		tipoOp.TIPO_OPERACION_DESCRIPCION							AS [Tipo Operacion],
		ambi.AMBIENTES_DESCRIPCION									AS [Ambientes],
		bar.BARRIO													AS [Barrio donde se publico el anuncio],
		SUM(ANUNCIO_DIAS_PUBLICADO * CANTIDAD_ANUNCIOS) / SUM(CANTIDAD_ANUNCIOS)	AS [Duracion promedio en dias]

	FROM
		BI_SYSTEAM.BI_FACT_ANUNCIO a
		JOIN  BI_SYSTEAM.BI_UBICACION bar ON bar.ID_UBICACION = a.ID_UBICACION
		JOIN  BI_SYSTEAM.BI_TIPO_OPERACION tipoOp ON a.ID_TIPO_OPERACION = tipoOp.ID_TIPO_OPERACION
		JOIN  BI_SYSTEAM.BI_AMBIENTES ambi ON a.ID_AMBIENTES= ambi.ID_AMBIENTES
		JOIN  BI_SYSTEAM.BI_TIEMPO t1 ON a.ID_TIEMPO_FECHA_PUBLICACION= t1.ID_TIEMPO
	GROUP BY
		t1.TIEMPO_ANIO,
		t1.TIEMPO_CUATRIMESTRE,
		bar.BARRIO,
		ambi.AMBIENTES_DESCRIPCION,
		tipoOp.TIPO_OPERACION_DESCRIPCION
GO


/*
CREATE VIEW BI_SYSTEAM.VISTA_PROMEDIO_DIAS_PUBLICADOS_ANUNCIOS AS 
	SELECT 
		t1.TIEMPO_ANIO												AS [A�o publicacion anuncio],
		t1.TIEMPO_CUATRIMESTRE										AS [Cuatrimestre publicacion anuncio],
		tipoOp.TIPO_OPERACION_DESCRIPCION							AS [Tipo Operacion],
		ambi.AMBIENTES_DESCRIPCION									AS [Ambientes],
		bar.BARRIO													AS [Barrio donde se publico el anuncio],
		SUM(ANUNCIO_DIAS_PUBLICADO_SUMA) / SUM(CANTIDAD_ANUNCIOS)	AS [Duracion promedio en dias]

	FROM
		BI_SYSTEAM.BI_FACT_ANUNCIO a
		JOIN  BI_SYSTEAM.BI_UBICACION bar ON bar.ID_UBICACION = a.ID_UBICACION
		JOIN  BI_SYSTEAM.BI_TIPO_OPERACION tipoOp ON a.ID_TIPO_OPERACION = tipoOp.ID_TIPO_OPERACION
		JOIN  BI_SYSTEAM.BI_AMBIENTES ambi ON a.ID_AMBIENTES= ambi.ID_AMBIENTES
		JOIN  BI_SYSTEAM.BI_TIEMPO t1 ON a.ID_TIEMPO_FECHA_PUBLICACION= t1.ID_TIEMPO
	GROUP BY
		t1.TIEMPO_ANIO,
		t1.TIEMPO_CUATRIMESTRE,
		bar.BARRIO,
		ambi.AMBIENTES_DESCRIPCION,
		tipoOp.TIPO_OPERACION_DESCRIPCION
GO
*/



--VISTA 2:
CREATE VIEW BI_SYSTEAM.VISTA_PROMEDIO_ANUNCIOS_INMUEBLES AS
	SELECT 
		t1.TIEMPO_ANIO											AS [A�o publicacion],
		t1.TIEMPO_CUATRIMESTRE									AS [Cuatrimestre publicacion],
		tipoOp.TIPO_OPERACION_DESCRIPCION						AS [Tipo Operacion],
		tipoAmb.TIPO_INMUEBLE_DESCRIPCION						AS [Tipo Inmueble],
		tipoMon.TIPO_MONEDA_DESCRIPCION							AS [Moneda Detalle],
		SUM(a.SUMA_PRECIOS_ANUNCIOS) / SUM(a.CANTIDAD_ANUNCIOS) AS [Precio promedio],
		rM2.RANGO_M2_DESCRIPCION								AS [Rango M2] 
	FROM
		BI_SYSTEAM.BI_FACT_ANUNCIO a
		JOIN BI_SYSTEAM.BI_TIPO_OPERACION tipoOp ON a.ID_TIPO_OPERACION = tipoOp.ID_TIPO_OPERACION
		JOIN BI_SYSTEAM.BI_TIPO_INMUEBLE tipoAmb ON a.ID_TIPO_INMUEBLE = tipoAmb.ID_TIPO_INMUEBLE
		JOIN BI_SYSTEAM.BI_RANGO_M2 rM2 ON a.ID_RANGO_M2 = rM2.ID_RANGO_M2
		JOIN BI_SYSTEAM.BI_TIPO_MONEDA tipoMon ON a.ID_TIPO_MONEDA = tipoMon.ID_TIPO_MONEDA 
		JOIN  BI_SYSTEAM.BI_TIEMPO t1 ON a.ID_TIEMPO_FECHA_PUBLICACION= t1.ID_TIEMPO
	GROUP BY
		t1.TIEMPO_ANIO,
		t1.TIEMPO_CUATRIMESTRE,
		tipoOp.TIPO_OPERACION_DESCRIPCION,
		tipoAmb.TIPO_INMUEBLE_DESCRIPCION,
		rM2.RANGO_M2_DESCRIPCION,
		tipoMon.TIPO_MONEDA_DESCRIPCION
GO


--VISTA 3:
CREATE VIEW BI_SYSTEAM.VISTA_LOS_5_BARRIOS_MAS_ELEGIDOS_PARA_ALQUILAR AS

 SELECT TOP 5
	 t1.TIEMPO_ANIO						AS [A�o publicacion anuncio],
	 t1.TIEMPO_CUATRIMESTRE				AS [Cuatrimestre publicacion anuncio],
	 bar.BARRIO							AS [Barrio donde se publico el anuncio],
	 re.RANGO_ETARIO_DESCRIPCION        AS [Rango Etario Inquilinos],
	 COUNT(*)							AS [Cantidad alquileres dados de alta]
	 --al.ALQUILER_CANT_ALQUILER			AS [Cantidad alquileres dados de alta]
  FROM
    BI_SYSTEAM.BI_fact_alquiler AL
    JOIN  BI_SYSTEAM.BI_tiempo T1 ON AL.ID_TIEMPO = T1.ID_TIEMPO
	JOIN  BI_SYSTEAM.BI_UBICACION bar ON bar.ID_UBICACION = al.ID_UBICACION
	JOIN  BI_SYSTEAM.BI_RANGO_ETARIO re ON re.ID_RANGO_ETARIO = al.ID_RANGO_ETARIO_INQUILINO
  GROUP BY 
     t1.TIEMPO_ANIO,
	 t1.TIEMPO_CUATRIMESTRE,
	 bar.BARRIO,
	 re.RANGO_ETARIO_DESCRIPCION
	 --,al.ALQUILER_CANT_ALQUILER	
   ORDER BY 5 DESC

GO


/* PROHIBIDO USAR SUBSELECTS EN EL FROM!!!!

SELECT
    TIEMPO_ANIO                        	AS [A�o publicacion anuncio],
    TIEMPO_CUATRIMESTRE                 AS [Cuatrimestre publicacion anuncio],
    RANGO_ETARIO_DESCRIPCION            AS [Rango Etario Inquilinos],
    BARRIO                              AS [Barrio],
    CantidadAlquileres                  AS [Cantidad Alquileres]
FROM (
    SELECT
        T1.TIEMPO_ANIO,
        T1.TIEMPO_CUATRIMESTRE,
        RE.RANGO_ETARIO_DESCRIPCION,
        u.BARRIO,
        COUNT(*) AS CantidadAlquileres,
        ROW_NUMBER() OVER (PARTITION BY T1.TIEMPO_ANIO, T1.TIEMPO_CUATRIMESTRE, re.RANGO_ETARIO_DESCRIPCION ORDER BY COUNT(*) DESC) AS Ranking
    FROM
        BI_SYSTEAM.BI_FACT_ALQUILER a
        JOIN BI_SYSTEAM.BI_TIEMPO T1 ON a.ID_TIEMPO_FECHA_INICIO = T1.ID_TIEMPO
        JOIN BI_SYSTEAM.BI_RANGO_ETARIO re ON a.ID_RANGO_ETARIO = re.ID_RANGO_ETARIO
        JOIN BI_SYSTEAM.BI_UBICACION u ON a.ID_UBICACION = u.ID_UBICACION
    GROUP BY
        T1.TIEMPO_ANIO,
        T1.TIEMPO_CUATRIMESTRE,
        re.RANGO_ETARIO_DESCRIPCION,
        u.BARRIO
) AS RankedBarrios
WHERE
    Ranking <= 5;*/
	

	
--VISTA 4:
CREATE VIEW BI_SYSTEAM.VISTA_PORCENTAJE_INCUMPLIMIENTO_PAGO_ALQUILER AS
	SELECT
 		T1.TIEMPO_ANIO																	AS [A�o Alquiler],
		T1.TIEMPO_MES																	AS [Mes Alquiler],
		COUNT(*)																		AS [Total pagos],
		SUM(A.ALQUILER_PAGO_EN_TERMINO)													AS [Pagos en termino],
		SUM(A.ALQUILER_PAGO_ATRASADO)													AS [Pagos atrasados],
		CAST(SUM(A.ALQUILER_PAGO_ATRASADO) AS DECIMAL) / COUNT(*) * 100					AS [Porcentaje incumplimiento]

	FROM BI_SYSTEAM.BI_FACT_ALQUILER A
		JOIN BI_SYSTEAM.BI_TIEMPO T1 ON T1.ID_TIEMPO = A.ID_TIEMPO
	GROUP BY
		T1.TIEMPO_ANIO,
		T1.TIEMPO_MES
GO

/*CREATE VIEW DATABASERS.PORCENTAJE_INCUMPLIMIENTO -- revisada
AS
	SELECT 

		CONCAT(100*SUM(BI_PAGO_ALQUILER_CANT_INCLUMPLIDOS)/SUM(BI_PAGO_ALQUILER_CANT_PAGOS), ' %') AS PORCENTAJE_INCUMPLIMIENTO,
		BI_TIEMPO_ANIO,
		BI_TIEMPO_MES

	FROM DATABASERS.BI_PAGO_ALQUILER

	JOIN DATABASERS.BI_TIEMPO ON BI_PAGO_ALQUILER_TIEMPO = BI_TIEMPO_CODIGO

	GROUP BY 
	BI_TIEMPO_ANIO,
	BI_TIEMPO_MES
GO*/

--VISTA 5: 

CREATE VIEW BI_SYSTEAM.VISTA_PORCENTAJE_PROMEDIO_INCREMENTO_VALOR_ALQUILERES AS
	SELECT
		T1.TIEMPO_ANIO														AS [A�o],
		T1.TIEMPO_MES														AS [Mes],
		100.0 * (SUM(AL.ALQUILER_PRECIO)/SUM(al2.ALQUILER_PRECIO) - 1)		AS [Porcentaje incremento alquiler]
	FROM BI_SYSTEAM.BI_FACT_ALQUILER al
		JOIN BI_SYSTEAM.BI_tiempo T1 ON al.ID_TIEMPO = T1.id_tiempo
		JOIN BI_SYSTEAM.BI_tiempo T2 ON T2.ID_TIEMPO = BI_SYSTEAM.calcular_tiempo_id(T1.ID_TIEMPO)	
		JOIN BI_SYSTEAM.BI_FACT_ALQUILER al2 on al2.ID_TIEMPO = T2.ID_TIEMPO
	--WHERE al.ALQUILER_ESTADO = 'Activo' 
	GROUP BY 
		T1.TIEMPO_ANIO,
		T1.TIEMPO_MES
	HAVING (100.0 * (SUM(AL.ALQUILER_PRECIO)/SUM(al2.ALQUILER_PRECIO) - 1)) > 0
GO

--VISTA 6:
 
CREATE VIEW BI_SYSTEAM.VISTA_PRECIO_PROMEDIO_M2_VENTA AS
	SELECT
		TipoIn.TIPO_INMUEBLE_DESCRIPCION								AS [Tipo inmueble],
		T1.TIEMPO_ANIO													AS [A�o],
		T1.TIEMPO_CUATRIMESTRE											AS [Cuatrimestre],
		Ubi.LOCALIDAD													AS [Localidad],
		AVG(V.PRECIO_PROMEDIO_M2)										AS [Precio promedio M2]
		
	FROM BI_SYSTEAM.BI_FACT_VENTA v
		JOIN BI_SYSTEAM.BI_TIPO_INMUEBLE TipoIn ON v.id_tipo_inmueble = TipoIn.id_tipo_inmueble
		JOIN BI_SYSTEAM.BI_UBICACION Ubi ON v.id_ubicacion = Ubi.id_Ubicacion
		JOIN BI_SYSTEAM.BI_TIEMPO T1 ON T1.id_tiempo = v.ID_TIEMPO_FECHA
		JOIN BI_SYSTEAM.BI_TIPO_MONEDA TM ON TM.ID_TIPO_MONEDA = V.ID_TIPO_MONEDA
		JOIN BI_SYSTEAM.BI_RANGO_M2 RM2 ON RM2.ID_RANGO_M2 = V.ID_RANGO_M2 
	GROUP BY
		TipoIn.TIPO_INMUEBLE_DESCRIPCION,
		T1.TIEMPO_ANIO,
		T1.TIEMPO_CUATRIMESTRE,
		V.PRECIO_PROMEDIO_M2,
		Ubi.LOCALIDAD
		
	GO
	
--VISTA 7
/*
CREATE VIEW BI_SYSTEAM.VISTA_VALOR_PROMEDIO_COMISION AS
(
	SELECT	DT.anio,
			DT.cuatrimestre,
			'Venta' tipo_operacion,
			S.nombre,
			--SUM(HV.comisiones_total)/SUM(HV.cant_ventas_dadas_de_alta) promedio_comision
	FROM 
		BI_SYSTEAM.BI_hecho_venta HV
	INNER JOIN BI_SYSTEAM.BI_dim_tiempo DT ON HV.id_tiempo = DT.id_tiempo
	INNER JOIN GESTIONATE.BI_dim_sucursal S ON HV.id_sucursal = S.id_sucursal
	 GROUP BY 
		DT.anio, 
		DT.cuatrimestre, 
		S.nombre
)
UNION
(
	SELECT	DT.anio, 
			DT.cuatrimestre, 
			'Alquiler' tipo_operacion, 
			S.nombre, 
			--SUM(HA.comisiones_total)/SUM(HA.cant_alquileres_dados_de_alta) promedio_comision
	FROM 
		GESTIONATE.BI_hecho_alquiler HA
INNER JOIN GESTIONATE.BI_dim_tiempo DT ON HA.id_tiempo = DT.id_tiempo
INNER JOIN GESTIONATE.BI_dim_sucursal S ON HA.id_sucursal = S.id_sucursal
    GROUP BY 
		DT.anio,
		DT.cuatrimestre, 
		S.nombre
)
GO
*/


CREATE VIEW BI_SYSTEAM.VISTA_VALOR_PROMEDIO_COMISION AS
SELECT
		--tipoOp.TIPO_OPERACION_DESCRIPCION		AS [Tipo operacion],
		'Alquiler' tipo_operacion,
		su.SUCURSAL_NOMBRE						AS [Sucursal],
		T1.TIEMPO_ANIO							AS [A�o],
		T1.TIEMPO_CUATRIMESTRE					AS [Cuatrimestre],
		ISNULL(AVG(al.ALQUILER_COMISION),0)		AS [Valor promedio comision]

	FROM BI_SYSTEAM.BI_FACT_ALQUILER al
		--JOIN BI_SYSTEAM.BI_TIPO_OPERACION tipoOp ON al.id_tipo_operacion = tipoOp.id_tipo_operacion
		JOIN BI_SYSTEAM.BI_SUCURSAL su ON al.ID_SUCURSAL= su.id_sucursal
		JOIN BI_SYSTEAM.BI_TIEMPO T1 ON al.ID_TIEMPO = T1.id_tiempo
	GROUP BY
		--tipoOp.TIPO_OPERACION_DESCRIPCION,		
		su.SUCURSAL_NOMBRE,						
		T1.TIEMPO_ANIO,							
		T1.TIEMPO_CUATRIMESTRE

UNION ALL 

SELECT
		--tipoOp.TIPO_OPERACION_DESCRIPCION		AS [Tipo operacion],
		'Venta' tipo_operacion,
		su.SUCURSAL_NOMBRE						AS [Sucursal],
		T1.TIEMPO_ANIO							AS [A�o],
		T1.TIEMPO_CUATRIMESTRE					AS [Cuatrimestre],
		ISNULL(AVG(v.COMISION),0)				AS [Valor promedio comision]

	FROM BI_SYSTEAM.BI_FACT_VENTA v
		--JOIN BI_SYSTEAM.BI_TIPO_OPERACION tipoOp ON v.id_tipo_operacion = tipoOp.id_tipo_operacion
		JOIN BI_SYSTEAM.BI_SUCURSAL su ON v.ID_SUCURSAL= su.id_sucursal
		JOIN BI_SYSTEAM.BI_TIEMPO T1 ON v.ID_TIEMPO_FECHA = T1.id_tiempo
	GROUP BY
	--	tipoOp.TIPO_OPERACION_DESCRIPCION,		
		su.SUCURSAL_NOMBRE,						
		T1.TIEMPO_ANIO,							
		T1.TIEMPO_CUATRIMESTRE
GO



--VISTA 8
CREATE VIEW  BI_SYSTEAM.VISTA_PORCENTAJE_OPERACIONES_CONCRETADAS AS
  SELECT
    su.SUCURSAL_NOMBRE						AS [Sucursal],
	T1.TIEMPO_ANIO							AS [A�o],
    re.RANGO_ETARIO_DESCRIPCION             AS [Rango etario agente],
	COUNT(*)								AS [Cantidad de anuncios],
	CONCAT(
		(COUNT(*)/
		convert
			(float,
				(
				SELECT COUNT(*)
				FROM BI_SYSTEAM.BI_FACT_ANUNCIO a2
				JOIN BI_SYSTEAM.BI_tiempo T2 ON a2.ID_TIEMPO_FECHA_PUBLICACION = T2.ID_TIEMPO
				JOIN BI_SYSTEAm.BI_ESTADO_ANUNCIO esta ON esta.ID_ESTADO_ANUNCIO = a2.ID_ESTADO_ANUNCIO
				WHERE T2.TIEMPO_ANIO = T1.TIEMPO_ANIO 
				AND esta.ESTADO_ANUNCIO_DESCRIPCION IN ('Vendido','Alquilado')
				)
			) 
		) * 100, '%')
								            AS [Porcentaje operaciones concretadas]
  FROM BI_SYSTEAM.BI_FACT_ANUNCIO a
    JOIN BI_SYSTEAM.BI_tiempo T1 ON a.ID_TIEMPO_FECHA_PUBLICACION = T1.ID_TIEMPO
	JOIN BI_SYSTEAM.BI_RANGO_ETARIO re ON a.ID_RANGO_ETARIO = re.ID_RANGO_ETARIO
	JOIN BI_SYSTEAM.BI_SUCURSAL su ON a.ID_SUCURSAL = su.ID_SUCURSAL
  GROUP BY 
	T1.TIEMPO_ANIO,
	su.SUCURSAL_NOMBRE,
    re.RANGO_ETARIO_DESCRIPCION  
GO


--VISTA 9
CREATE VIEW BI_SYSTEAM.VISTA_MONTO_TOTAL_CIERRE_CONTRATOS AS
  SELECT
    ss.SUCURSAL_NOMBRE						AS [Sucursal],
	T2.TIEMPO_CUATRIMESTRE					AS [Cuatrimestre],
	T2.TIEMPO_ANIO							AS [Anio],
	ss.TIPO_OPERACION_DESCRIPCION			AS [Tipo operacion],
    ss.TIPO_MONEDA_DESCRIPCION				AS [Moneda Detalle],
	ISNULL(ss.[Monto Total],0)				AS [Monto total cierre]

  FROM BI_SYSTEAM.BI_tiempo T2
  LEFT OUTER JOIN (
		SELECT 
		tipoOp.TIPO_OPERACION_DESCRIPCION,
		tipoMon.TIPO_MONEDA_DESCRIPCION,
		T1.TIEMPO_CUATRIMESTRE,
		T1.TIEMPO_ANIO,
		su.SUCURSAL_NOMBRE,	 
		SUM(a.ANUNCIO_PRECIO) AS [Monto Total]
  FROM
  BI_SYSTEAM.BI_FACT_ANUNCIO a
    JOIN BI_SYSTEAM.BI_tiempo T1 ON a.ID_TIEMPO_FECHA_FINALIZACION= T1.ID_TIEMPO
	JOIN BI_SYSTEAM.BI_SUCURSAL su ON a.ID_SUCURSAL = su.ID_SUCURSAL
	JOIN BI_SYSTEAM.BI_TIPO_OPERACION tipoOp ON a.id_tipo_operacion = tipoOp.id_tipo_operacion
	JOIN BI_SYSTEAM.BI_TIPO_MONEDA tipoMon ON a.ID_TIPO_MONEDA = tipoMon.ID_TIPO_MONEDA 
	JOIN BI_SYSTEAm.BI_ESTADO_ANUNCIO esta ON esta.ID_ESTADO_ANUNCIO = a.ID_ESTADO_ANUNCIO
	where esta.ESTADO_ANUNCIO_DESCRIPCION IN ('Vendido','Alquilado')
  GROUP BY
    su.SUCURSAL_NOMBRE,
	T1.TIEMPO_ANIO,
	T1.TIEMPO_CUATRIMESTRE,
	tipoOp.TIPO_OPERACION_DESCRIPCION,
    tipoMon.TIPO_MONEDA_DESCRIPCION ) ss ON T2.TIEMPO_CUATRIMESTRE = ss.TIEMPO_CUATRIMESTRE
GO





/*
--VISTA 1
SELECT * FROM BI_SYSTEAM.VISTA_PROMEDIO_DIAS_PUBLICADOS_ANUNCIOS
--VISTA 2
SELECT * FROM BI_SYSTEAM.VISTA_PROMEDIO_ANUNCIOS_INMUEBLES
--VISTA 3
SELECT * FROM BI_SYSTEAM.VISTA_LOS_5_BARRIOS_MAS_ELEGIDOS_PARA_ALQUILAR
--VISTA 4
SELECT * FROM BI_SYSTEAM.VISTA_PORCENTAJE_INCUMPLIMIENTO_PAGO_ALQUILER
--VISTA 5
SELECT * FROM BI_SYSTEAM.VISTA_PORCENTAJE_PROMEDIO_INCREMENTO_VALOR_ALQUILERES
--VISTA 6
SELECT * FROM BI_SYSTEAM.VISTA_PRECIO_PROMEDIO_M2_VENTA
--VISTA 7
SELECT * FROM BI_SYSTEAM.VISTA_VALOR_PROMEDIO_COMISION
---VISTA 8
SELECT * FROM BI_SYSTEAM.VISTA_PORCENTAJE_OPERACIONES_CONCRETADAS
--VISTA 9
SELECT * FROM BI_SYSTEAM.VISTA_MONTO_TOTAL_CIERRE_CONTRATOS

*/