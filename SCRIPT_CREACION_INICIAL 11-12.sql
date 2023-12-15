USE GD2C2023
GO

-------------------------------------
---------DROP DE CONSTRAINTS---------
-------------------------------------

IF OBJECT_ID('SYSTEAM.FK_LOCALIDAD_PROVINCIA_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.LOCALIDAD
    DROP CONSTRAINT FK_LOCALIDAD_PROVINCIA_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_BARRIO_LOCALIDAD_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.BARRIO
    DROP CONSTRAINT FK_BARRIO_LOCALIDAD_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_INM_POR_CARAC_INM_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.CARACTERISTICA_POR_INMUEBLE
    DROP CONSTRAINT FK_INM_POR_CARAC_INM_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_INM_POR_CARAC_CARAC_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.CARACTERISTICA_POR_INMUEBLE
    DROP CONSTRAINT FK_INM_POR_CARAC_CARAC_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_INMUEBLE_TIPO_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.INMUEBLE
    DROP CONSTRAINT FK_INMUEBLE_TIPO_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_INMUEBLE_DISPOSICION_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.INMUEBLE
    DROP CONSTRAINT FK_INMUEBLE_DISPOSICION_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_INMUEBLE_CANT_AMBIENTES_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.INMUEBLE
    DROP CONSTRAINT FK_INMUEBLE_CANT_AMBIENTES_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_INMUEBLE_ORIENTACION_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.INMUEBLE
    DROP CONSTRAINT FK_INMUEBLE_ORIENTACION_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_INM_EST_INMUEBLE_ESTADO_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.INMUEBLE
    DROP CONSTRAINT FK_INM_EST_INMUEBLE_ESTADO_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_INMUEBLE_PROPIETARIO_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.INMUEBLE
    DROP CONSTRAINT FK_INMUEBLE_PROPIETARIO_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_INMUEBLE_BARRIO_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.INMUEBLE
    DROP CONSTRAINT FK_INMUEBLE_BARRIO_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_SUCURSAL_LOCALIDAD_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.SUCURSAL
    DROP CONSTRAINT FK_SUCURSAL_LOCALIDAD_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_AGE_SUC_SUCURSAL_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.AGENTE
    DROP CONSTRAINT FK_AGE_SUC_SUCURSAL_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_ANUNCIO_MONEDA_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.ANUNCIO
    DROP CONSTRAINT FK_ANUNCIO_MONEDA_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_ANU_TIP_TIPO_ANUNCIO_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.ANUNCIO
    DROP CONSTRAINT FK_ANU_TIP_TIPO_ANUNCIO_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_ANU_AGE_AGENTE_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.ANUNCIO
    DROP CONSTRAINT FK_ANU_AGE_AGENTE_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_ANU_INM_INMUEBLE_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.ANUNCIO
    DROP CONSTRAINT FK_ANU_INM_INMUEBLE_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_VEN_MON_MONEDA_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.VENTA
    DROP CONSTRAINT FK_VEN_MON_MONEDA_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_VEN_COM_COMPRADOR_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.VENTA
    DROP CONSTRAINT FK_VEN_COM_COMPRADOR_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_VEN_ANU_ANUNCIO_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.VENTA
    DROP CONSTRAINT FK_VEN_ANU_ANUNCIO_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_PAG_MON_MONEDA_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.PAGO_VENTA
    DROP CONSTRAINT FK_PAG_MON_MONEDA_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_PAG_MED_MEDIO_PAGO_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.PAGO_VENTA
    DROP CONSTRAINT FK_PAG_MED_MEDIO_PAGO_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_PAG_VEN_VENTA_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.PAGO_VENTA
    DROP CONSTRAINT FK_PAG_VEN_VENTA_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_PAGALQ_MED_MEDIO_PAGO_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.PAGO_ALQUILER
    DROP CONSTRAINT FK_PAGALQ_MED_MEDIO_PAGO_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_PAGALQ_ALQ_ALQUILER_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.PAGO_ALQUILER
    DROP CONSTRAINT FK_PAGALQ_ALQ_ALQUILER_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_ALQ_INQ_INQUILINO_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.ALQUILER
    DROP CONSTRAINT FK_ALQ_INQ_INQUILINO_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_ALQ_ANU_ANUNCIO_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.ALQUILER
    DROP CONSTRAINT FK_ALQ_ANU_ANUNCIO_CODIGO;
GO

IF OBJECT_ID('SYSTEAM.FK_DET_ALQ_ALQUILER_CODIGO', 'F') IS NOT NULL
    ALTER TABLE SYSTEAM.DETALLE_ALQUILER
    DROP CONSTRAINT FK_DET_ALQ_ALQUILER_CODIGO;
GO


-------------------------------------------------------------------------------------------------
-----------------------------------DROP DE TABLES------------------------------------------------
-------------------------------------------------------------------------------------------------

IF OBJECT_ID('SYSTEAM.VENTA', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.VENTA
GO

IF OBJECT_ID('SYSTEAM.PAGO_VENTA', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.PAGO_VENTA
GO

IF OBJECT_ID('SYSTEAM.MONEDA', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.MONEDA
GO

IF OBJECT_ID('SYSTEAM.ANUNCIO', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.ANUNCIO
GO

IF OBJECT_ID('SYSTEAM.TIPO_ANUNCIO', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.TIPO_ANUNCIO
GO

IF OBJECT_ID('SYSTEAM.AGENTE', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.AGENTE
GO

IF OBJECT_ID ('SYSTEAM.SUCURSAL','U') IS NOT NULL
	DROP TABLE SYSTEAM.SUCURSAL
GO 

IF OBJECT_ID ('SYSTEAM.BARRIO', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.BARRIO
GO

IF OBJECT_ID ('SYSTEAM.LOCALIDAD', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.LOCALIDAD
GO

IF OBJECT_ID('SYSTEAM.PROVINCIA', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.PROVINCIA
GO

IF OBJECT_ID ('SYSTEAM.INMUEBLE', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.INMUEBLE
GO

IF OBJECT_ID ('SYSTEAM.INMUEBLE_CANT_AMBIENTES', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.INMUEBLE_CANT_AMBIENTES
GO

IF OBJECT_ID ('SYSTEAM.INMUEBLE_DISPOSICION', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.INMUEBLE_DISPOSICION
GO

IF OBJECT_ID ('SYSTEAM.INMUEBLE_TIPO', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.INMUEBLE_TIPO
GO

IF OBJECT_ID ('SYSTEAM.INMUEBLE_ORIENTACION', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.INMUEBLE_ORIENTACION
GO

IF OBJECT_ID ('SYSTEAM.INMUEBLE_ESTADO', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.INMUEBLE_ESTADO
GO

IF OBJECT_ID('SYSTEAM.INMUEBLE_CARACTERISTICA', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.INMUEBLE_CARACTERISTICA
GO

IF OBJECT_ID('SYSTEAM.CARACTERISTICA_POR_INMUEBLE', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.CARACTERISTICA_POR_INMUEBLE
GO

IF OBJECT_ID('SYSTEAM.PROPIETARIO', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.PROPIETARIO
GO

IF OBJECT_ID ('SYSTEAM.COMPRADOR', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.COMPRADOR
GO

IF OBJECT_ID ('SYSTEAM.MEDIO_PAGO', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.MEDIO_PAGO
GO

IF OBJECT_ID ('SYSTEAM.ALQUILER', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.ALQUILER
GO

IF OBJECT_ID ('SYSTEAM.PAGO_ALQUILER', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.PAGO_ALQUILER 
GO

IF OBJECT_ID ('SYSTEAM.DETALLE_ALQUILER', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.DETALLE_ALQUILER
GO

IF OBJECT_ID ('SYSTEAM.INQUILINO', 'U') IS NOT NULL
	DROP TABLE SYSTEAM.INQUILINO
GO

-------------------------------------------------------------------------------------------------
-----------------------------------DROP DE PROCEDURES--------------------------------------------
-------------------------------------------------------------------------------------------------

IF OBJECT_ID('SYSTEAM.CARGAR_VENTA') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_VENTA
GO

IF OBJECT_ID('SYSTEAM.CARGAR_PAGO_VENTA') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_PAGO_VENTA
GO

IF OBJECT_ID('SYSTEAM.CARGAR_MONEDA') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_MONEDA
GO

IF OBJECT_ID('SYSTEAM.CARGAR_ANUNCIO') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_ANUNCIO
GO

IF OBJECT_ID('SYSTEAM.CARGAR_TIPO_ANUNCIO') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_TIPO_ANUNCIO
GO

IF OBJECT_ID('SYSTEAM.CARGAR_AGENTE') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_AGENTE
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_SUCURSAL') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_SUCURSAL
GO 

IF OBJECT_ID ('SYSTEAM.CARGAR_LOCALIDAD') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_LOCALIDAD
GO

IF OBJECT_ID('SYSTEAM.CARGAR_PROVINCIA') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_PROVINCIA
GO

IF OBJECT_ID('SYSTEAM.CARGAR_BARRIO') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_BARRIO
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_INMUEBLE') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_INMUEBLE
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_INMUEBLE_CANT_AMBIENTES') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_INMUEBLE_CANT_AMBIENTES
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_INMUEBLE_DISPOSICION') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_INMUEBLE_DISPOSICION
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_INMUEBLE_TIPO') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_INMUEBLE_TIPO
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_INMUEBLE_ORIENTACION') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_INMUEBLE_ORIENTACION
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_INMUEBLE_ESTADO') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_INMUEBLE_ESTADO
GO

IF OBJECT_ID('SYSTEAM.CARGAR_INMUEBLE_CARACTERISTICA') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_INMUEBLE_CARACTERISTICA
GO

IF OBJECT_ID('SYSTEAM.CARGAR_CARACTERISTICA_POR_INMUEBLE') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_CARACTERISTICA_POR_INMUEBLE
GO

IF OBJECT_ID('SYSTEAM.CARGAR_PROPIETARIO') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_PROPIETARIO
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_COMPRADOR') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_COMPRADOR
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_MEDIO_PAGO') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_MEDIO_PAGO
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_ALQUILER') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_ALQUILER
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_PAGO_ALQUILER') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_PAGO_ALQUILER 
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_DETALLE_ALQUILER') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_DETALLE_ALQUILER
GO

IF OBJECT_ID ('SYSTEAM.CARGAR_INQUILINO') IS NOT NULL
	DROP PROCEDURE SYSTEAM.CARGAR_INQUILINO
GO

-------------------------------------------------------------------------------------------------
--------------------------------------------SCHEMA-----------------------------------------------
-------------------------------------------------------------------------------------------------

IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'SYSTEAM')
	DROP SCHEMA SYSTEAM
GO

CREATE SCHEMA SYSTEAM
GO

-------------------------------------------------------------------------------------------------
----------------------------------------CREATE TABLES--------------------------------------------
-------------------------------------------------------------------------------------------------

CREATE TABLE SYSTEAM.VENTA (
	VENTA_CODIGO numeric(18,0) PRIMARY KEY,
	VENTA_FECHA datetime,
	VENTA_PRECIO_VENTA numeric(18,2),
	VENTA_COMISION numeric(18,2),
	MONEDA_CODIGO numeric(18,0),
	COMPRADOR_CODIGO numeric(18,0),
	ANUNCIO_CODIGO numeric(18,0)
);

CREATE TABLE SYSTEAM.PAGO_VENTA (
	PAGO_VENTA_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	PAGO_VENTA_IMPORTE numeric(18,2),
	MONEDA_CODIGO numeric(18,0),
	PAGO_VENTA_COTIZACION numeric(18,2),
	MEDIO_PAGO_CODIGO numeric(18,0),
	VENTA_CODIGO numeric(18,0)
);

CREATE TABLE SYSTEAM.MONEDA(
	MONEDA_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	MONEDA_NOMBRE nvarchar(100)
);

CREATE TABLE SYSTEAM.ANUNCIO(
	ANUNCIO_CODIGO numeric(18,0) PRIMARY KEY,
	ANUNCIO_FECHA_PUBLICACION datetime,
	ANUNCIO_PRECIO_PUBLICADO numeric(18,0),
	TIPO_ANUNCIO_CODIGO numeric(18,0),
	ANUNCIO_COSTO_ANUNCIO numeric(18,0),
	ANUNCIO_FECHA_FINALIZACION datetime,
	MONEDA_CODIGO numeric(18,0),
	ANUNCIO_ESTADO nvarchar(10),
	ANUNCIO_TIPO_PERIODO nvarchar(100),
	AGENTE_CODIGO numeric(18,0),
	INMUEBLE_CODIGO numeric(18,0)
);

CREATE TABLE SYSTEAM.TIPO_ANUNCIO(
	TIPO_ANUNCIO_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	TIPO_ANUNCIO_NOMBRE nvarchar(100)
);

CREATE TABLE SYSTEAM.AGENTE(
	AGENTE_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	AGENTE_NOMBRE nvarchar(100),
	AGENTE_APELLIDO nvarchar(100),
	AGENTE_DNI numeric(18,0),
	AGENTE_FECHA_REGISTRO datetime,
	AGENTE_TELEFONO numeric(18,0),
	AGENTE_MAIL nvarchar(100),
	AGENTE_FECHA_NAC datetime,
	SUCURSAL_CODIGO numeric(18,0)
);

CREATE TABLE SYSTEAM.SUCURSAL(
	SUCURSAL_CODIGO numeric(18,0) PRIMARY KEY,
	SUCURSAL_NOMBRE nvarchar(100),
	SUCURSAL_DIRECCION nvarchar(100),
	SUCURSAL_TELEFONO nvarchar(100),
	LOCALIDAD_CODIGO numeric(18,0)
);

CREATE TABLE SYSTEAM.PROVINCIA(
	PROVINCIA_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	PROVINCIA_NOMBRE nvarchar(100)
);

CREATE TABLE SYSTEAM.LOCALIDAD(
	LOCALIDAD_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	LOCALIDAD_NOMBRE nvarchar(100),
	PROVINCIA_CODIGO numeric(18,0)
);

CREATE TABLE SYSTEAM.BARRIO(
	BARRIO_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	BARRIO_NOMBRE nvarchar(100),
	LOCALIDAD_CODIGO numeric(18,0)
);

CREATE TABLE SYSTEAM.INMUEBLE(
	INMUEBLE_CODIGO numeric(18,0) PRIMARY KEY,
	PROPIETARIO_CODIGO numeric(18,0),
	INMUEBLE_NOMBRE nvarchar(100),
	INMUEBLE_DESCRIPCION nvarchar(100),
	INMUEBLE_DIRECCION nvarchar(100),
	INMUEBLE_EXPENSAS numeric(18,2),
	BARRIO_CODIGO numeric(18,0),
	INMUEBLE_ESTADO_CODIGO numeric(18,0),
	INMUEBLE_ORIENTACION_CODIGO numeric(18,0),
	INMUEBLE_TIPO_CODIGO numeric(18,0),
	INMUEBLE_DISPOSICION_CODIGO numeric(18,0),
	INMUEBLE_CANT_AMBIENTES_CODIGO numeric(18,0),
	INMUEBLE_ANTIGUEDAD numeric(18,0),
	INMUEBLE_SUPERFICIETOTAL numeric(18,0)
);

CREATE TABLE SYSTEAM.INMUEBLE_CANT_AMBIENTES(
	INMUEBLE_CANT_AMBIENTES_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	INMUEBLE_CANT_AMBIENTES_DETALLE nvarchar(100)
);

CREATE TABLE SYSTEAM.INMUEBLE_DISPOSICION(
	INMUEBLE_DISPOSICION_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	INMUEBLE_DISPOSICION_DETALLE nvarchar(100)
);

CREATE TABLE SYSTEAM.INMUEBLE_TIPO(
	INMUEBLE_TIPO_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	INMUEBLE_TIPO_DETALLE nvarchar(100)
);

CREATE TABLE SYSTEAM.INMUEBLE_ORIENTACION(
	INMUEBLE_ORIENTACION_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	INMUEBLE_ORIENTACION_DETALLE nvarchar(100)
);

CREATE TABLE SYSTEAM.INMUEBLE_ESTADO(
	INMUEBLE_ESTADO_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	INMUEBLE_ESTADO nvarchar(100)
);

CREATE TABLE SYSTEAM.INMUEBLE_CARACTERISTICA(
	INMUEBLE_CARACTERISTICA_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	INMUEBLE_CARACTERISTICA_DETALLE nvarchar(100)
);

CREATE TABLE SYSTEAM.CARACTERISTICA_POR_INMUEBLE(
	INMUEBLE_CODIGO numeric(18,0),
	INMUEBLE_CARACTERISTICA_CODIGO numeric(18,0),
	PRIMARY KEY (INMUEBLE_CODIGO, INMUEBLE_CARACTERISTICA_CODIGO)
);

CREATE TABLE SYSTEAM.PROPIETARIO(
	PROPIETARIO_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	PROPIETARIO_NOMBRE nvarchar(100),
	PROPIETARIO_APELLIDO nvarchar(100),
	PROPIETARIO_DNI numeric(18,0),
	PROPIETARIO_FECHA_REGISTRO datetime,
	PROPIETARIO_TELEFONO numeric(18,0),
	PROPIETARIO_MAIL nvarchar(255),
	PROPIETARIO_FECHA_NAC datetime
);

CREATE TABLE SYSTEAM.COMPRADOR(
	COMPRADOR_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	COMPRADOR_NOMBRE nvarchar(100),
	COMPRADOR_APELLIDO nvarchar(100),
	COMPRADOR_DNI numeric(18,0),
	COMPRADOR_FECHA_REGISTRO datetime,
	COMPRADOR_TELEFONO numeric(18,0),
	COMPRADOR_MAIL nvarchar(100),
	COMPRADOR_FECHA_NAC datetime
);

CREATE TABLE SYSTEAM.MEDIO_PAGO(
    MEDIO_PAGO_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	MEDIO_PAGO_NOMBRE nvarchar(100)
);


CREATE TABLE SYSTEAM.ALQUILER(
	ALQUILER_CODIGO numeric(18,0) PRIMARY KEY,
	ALQUILER_FECHA_INICIO datetime,
	ALQUILER_FECHA_FIN datetime,
	ALQUILER_CANT_PERIODOS numeric(18,0),
	ALQUILER_DEPOSITO numeric(18,2),
	ALQUILER_COMISION numeric(18,2),
	ALQUILER_GASTOS_AVERIGUA numeric(18,2),
	ALQUILER_ESTADO nvarchar(100),
	INQUILINO_CODIGO numeric(18,0),
	ANUNCIO_CODIGO numeric(18,0)
);


CREATE TABLE SYSTEAM.PAGO_ALQUILER(
	PAGO_ALQUILER_CODIGO numeric(18,0) PRIMARY KEY,
	PAGO_ALQUILER_FECHA datetime,
	PAGO_ALQUILER_FECHA_VENCIMIENTO datetime,
	PAGO_ALQUILER_NRO_PERIODO numeric(18,0),
	PAGO_ALQUILER_DESC nvarchar(100),
	PAGO_ALQUILER_FECHA_INI datetime,
	PAGO_ALQUILER_FECHA_FIN datetime,
	PAGO_ALQUILER_IMPORTE numeric(18,2),
	MEDIO_PAGO_CODIGO numeric(18,0),
	ALQUILER_CODIGO numeric(18,0)
);

CREATE TABLE SYSTEAM.DETALLE_ALQUILER(
	DETALLE_ALQ_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	ALQUILER_CODIGO numeric(18,0),
	DETALLE_ALQ_NRO_PERIODO_INI numeric(18,0),
	DETALLE_ALQ_NRO_PERIODO_FIN numeric(18,0),
	DETALLE_ALQUILER_PRECIO numeric(18,2)
);


CREATE TABLE SYSTEAM.INQUILINO(
	INQUILINO_CODIGO numeric(18,0) IDENTITY(1,1) PRIMARY KEY,
	INQUILINO_NOMBRE nvarchar(100),
	INQUILINO_APELLIDO nvarchar(100),
	INQUILINO_DNI numeric(18,0),
	INQUILINO_FECHA_REGISTRO datetime,
	INQUILINO_TELEFONO numeric(18,0),
	INQUILINO_MAIL nvarchar(100),
	INQUILINO_FECHA_NAC datetime
);
GO

-------------------
------- FKs -------
-------------------

ALTER TABLE SYSTEAM.LOCALIDAD
ADD CONSTRAINT FK_LOCALIDAD_PROVINCIA_CODIGO
FOREIGN KEY (PROVINCIA_CODIGO)
REFERENCES SYSTEAM.PROVINCIA(PROVINCIA_CODIGO)
GO

ALTER TABLE SYSTEAM.BARRIO
ADD CONSTRAINT FK_BARRIO_LOCALIDAD_CODIGO
FOREIGN KEY (LOCALIDAD_CODIGO) 
REFERENCES SYSTEAM.LOCALIDAD(LOCALIDAD_CODIGO)
GO

ALTER TABLE SYSTEAM.INMUEBLE
ADD CONSTRAINT FK_INMUEBLE_TIPO_CODIGO
FOREIGN KEY (INMUEBLE_TIPO_CODIGO) 
REFERENCES SYSTEAM.INMUEBLE_TIPO(INMUEBLE_TIPO_CODIGO);
GO

ALTER TABLE SYSTEAM.INMUEBLE
ADD CONSTRAINT FK_INMUEBLE_DISPOSICION_CODIGO
FOREIGN KEY (INMUEBLE_DISPOSICION_CODIGO) 
REFERENCES SYSTEAM.INMUEBLE_DISPOSICION(INMUEBLE_DISPOSICION_CODIGO);
GO

ALTER TABLE SYSTEAM.INMUEBLE
ADD CONSTRAINT FK_INMUEBLE_CANT_AMBIENTES_CODIGO
FOREIGN KEY (INMUEBLE_CANT_AMBIENTES_CODIGO) 
REFERENCES SYSTEAM.INMUEBLE_CANT_AMBIENTES(INMUEBLE_CANT_AMBIENTES_CODIGO);
GO

ALTER TABLE SYSTEAM.INMUEBLE
ADD CONSTRAINT FK_INMUEBLE_ORIENTACION_CODIGO
FOREIGN KEY (INMUEBLE_ORIENTACION_CODIGO) 
REFERENCES SYSTEAM.INMUEBLE_ORIENTACION(INMUEBLE_ORIENTACION_CODIGO);
GO

ALTER TABLE SYSTEAM.INMUEBLE 
ADD CONSTRAINT FK_INM_EST_INMUEBLE_ESTADO_CODIGO 
FOREIGN KEY (INMUEBLE_ESTADO_CODIGO) 
REFERENCES SYSTEAM.INMUEBLE_ESTADO(INMUEBLE_ESTADO_CODIGO);
GO

ALTER TABLE SYSTEAM.INMUEBLE
ADD CONSTRAINT FK_INMUEBLE_PROPIETARIO_CODIGO
FOREIGN KEY (PROPIETARIO_CODIGO) 
REFERENCES SYSTEAM.PROPIETARIO(PROPIETARIO_CODIGO);
GO

ALTER TABLE SYSTEAM.INMUEBLE
ADD CONSTRAINT FK_INMUEBLE_BARRIO_CODIGO
FOREIGN KEY (BARRIO_CODIGO) 
REFERENCES SYSTEAM.BARRIO(BARRIO_CODIGO);
GO

ALTER TABLE SYSTEAM.CARACTERISTICA_POR_INMUEBLE 
ADD CONSTRAINT FK_INM_POR_CARAC_CARAC_CODIGO
FOREIGN KEY (INMUEBLE_CARACTERISTICA_CODIGO) 
REFERENCES SYSTEAM.INMUEBLE_CARACTERISTICA(INMUEBLE_CARACTERISTICA_CODIGO);
GO

ALTER TABLE SYSTEAM.SUCURSAL 
ADD CONSTRAINT FK_SUCURSAL_LOCALIDAD_CODIGO
FOREIGN KEY (LOCALIDAD_CODIGO) 
REFERENCES SYSTEAM.LOCALIDAD(LOCALIDAD_CODIGO)
GO

ALTER TABLE SYSTEAM.AGENTE 
ADD CONSTRAINT FK_AGE_SUC_SUCURSAL_CODIGO 
FOREIGN KEY (SUCURSAL_CODIGO) 
REFERENCES SYSTEAM.SUCURSAL(SUCURSAL_CODIGO);
GO

ALTER TABLE SYSTEAM.ANUNCIO
ADD CONSTRAINT FK_ANUNCIO_MONEDA_CODIGO
FOREIGN KEY (MONEDA_CODIGO) 
REFERENCES SYSTEAM.MONEDA(MONEDA_CODIGO)
GO

ALTER TABLE SYSTEAM.ANUNCIO 
ADD CONSTRAINT FK_ANU_TIP_TIPO_ANUNCIO_CODIGO 
FOREIGN KEY (TIPO_ANUNCIO_CODIGO) 
REFERENCES SYSTEAM.TIPO_ANUNCIO(TIPO_ANUNCIO_CODIGO);
GO

ALTER TABLE SYSTEAM.ANUNCIO 
ADD CONSTRAINT FK_ANU_AGE_AGENTE_CODIGO 
FOREIGN KEY (AGENTE_CODIGO) 
REFERENCES SYSTEAM.AGENTE(AGENTE_CODIGO);
GO

ALTER TABLE SYSTEAM.ANUNCIO 
ADD CONSTRAINT FK_ANU_INM_INMUEBLE_CODIGO 
FOREIGN KEY (INMUEBLE_CODIGO) 
REFERENCES SYSTEAM.INMUEBLE(INMUEBLE_CODIGO);
GO

ALTER TABLE SYSTEAM.VENTA 
ADD CONSTRAINT FK_VEN_MON_MONEDA_CODIGO 
FOREIGN KEY (MONEDA_CODIGO) 
REFERENCES SYSTEAM.MONEDA(MONEDA_CODIGO);
GO

ALTER TABLE SYSTEAM.VENTA 
ADD CONSTRAINT FK_VEN_COM_COMPRADOR_CODIGO 
FOREIGN KEY (COMPRADOR_CODIGO) 
REFERENCES SYSTEAM.COMPRADOR(COMPRADOR_CODIGO);
GO

ALTER TABLE SYSTEAM.VENTA 
ADD CONSTRAINT FK_VEN_ANU_ANUNCIO_CODIGO 
FOREIGN KEY (ANUNCIO_CODIGO) 
REFERENCES SYSTEAM.ANUNCIO(ANUNCIO_CODIGO);
GO

ALTER TABLE SYSTEAM.PAGO_VENTA 
ADD CONSTRAINT FK_PAG_MON_MONEDA_CODIGO 
FOREIGN KEY (MONEDA_CODIGO) 
REFERENCES SYSTEAM.MONEDA(MONEDA_CODIGO);
GO

ALTER TABLE SYSTEAM.PAGO_VENTA 
ADD CONSTRAINT FK_PAG_MED_MEDIO_PAGO_CODIGO 
FOREIGN KEY (MEDIO_PAGO_CODIGO) 
REFERENCES SYSTEAM.MEDIO_PAGO(MEDIO_PAGO_CODIGO);
GO

ALTER TABLE SYSTEAM.PAGO_VENTA 
ADD CONSTRAINT FK_PAG_VEN_VENTA_CODIGO 
FOREIGN KEY (VENTA_CODIGO) 
REFERENCES SYSTEAM.VENTA(VENTA_CODIGO);
GO

ALTER TABLE SYSTEAM.PAGO_ALQUILER 
ADD CONSTRAINT FK_PAGALQ_MED_MEDIO_PAGO_CODIGO 
FOREIGN KEY (MEDIO_PAGO_CODIGO) 
REFERENCES SYSTEAM.MEDIO_PAGO(MEDIO_PAGO_CODIGO);
GO

ALTER TABLE SYSTEAM.PAGO_ALQUILER 
ADD CONSTRAINT FK_PAGALQ_ALQ_ALQUILER_CODIGO 
FOREIGN KEY (ALQUILER_CODIGO) 
REFERENCES SYSTEAM.ALQUILER(ALQUILER_CODIGO);
GO

ALTER TABLE SYSTEAM.ALQUILER 
ADD CONSTRAINT FK_ALQ_INQ_INQUILINO_CODIGO 
FOREIGN KEY (INQUILINO_CODIGO) 
REFERENCES SYSTEAM.INQUILINO(INQUILINO_CODIGO);
GO

ALTER TABLE SYSTEAM.ALQUILER 
ADD CONSTRAINT FK_ALQ_ANU_ANUNCIO_CODIGO 
FOREIGN KEY (ANUNCIO_CODIGO) 
REFERENCES SYSTEAM.ANUNCIO(ANUNCIO_CODIGO);
GO

ALTER TABLE SYSTEAM.DETALLE_ALQUILER 
ADD CONSTRAINT FK_DET_ALQ_ALQUILER_CODIGO 
FOREIGN KEY (ALQUILER_CODIGO) 
REFERENCES SYSTEAM.ALQUILER(ALQUILER_CODIGO);
GO

-------------------
--- PROCEDURES ----
-------------------

CREATE PROCEDURE SYSTEAM.CARGAR_MONEDA
AS
BEGIN
	INSERT INTO SYSTEAM.MONEDA
		(MONEDA_NOMBRE) VALUES ('Moneda Pesos');
	INSERT INTO SYSTEAM.MONEDA
		(MONEDA_NOMBRE) VALUES ('Moneda Dolares');
END 
GO

CREATE PROCEDURE SYSTEAM.CARGAR_TIPO_ANUNCIO
AS
BEGIN
	INSERT INTO SYSTEAM.TIPO_ANUNCIO
		(TIPO_ANUNCIO_NOMBRE) VALUES ('Tipo Operaci�n Alquiler Contrato');
	INSERT INTO SYSTEAM.TIPO_ANUNCIO
		(TIPO_ANUNCIO_NOMBRE) VALUES ('Tipo Operaci�n Alquiler Temporario');
	INSERT INTO SYSTEAM.TIPO_ANUNCIO
		(TIPO_ANUNCIO_NOMBRE) VALUES ('Tipo Operaci�n Venta');
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_INMUEBLE_CARACTERISTICA
AS
BEGIN
	INSERT INTO SYSTEAM.INMUEBLE_CARACTERISTICA
		(INMUEBLE_CARACTERISTICA_DETALLE) VALUES ('Wifi');
	INSERT INTO SYSTEAM.INMUEBLE_CARACTERISTICA
		(INMUEBLE_CARACTERISTICA_DETALLE) VALUES ('Cable');
	INSERT INTO SYSTEAM.INMUEBLE_CARACTERISTICA
		(INMUEBLE_CARACTERISTICA_DETALLE) VALUES ('Calefaccion');
	INSERT INTO SYSTEAM.INMUEBLE_CARACTERISTICA
		(INMUEBLE_CARACTERISTICA_DETALLE) VALUES ('Gas');
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_PROVINCIA
AS
BEGIN
    INSERT INTO SYSTEAM.PROVINCIA
	SELECT DISTINCT INMUEBLE_PROVINCIA 
	FROM gd_esquema.Maestra 
	WHERE INMUEBLE_PROVINCIA IS NOT NULL
	UNION SELECT DISTINCT SUCURSAL_PROVINCIA 
	FROM gd_esquema.Maestra 
	WHERE SUCURSAL_PROVINCIA IS NOT NULL
END 
GO

CREATE PROCEDURE SYSTEAM.CARGAR_LOCALIDAD
AS
BEGIN
	INSERT INTO SYSTEAM.LOCALIDAD (LOCALIDAD_NOMBRE, PROVINCIA_CODIGO)
	SELECT DISTINCT INMUEBLE_LOCALIDAD, PROVINCIA_CODIGO 
	FROM gd_esquema.Maestra JOIN SYSTEAM.PROVINCIA ON INMUEBLE_PROVINCIA = PROVINCIA_NOMBRE
	WHERE INMUEBLE_LOCALIDAD IS NOT NULL
	UNION SELECT DISTINCT SUCURSAL_LOCALIDAD, PROVINCIA_CODIGO 
	FROM gd_esquema.Maestra JOIN SYSTEAM.PROVINCIA ON SUCURSAL_PROVINCIA = PROVINCIA_NOMBRE
	WHERE SUCURSAL_LOCALIDAD IS NOT NULL
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_BARRIO
AS
BEGIN
    INSERT INTO SYSTEAM.BARRIO (BARRIO_NOMBRE, LOCALIDAD_CODIGO)
	SELECT DISTINCT INMUEBLE_BARRIO, LOCALIDAD_CODIGO 
	FROM gd_esquema.Maestra JOIN SYSTEAM.LOCALIDAD ON INMUEBLE_LOCALIDAD = LOCALIDAD_NOMBRE
	WHERE INMUEBLE_BARRIO IS NOT NULL
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_SUCURSAL
AS
BEGIN
	INSERT INTO SYSTEAM.SUCURSAL
		(SUCURSAL_CODIGO, SUCURSAL_NOMBRE, SUCURSAL_DIRECCION, SUCURSAL_TELEFONO, LOCALIDAD_CODIGO)
		SELECT DISTINCT m.SUCURSAL_CODIGO, m.SUCURSAL_NOMBRE, m.SUCURSAL_DIRECCION, m.SUCURSAL_TELEFONO, l.LOCALIDAD_CODIGO
		FROM GD_ESQUEMA.MAESTRA m
		JOIN LOCALIDAD l on l.LOCALIDAD_NOMBRE = m.SUCURSAL_LOCALIDAD
		WHERE m.SUCURSAL_CODIGO is not null
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_AGENTE
AS
BEGIN
	INSERT INTO SYSTEAM.AGENTE
		(AGENTE_NOMBRE, AGENTE_APELLIDO, AGENTE_DNI, AGENTE_FECHA_REGISTRO, AGENTE_TELEFONO, AGENTE_MAIL, AGENTE_FECHA_NAC, SUCURSAL_CODIGO)
		SELECT DISTINCT m.AGENTE_NOMBRE, m.AGENTE_APELLIDO, m.AGENTE_DNI, m.AGENTE_FECHA_REGISTRO, m.AGENTE_TELEFONO, m.AGENTE_MAIL, m.AGENTE_FECHA_NAC, s.SUCURSAL_CODIGO
		FROM GD_ESQUEMA.MAESTRA m
		JOIN SUCURSAL s on s.SUCURSAL_CODIGO = m.SUCURSAL_CODIGO
		WHERE m.AGENTE_DNI is not null
END 
GO

CREATE PROCEDURE SYSTEAM.CARGAR_PROPIETARIO
AS 
BEGIN
	INSERT INTO SYSTEAM.PROPIETARIO
		(PROPIETARIO_NOMBRE, PROPIETARIO_APELLIDO, PROPIETARIO_DNI, PROPIETARIO_FECHA_REGISTRO, PROPIETARIO_TELEFONO, PROPIETARIO_MAIL, PROPIETARIO_FECHA_NAC)
		SELECT DISTINCT m.PROPIETARIO_NOMBRE, m.PROPIETARIO_APELLIDO, m.PROPIETARIO_DNI, m.PROPIETARIO_FECHA_REGISTRO, m.PROPIETARIO_TELEFONO, m.PROPIETARIO_MAIL, m.PROPIETARIO_FECHA_NAC
		FROM GD_ESQUEMA.MAESTRA m
		WHERE m.PROPIETARIO_DNI is not null
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_COMPRADOR
AS
BEGIN
	INSERT INTO SYSTEAM.COMPRADOR
		(COMPRADOR_NOMBRE, COMPRADOR_APELLIDO, COMPRADOR_DNI, COMPRADOR_FECHA_REGISTRO, COMPRADOR_TELEFONO, COMPRADOR_MAIL, COMPRADOR_FECHA_NAC)
		SELECT DISTINCT m.COMPRADOR_NOMBRE, m.COMPRADOR_APELLIDO, m.COMPRADOR_DNI, m.COMPRADOR_FECHA_REGISTRO, m.COMPRADOR_TELEFONO, m.COMPRADOR_MAIL, m.COMPRADOR_FECHA_NAC
		FROM GD_ESQUEMA.MAESTRA m
		WHERE m.COMPRADOR_DNI is not null
END
GO	

CREATE PROCEDURE SYSTEAM.CARGAR_INQUILINO
AS
BEGIN
	INSERT INTO SYSTEAM.INQUILINO
		(INQUILINO_NOMBRE, INQUILINO_APELLIDO, INQUILINO_DNI, INQUILINO_FECHA_REGISTRO, INQUILINO_TELEFONO, INQUILINO_MAIL, INQUILINO_FECHA_NAC)
		SELECT DISTINCT m.INQUILINO_NOMBRE, m.INQUILINO_APELLIDO, m.INQUILINO_DNI, m.INQUILINO_FECHA_REGISTRO, m.INQUILINO_TELEFONO, m.INQUILINO_MAIL, m.INQUILINO_FECHA_NAC
		FROM GD_ESQUEMA.MAESTRA m
		WHERE m.INQUILINO_DNI is not null
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_INMUEBLE_ESTADO
AS
BEGIN
	INSERT INTO SYSTEAM.INMUEBLE_ESTADO
		(INMUEBLE_ESTADO)
		SELECT DISTINCT INMUEBLE_ESTADO
		FROM GD_ESQUEMA.MAESTRA m
		WHERE m.INMUEBLE_ESTADO is not null
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_INMUEBLE_CANT_AMBIENTES
AS
BEGIN
	INSERT INTO SYSTEAM.INMUEBLE_CANT_AMBIENTES
		(INMUEBLE_CANT_AMBIENTES_DETALLE)
		SELECT DISTINCT INMUEBLE_CANT_AMBIENTES
		FROM GD_ESQUEMA.MAESTRA m
		WHERE m.INMUEBLE_CANT_AMBIENTES is not null
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_INMUEBLE_DISPOSICION
AS
BEGIN
	INSERT INTO SYSTEAM.INMUEBLE_DISPOSICION
		(INMUEBLE_DISPOSICION_DETALLE)
		SELECT DISTINCT INMUEBLE_DISPOSICION
		FROM GD_ESQUEMA.MAESTRA m
		WHERE m.INMUEBLE_DISPOSICION is not null
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_INMUEBLE_TIPO
AS
BEGIN
	INSERT INTO SYSTEAM.INMUEBLE_TIPO
		(INMUEBLE_TIPO_DETALLE)
		SELECT DISTINCT INMUEBLE_TIPO_INMUEBLE
		FROM GD_ESQUEMA.MAESTRA m
		WHERE m.INMUEBLE_TIPO_INMUEBLE is not null
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_INMUEBLE_ORIENTACION
AS
BEGIN
	INSERT INTO SYSTEAM.INMUEBLE_ORIENTACION
		(INMUEBLE_ORIENTACION_DETALLE)
		SELECT DISTINCT INMUEBLE_ORIENTACION
		FROM GD_ESQUEMA.MAESTRA m
		WHERE m.INMUEBLE_ORIENTACION is not null
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_INMUEBLE
AS
BEGIN
    INSERT INTO SYSTEAM.INMUEBLE
        (INMUEBLE_CODIGO, PROPIETARIO_CODIGO, INMUEBLE_NOMBRE, INMUEBLE_DESCRIPCION, INMUEBLE_DIRECCION, INMUEBLE_EXPENSAS, BARRIO_CODIGO, INMUEBLE_ESTADO_CODIGO,
        INMUEBLE_ORIENTACION_CODIGO, INMUEBLE_TIPO_CODIGO, INMUEBLE_DISPOSICION_CODIGO, INMUEBLE_CANT_AMBIENTES_CODIGO, INMUEBLE_ANTIGUEDAD, INMUEBLE_SUPERFICIETOTAL)
    SELECT DISTINCT m.INMUEBLE_CODIGO, pr.PROPIETARIO_CODIGO, m.INMUEBLE_NOMBRE, m.INMUEBLE_DESCRIPCION, m.INMUEBLE_DIRECCION, m.INMUEBLE_EXPESAS, b.BARRIO_CODIGO, 
        ie.INMUEBLE_ESTADO_CODIGO, io.INMUEBLE_ORIENTACION_CODIGO, it.INMUEBLE_TIPO_CODIGO, id.INMUEBLE_DISPOSICION_CODIGO, ia.INMUEBLE_CANT_AMBIENTES_CODIGO, m.INMUEBLE_ANTIGUEDAD, m.INMUEBLE_SUPERFICIETOTAL
    FROM GD_ESQUEMA.MAESTRA m
    JOIN SYSTEAM.PROPIETARIO pr ON pr.PROPIETARIO_DNI = m.PROPIETARIO_DNI
	JOIN SYSTEAM.PROVINCIA p ON p.PROVINCIA_NOMBRE = m.INMUEBLE_PROVINCIA
	JOIN SYSTEAM.LOCALIDAD l ON l.LOCALIDAD_NOMBRE = m.INMUEBLE_LOCALIDAD AND l.PROVINCIA_CODIGO = p.PROVINCIA_CODIGO
    JOIN SYSTEAM.BARRIO b ON b.BARRIO_NOMBRE = m.INMUEBLE_BARRIO AND l.LOCALIDAD_CODIGO = b.LOCALIDAD_CODIGO
    JOIN SYSTEAM.INMUEBLE_ESTADO ie ON ie.INMUEBLE_ESTADO = m.INMUEBLE_ESTADO
    JOIN SYSTEAM.INMUEBLE_ORIENTACION io ON io.INMUEBLE_ORIENTACION_DETALLE = m.INMUEBLE_ORIENTACION
    JOIN SYSTEAM.INMUEBLE_TIPO it ON it.INMUEBLE_TIPO_DETALLE = m.INMUEBLE_TIPO_INMUEBLE
    JOIN SYSTEAM.INMUEBLE_DISPOSICION id ON id.INMUEBLE_DISPOSICION_DETALLE = m.INMUEBLE_DISPOSICION
    JOIN SYSTEAM.INMUEBLE_CANT_AMBIENTES ia ON ia.INMUEBLE_CANT_AMBIENTES_DETALLE = m.INMUEBLE_CANT_AMBIENTES
    WHERE m.INMUEBLE_CODIGO IS NOT NULL;


END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_CARACTERISTICA_POR_INMUEBLE
AS
BEGIN
	INSERT INTO SYSTEAM.CARACTERISTICA_POR_INMUEBLE 
		SELECT DISTINCT INMUEBLE_CODIGO, INMUEBLE_CARACTERISTICA_CODIGO 
		FROM gd_esquema.Maestra ma
		JOIN SYSTEAM.INMUEBLE_CARACTERISTICA ic ON ma.INMUEBLE_CARACTERISTICA_WIFI = 1
		WHERE ma.INMUEBLE_CODIGO IS NOT NULL AND ic.INMUEBLE_CARACTERISTICA_CODIGO = 1
		UNION SELECT DISTINCT INMUEBLE_CODIGO, INMUEBLE_CARACTERISTICA_CODIGO 
		FROM gd_esquema.Maestra ma
		JOIN SYSTEAM.INMUEBLE_CARACTERISTICA ic ON ma.INMUEBLE_CARACTERISTICA_CABLE = 1
		WHERE ma.INMUEBLE_CODIGO IS NOT NULL AND ic.INMUEBLE_CARACTERISTICA_CODIGO = 2
		UNION SELECT DISTINCT INMUEBLE_CODIGO, INMUEBLE_CARACTERISTICA_CODIGO 
		FROM gd_esquema.Maestra ma
		JOIN SYSTEAM.INMUEBLE_CARACTERISTICA ic ON ma.INMUEBLE_CARACTERISTICA_CALEFACCION = 1
		WHERE ma.INMUEBLE_CODIGO IS NOT NULL AND ic.INMUEBLE_CARACTERISTICA_CODIGO = 3
		UNION SELECT DISTINCT INMUEBLE_CODIGO, INMUEBLE_CARACTERISTICA_CODIGO
		FROM gd_esquema.Maestra ma
		JOIN SYSTEAM.INMUEBLE_CARACTERISTICA ic ON ma.INMUEBLE_CARACTERISTICA_GAS = 1
		WHERE ma.INMUEBLE_CODIGO IS NOT NULL AND ic.INMUEBLE_CARACTERISTICA_CODIGO = 4
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_ANUNCIO
AS 
BEGIN
	INSERT INTO SYSTEAM.ANUNCIO
		(ANUNCIO_CODIGO, ANUNCIO_FECHA_PUBLICACION, ANUNCIO_PRECIO_PUBLICADO, TIPO_ANUNCIO_CODIGO, ANUNCIO_COSTO_ANUNCIO, ANUNCIO_FECHA_FINALIZACION, MONEDA_CODIGO, ANUNCIO_ESTADO, ANUNCIO_TIPO_PERIODO, AGENTE_CODIGO, INMUEBLE_CODIGO)
		SELECT DISTINCT m.ANUNCIO_CODIGO, m.ANUNCIO_FECHA_PUBLICACION, m.ANUNCIO_PRECIO_PUBLICADO, ta.TIPO_ANUNCIO_CODIGO, m.ANUNCIO_COSTO_ANUNCIO, m.ANUNCIO_FECHA_FINALIZACION, mn.MONEDA_CODIGO, m.ANUNCIO_ESTADO, m.ANUNCIO_TIPO_PERIODO, ag.AGENTE_CODIGO, i.INMUEBLE_CODIGO
		FROM GD_ESQUEMA.MAESTRA m
		JOIN TIPO_ANUNCIO ta on m.ANUNCIO_TIPO_OPERACION = ta.TIPO_ANUNCIO_NOMBRE
		JOIN MONEDA mn on m.ANUNCIO_MONEDA = mn.MONEDA_NOMBRE
		JOIN AGENTE ag on ag.AGENTE_DNI = m.AGENTE_DNI
		JOIN INMUEBLE i on i.INMUEBLE_CODIGO = m.INMUEBLE_CODIGO
		WHERE m.ANUNCIO_CODIGO is not null
END 
GO

CREATE PROCEDURE SYSTEAM.CARGAR_MEDIO_PAGO
AS
BEGIN 
	WITH MediosDePago AS (
		SELECT PAGO_VENTA_MEDIO_PAGO AS MEDIO_PAGO_NOMBRE FROM GD_ESQUEMA.MAESTRA
		UNION
		SELECT PAGO_ALQUILER_MEDIO_PAGO AS MEDIO_PAGO_NOMBRE FROM GD_ESQUEMA.MAESTRA
	)
	INSERT INTO SYSTEAM.MEDIO_PAGO (MEDIO_PAGO_NOMBRE)
	SELECT DISTINCT MEDIO_PAGO_NOMBRE
	FROM MediosDePago
	WHERE MEDIO_PAGO_NOMBRE IS NOT NULL
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_VENTA
AS 
BEGIN
	INSERT INTO SYSTEAM.VENTA
		(VENTA_CODIGO, VENTA_FECHA, VENTA_PRECIO_VENTA, VENTA_COMISION, MONEDA_CODIGO, ANUNCIO_CODIGO)
		SELECT DISTINCT m.VENTA_CODIGO, m.VENTA_FECHA, m.VENTA_PRECIO_VENTA, m.VENTA_COMISION, mn.MONEDA_CODIGO, a.ANUNCIO_CODIGO
		FROM GD_ESQUEMA.MAESTRA m
		JOIN MONEDA mn on m.VENTA_MONEDA = mn.MONEDA_NOMBRE
		JOIN ANUNCIO a on a.ANUNCIO_CODIGO = m.ANUNCIO_CODIGO
		WHERE m.VENTA_CODIGO is not null 
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_PAGO_VENTA 
AS 
BEGIN
	INSERT INTO SYSTEAM.PAGO_VENTA
		(PAGO_VENTA_IMPORTE, MONEDA_CODIGO, PAGO_VENTA_COTIZACION, MEDIO_PAGO_CODIGO, VENTA_CODIGO)
		SELECT DISTINCT m.PAGO_VENTA_IMPORTE, mn.MONEDA_CODIGO, m.PAGO_VENTA_COTIZACION, mp.MEDIO_PAGO_CODIGO, v.VENTA_CODIGO
		FROM GD_ESQUEMA.MAESTRA m
		JOIN MONEDA mn on mn.MONEDA_NOMBRE = m.PAGO_VENTA_MONEDA
		JOIN MEDIO_PAGO mp on mp.MEDIO_PAGO_NOMBRE = m.PAGO_VENTA_MEDIO_PAGO
		JOIN VENTA v on v.VENTA_CODIGO = m.VENTA_CODIGO
		WHERE m.PAGO_VENTA_IMPORTE is not null
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_ALQUILER
AS
BEGIN
	INSERT INTO SYSTEAM.ALQUILER
		(ALQUILER_CODIGO, ALQUILER_FECHA_INICIO, ALQUILER_FECHA_FIN, ALQUILER_CANT_PERIODOS, ALQUILER_DEPOSITO, ALQUILER_COMISION, ALQUILER_GASTOS_AVERIGUA, ALQUILER_ESTADO, INQUILINO_CODIGO, ANUNCIO_CODIGO)
		SELECT DISTINCT m.ALQUILER_CODIGO, m.ALQUILER_FECHA_INICIO, m.ALQUILER_FECHA_FIN, m.ALQUILER_CANT_PERIODOS, m.ALQUILER_DEPOSITO, m.ALQUILER_COMISION, m.ALQUILER_GASTOS_AVERIGUA, m.ALQUILER_ESTADO, iq.INQUILINO_CODIGO, a.ANUNCIO_CODIGO
		FROM gd_esquema.Maestra m
		JOIN INQUILINO iq on iq.INQUILINO_DNI = m.INQUILINO_DNI AND iq.INQUILINO_APELLIDO = m.INQUILINO_APELLIDO
		JOIN ANUNCIO a on a.ANUNCIO_CODIGO = m.ANUNCIO_CODIGO
		WHERE m.ALQUILER_CODIGO is not null
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_PAGO_ALQUILER
AS
BEGIN
	INSERT INTO SYSTEAM.PAGO_ALQUILER
		(PAGO_ALQUILER_CODIGO, PAGO_ALQUILER_FECHA, PAGO_ALQUILER_FECHA_VENCIMIENTO, PAGO_ALQUILER_NRO_PERIODO, PAGO_ALQUILER_DESC, PAGO_ALQUILER_FECHA_INI, PAGO_ALQUILER_FECHA_FIN, PAGO_ALQUILER_IMPORTE, MEDIO_PAGO_CODIGO, ALQUILER_CODIGO)
		SELECT DISTINCT m.PAGO_ALQUILER_CODIGO, m.PAGO_ALQUILER_FECHA, m.PAGO_ALQUILER_FECHA_VENCIMIENTO, m.PAGO_ALQUILER_NRO_PERIODO, m.PAGO_ALQUILER_DESC, m.PAGO_ALQUILER_FEC_INI, m.PAGO_ALQUILER_FEC_FIN, m.PAGO_ALQUILER_IMPORTE, mp.MEDIO_PAGO_CODIGO, al.ALQUILER_CODIGO
		FROM GD_ESQUEMA.MAESTRA m
		JOIN MEDIO_PAGO mp on mp.MEDIO_PAGO_NOMBRE = m.PAGO_ALQUILER_MEDIO_PAGO
		JOIN ALQUILER al on al.ALQUILER_CODIGO = m.ALQUILER_CODIGO
		WHERE m.PAGO_ALQUILER_CODIGO is not null
END
GO

CREATE PROCEDURE SYSTEAM.CARGAR_DETALLE_ALQUILER
AS
BEGIN
	INSERT INTO SYSTEAM.DETALLE_ALQUILER
		(ALQUILER_CODIGO, DETALLE_ALQ_NRO_PERIODO_INI, DETALLE_ALQ_NRO_PERIODO_FIN, DETALLE_ALQUILER_PRECIO)
		SELECT DISTINCT al.ALQUILER_CODIGO, m.DETALLE_ALQ_NRO_PERIODO_INI, m.DETALLE_ALQ_NRO_PERIODO_FIN, m.DETALLE_ALQ_PRECIO
		FROM GD_ESQUEMA.MAESTRA m
		JOIN ALQUILER al on al.ALQUILER_CODIGO = m.ALQUILER_CODIGO
		WHERE m.DETALLE_ALQ_NRO_PERIODO_INI is not null
END 
GO


EXEC SYSTEAM.CARGAR_MONEDA
EXEC SYSTEAM.CARGAR_TIPO_ANUNCIO
EXEC SYSTEAM.CARGAR_PROVINCIA
EXEC SYSTEAM.CARGAR_LOCALIDAD
EXEC SYSTEAM.CARGAR_BARRIO
EXEC SYSTEAM.CARGAR_SUCURSAL
EXEC SYSTEAM.CARGAR_AGENTE
EXEC SYSTEAM.CARGAR_PROPIETARIO
EXEC SYSTEAM.CARGAR_COMPRADOR
EXEC SYSTEAM.CARGAR_INQUILINO
EXEC SYSTEAM.CARGAR_INMUEBLE_ESTADO
EXEC SYSTEAM.CARGAR_INMUEBLE_CARACTERISTICA
EXEC SYSTEAM.CARGAR_INMUEBLE_CANT_AMBIENTES
EXEC SYSTEAM.CARGAR_INMUEBLE_DISPOSICION
EXEC SYSTEAM.CARGAR_INMUEBLE_TIPO
EXEC SYSTEAM.CARGAR_INMUEBLE_ORIENTACION
EXEC SYSTEAM.CARGAR_CARACTERISTICA_POR_INMUEBLE
EXEC SYSTEAM.CARGAR_INMUEBLE
EXEC SYSTEAM.CARGAR_ANUNCIO
EXEC SYSTEAM.CARGAR_MEDIO_PAGO
EXEC SYSTEAM.CARGAR_VENTA
EXEC SYSTEAM.CARGAR_PAGO_VENTA
EXEC SYSTEAM.CARGAR_ALQUILER
EXEC SYSTEAM.CARGAR_PAGO_ALQUILER
EXEC SYSTEAM.CARGAR_DETALLE_ALQUILER

-- OBTENER LA PROVINCIA DE LA SUCURSAL A PARTIR DE LA LOCALIDAD:
/*
	SELECT 
		s.SUCURSAL_CODIGO, 
		s.SUCURSAL_NOMBRE, 
		s.SUCURSAL_DIRECCION, 
		s.SUCURSAL_TELEFONO, 
		l.LOCALIDAD_CODIGO,
		p.PROVINCIA_NOMBRE
	FROM 
		SYSTEAM.SUCURSAL s
	JOIN 
		SYSTEAM.LOCALIDAD l ON l.LOCALIDAD_CODIGO = s.LOCALIDAD_CODIGO
	JOIN 
		SYSTEAM.PROVINCIA p ON p.PROVINCIA_CODIGO = l.PROVINCIA_CODIGO
	WHERE 
		s.SUCURSAL_CODIGO IS NOT NULL;
*/

--OBTENER LA PROVINCIA Y LOCALIDAD DEL INMUEBLE A PARTIR DEL BARRIO:
/*
	SELECT
		I.INMUEBLE_CODIGO AS INMUEBLE,
		B.BARRIO_NOMBRE AS BARRIO,
		L.LOCALIDAD_NOMBRE AS LOCALIDAD,
		P.PROVINCIA_NOMBRE AS PROVINCIA
	FROM
		SYSTEAM.BARRIO B
	JOIN
		SYSTEAM.LOCALIDAD L ON B.LOCALIDAD_CODIGO = L.LOCALIDAD_CODIGO
	JOIN
		SYSTEAM.PROVINCIA P ON L.PROVINCIA_CODIGO = P.PROVINCIA_CODIGO
	JOIN
		SYSTEAM.INMUEBLE I ON B.BARRIO_CODIGO = I.BARRIO_CODIGO;
*/

--SELECT * FROM SYSTEAM.INMUEBLE;

SELECT * FROM SYSTEAM.ANUNCIO