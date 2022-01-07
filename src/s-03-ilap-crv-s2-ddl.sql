--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      UNAM
-- Project :      relacional-crv-s2.DM1
-- Author :       mauri33445@live.com.mx
--
-- Date Created : Thursday, January 06, 2022 20:38:25
-- Target DBMS : Oracle 11g
--

-- 
-- TABLE: TIPO_TARJETA_VIDEO_R_CRV_S2 
--

CREATE TABLE TIPO_TARJETA_VIDEO_R_CRV_S2(
    TIPO_TARJETA_VIDEO_ID    NUMBER(5, 0)     NOT NULL,
    CLAVE                    VARCHAR2(40)     NOT NULL,
    DESCRIPCION              VARCHAR2(400)    NOT NULL,
    CONSTRAINT PK6_1 PRIMARY KEY (TIPO_TARJETA_VIDEO_ID)
)
;



-- 
-- TABLE: TIPO_ALMACENAMIENTO_R_CRV_S2 
--

CREATE TABLE TIPO_ALMACENAMIENTO_R_CRV_S2(
    TIPO_ALMACENAMIENTO_ID    NUMBER(5, 0)     NOT NULL,
    CLAVE                     VARCHAR2(40)     NOT NULL,
    DESCRIPCION               VARCHAR2(400)    NOT NULL,
    CONSTRAINT PK6_2 PRIMARY KEY (TIPO_ALMACENAMIENTO_ID)
)
;



-- 
-- TABLE: TIPO_MONITOR_R_CRV_S2 
--

CREATE TABLE TIPO_MONITOR_R_CRV_S2(
    TIPO_MONITOR_ID    NUMBER(5, 0)     NOT NULL,
    CLAVE              VARCHAR2(40)     NOT NULL,
    DESCRIPCION        VARCHAR2(400)    NOT NULL,
    CONSTRAINT PK6_2_1 PRIMARY KEY (TIPO_MONITOR_ID)
)
;



-- 
-- TABLE: TIPO_PROCESADOR_R_CRV_S2 
--

CREATE TABLE TIPO_PROCESADOR_R_CRV_S2(
    TIPO_PROCESADOR_ID    NUMBER(5, 0)     NOT NULL,
    CLAVE                 VARCHAR2(40)     NOT NULL,
    DESCRIPCION           VARCHAR2(400)    NOT NULL,
    CONSTRAINT PK6 PRIMARY KEY (TIPO_PROCESADOR_ID)
)
;



-- 
-- TABLE: LAPTOP_F4_CRV_S2 
--

CREATE TABLE LAPTOP_F4_CRV_S2(
    LAPTOP_ID                 NUMBER(10, 0)     NOT NULL,
    NUM_SERIE                 VARCHAR2(18)      NOT NULL,
    CANTIDAD_RAM              NUMBER(6, 0)      NOT NULL,
    CARACTERISTICAS_EXTRAS    VARCHAR2(2000)    NOT NULL,
    FOTO                      BLOB              NOT NULL,
    TIPO_TARJETA_VIDEO_ID     NUMBER(5, 0)      NOT NULL,
    TIPO_ALMACENAMIENTO_ID    NUMBER(5, 0)      NOT NULL,
    TIPO_MONITOR_ID           NUMBER(5, 0)      NOT NULL,
    TIPO_PROCESADOR_ID        NUMBER(5, 0)      NOT NULL,
    LAPTOP_REEMPLAZO_ID       NUMBER(10, 0),
    CONSTRAINT PK9_1 PRIMARY KEY (LAPTOP_ID), 
    CONSTRAINT RefTIPO_TARJETA_VIDEO_R_CRV_14 FOREIGN KEY (TIPO_TARJETA_VIDEO_ID)
    REFERENCES TIPO_TARJETA_VIDEO_R_CRV_S2(TIPO_TARJETA_VIDEO_ID),
    CONSTRAINT RefTIPO_ALMACENAMIENTO_R_CRV15 FOREIGN KEY (TIPO_ALMACENAMIENTO_ID)
    REFERENCES TIPO_ALMACENAMIENTO_R_CRV_S2(TIPO_ALMACENAMIENTO_ID),
    CONSTRAINT RefTIPO_MONITOR_R_CRV_S216 FOREIGN KEY (TIPO_MONITOR_ID)
    REFERENCES TIPO_MONITOR_R_CRV_S2(TIPO_MONITOR_ID),
    CONSTRAINT RefTIPO_PROCESADOR_R_CRV_S217 FOREIGN KEY (TIPO_PROCESADOR_ID)
    REFERENCES TIPO_PROCESADOR_R_CRV_S2(TIPO_PROCESADOR_ID)
)
;



-- 
-- TABLE: LAPTOP_F5_CRV_S2 
--

CREATE TABLE LAPTOP_F5_CRV_S2(
    LAPTOP_ID    NUMBER(10, 0)    NOT NULL,
    FOTO         BLOB             NOT NULL,
    CONSTRAINT PK9 PRIMARY KEY (LAPTOP_ID)
)
;



-- 
-- TABLE: SUCURSAL_F4_CRV_S2 
--

CREATE TABLE SUCURSAL_F4_CRV_S2(
    SUCURSAL_ID    NUMBER(10, 0)    NOT NULL,
    CLAVE          VARCHAR2(10)     NOT NULL,
    ES_TALLER      NUMBER(1, 0)     NOT NULL,
    ES_VENTA       NUMBER(1, 0)     NOT NULL,
    NOMBRE         VARCHAR2(40)     NOT NULL,
    LATITUD        BINARY_FLOAT     NOT NULL,
    LONGITUD       BINARY_FLOAT     NOT NULL,
    URL            VARCHAR2(200)    NOT NULL,
    CONSTRAINT PK1 PRIMARY KEY (SUCURSAL_ID)
)
;



-- 
-- TABLE: SUCURSAL_TALLER_F4_CRV_S2 
--

CREATE TABLE SUCURSAL_TALLER_F4_CRV_S2(
    SUCURSAL_ID          NUMBER(10, 0)    NOT NULL,
    DIA_DESCANSO         NUMBER(1, 0)     NOT NULL,
    TELEFONO_ATENCION    VARCHAR2(20)     NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY (SUCURSAL_ID), 
    CONSTRAINT RefSUCURSAL_F4_CRV_S21 FOREIGN KEY (SUCURSAL_ID)
    REFERENCES SUCURSAL_F4_CRV_S2(SUCURSAL_ID)
)
;



-- 
-- TABLE: SERVICIO_LAPTOP_F4_CRV_S2 
--

CREATE TABLE SERVICIO_LAPTOP_F4_CRV_S2(
    NUM_SERVICIO    NUMBER(10, 0)     NOT NULL,
    LAPTOP_ID       NUMBER(10, 0)     NOT NULL,
    IMPORTE         NUMBER(8, 2)      NOT NULL,
    DIAGNOSTICO     VARCHAR2(2000)    NOT NULL,
    FACTURA         BLOB,
    SUCURSAL_ID     NUMBER(10, 0)     NOT NULL,
    CONSTRAINT PK10 PRIMARY KEY (NUM_SERVICIO, LAPTOP_ID), 
    CONSTRAINT RefSUCURSAL_TALLER_F4_CRV_S28 FOREIGN KEY (SUCURSAL_ID)
    REFERENCES SUCURSAL_TALLER_F4_CRV_S2(SUCURSAL_ID),
    CONSTRAINT RefLAPTOP_F5_CRV_S29 FOREIGN KEY (LAPTOP_ID)
    REFERENCES LAPTOP_F5_CRV_S2(LAPTOP_ID)
)
;



-- 
-- TABLE: STATUS_LAPTOP 
--

CREATE TABLE STATUS_LAPTOP(
    STATUS_LAPTOP_ID    NUMBER(5, 0)     NOT NULL,
    CLAVE               VARCHAR2(40)     NOT NULL,
    DESCRIPCION         VARCHAR2(400)    NOT NULL,
    CONSTRAINT PK12 PRIMARY KEY (STATUS_LAPTOP_ID)
)
;



-- 
-- TABLE: SUCURSAL_VENTA_F4_CRV_S2 
--

CREATE TABLE SUCURSAL_VENTA_F4_CRV_S2(
    SUCURSAL_ID      NUMBER(10, 0)    NOT NULL,
    HORA_APERTURA    DATE             NOT NULL,
    HORA_CIERRE      DATE             NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY (SUCURSAL_ID), 
    CONSTRAINT RefSUCURSAL_F4_CRV_S22 FOREIGN KEY (SUCURSAL_ID)
    REFERENCES SUCURSAL_F4_CRV_S2(SUCURSAL_ID)
)
;


