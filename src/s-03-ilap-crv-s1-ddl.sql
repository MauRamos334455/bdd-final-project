-- @Autor: Carolina Kennedy Villa
--         C. Mauricio Ramos Villaseñor
-- @Fecha creación: 06/01/2021
-- @Descripción: DDL para el sitio CRV_S1

-- 
-- TABLE: TIPO_ALMACENAMIENTO_R_CRV_S1 
--

CREATE TABLE TIPO_ALMACENAMIENTO_R_CRV_S1(
    TIPO_ALMACENAMIENTO_ID    NUMBER(5, 0)     NOT NULL,
    CLAVE                     VARCHAR2(40)     NOT NULL,
    DESCRIPCION               VARCHAR2(400)    NOT NULL,
    CONSTRAINT TIPO_ALMACENAMIENTO_PK PRIMARY KEY (TIPO_ALMACENAMIENTO_ID)
)
;



-- 
-- TABLE: TIPO_MONITOR_R_CRV_S1 
--

CREATE TABLE TIPO_MONITOR_R_CRV_S1(
    TIPO_MONITOR_ID    NUMBER(5, 0)     NOT NULL,
    CLAVE              VARCHAR2(40)     NOT NULL,
    DESCRIPCION        VARCHAR2(400)    NOT NULL,
    CONSTRAINT TIPO_MONITOR_PK PRIMARY KEY (TIPO_MONITOR_ID)
)
;



-- 
-- TABLE: TIPO_PROCESADOR_R_CRV_S1 
--

CREATE TABLE TIPO_PROCESADOR_R_CRV_S1(
    TIPO_PROCESADOR_ID    NUMBER(5, 0)     NOT NULL,
    CLAVE                 VARCHAR2(40)     NOT NULL,
    DESCRIPCION           VARCHAR2(400)    NOT NULL,
    CONSTRAINT TIPO_PROCESADOR_PK PRIMARY KEY (TIPO_PROCESADOR_ID)
)
;



-- 
-- TABLE: TIPO_TARJETA_VIDEO_R_CRV_S1 
--

CREATE TABLE TIPO_TARJETA_VIDEO_R_CRV_S1(
    TIPO_TARJETA_VIDEO_ID    NUMBER(5, 0)     NOT NULL,
    CLAVE                    VARCHAR2(40)     NOT NULL,
    DESCRIPCION              VARCHAR2(400)    NOT NULL,
    CONSTRAINT TIPO_TARJETA_VIDEO_PK PRIMARY KEY (TIPO_TARJETA_VIDEO_ID)
)
;



-- 
-- TABLE: LAPTOP_F3_CRV_S1 
--

CREATE TABLE LAPTOP_F3_CRV_S1(
    LAPTOP_ID                 NUMBER(10, 0)     NOT NULL,
    NUM_SERIE                 VARCHAR2(18)      NOT NULL,
    CANTIDAD_RAM              NUMBER(6, 0)      NOT NULL,
    CARACTERISTICAS_EXTRAS    VARCHAR2(2000)    NOT NULL,
    TIPO_TARJETA_VIDEO_ID     NUMBER(5, 0)      NOT NULL,
    TIPO_ALMACENAMIENTO_ID    NUMBER(5, 0)      NOT NULL,
    TIPO_MONITOR_ID           NUMBER(5, 0)      NOT NULL,
    TIPO_PROCESADOR_ID        NUMBER(5, 0)      NOT NULL,
    LAPTOP_REEMPLAZO_ID       NUMBER(10, 0),
    CONSTRAINT LAPTOP_PK PRIMARY KEY (LAPTOP_ID), 
    CONSTRAINT LAPTOP_ALMACENAMIENTO_ID_FK FOREIGN KEY (TIPO_ALMACENAMIENTO_ID)
    REFERENCES TIPO_ALMACENAMIENTO_R_CRV_S1(TIPO_ALMACENAMIENTO_ID),
    CONSTRAINT LAPTOP_MONITOR_ID_FK FOREIGN KEY (TIPO_MONITOR_ID)
    REFERENCES TIPO_MONITOR_R_CRV_S1(TIPO_MONITOR_ID),
    CONSTRAINT LAPTOP_PROCESADOR_ID_FK FOREIGN KEY (TIPO_PROCESADOR_ID)
    REFERENCES TIPO_PROCESADOR_R_CRV_S1(TIPO_PROCESADOR_ID),
    CONSTRAINT LAPTOP_TARJETA_VIDEO_ID_FK FOREIGN KEY (TIPO_TARJETA_VIDEO_ID)
    REFERENCES TIPO_TARJETA_VIDEO_R_CRV_S1(TIPO_TARJETA_VIDEO_ID)
)
;



-- 
-- TABLE: LAPTOP_INVENTARIO_F2_CRV_S1 
--

CREATE TABLE LAPTOP_INVENTARIO_F2_CRV_S1(
    LAPTOP_ID      NUMBER(10, 0)    NOT NULL,
    RFC_CLIENTE    VARCHAR2(13),
    NUM_TARJETA    VARCHAR2(16),
    CONSTRAINT LAPTOP_INVENTARIO_PK PRIMARY KEY (LAPTOP_ID)
)
;



-- 
-- TABLE: SUCURSAL_F3_CRV_S1 
--

CREATE TABLE SUCURSAL_F3_CRV_S1(
    SUCURSAL_ID    NUMBER(10, 0)    NOT NULL,
    CLAVE          VARCHAR2(10)     NOT NULL,
    ES_TALLER      NUMBER(1, 0)     NOT NULL,
    ES_VENTA       NUMBER(1, 0)     NOT NULL,
    NOMBRE         VARCHAR2(40)     NOT NULL,
    LATITUD        VARCHAR2(38)     NOT NULL,
    LONGITUD       VARCHAR2(38)     NOT NULL,
    URL            VARCHAR2(200)    NOT NULL,
    CONSTRAINT SUCURSAL_PK PRIMARY KEY (SUCURSAL_ID),
    CONSTRAINT SUCURSAL_CHK CHECK (
      (SUBSTR(CLAVE, 3,2) = 'WS' AND ES_VENTA = 1 AND ES_TALLER = 0) OR
      (SUBSTR(CLAVE, 3,2) = 'WS' AND ES_VENTA = 0 AND ES_TALLER = 1)
    )
)
;



-- 
-- TABLE: SUCURSAL_TALLER_F3_CRV_S1 
--

CREATE TABLE SUCURSAL_TALLER_F3_CRV_S1(
    SUCURSAL_ID          NUMBER(10, 0)    NOT NULL,
    DIA_DESCANSO         NUMBER(1, 0)     NOT NULL,
    TELEFONO_ATENCION    VARCHAR2(20)     NOT NULL,
    CONSTRAINT SUCURSAL_TALLER_PK PRIMARY KEY (SUCURSAL_ID), 
    CONSTRAINT SUCURSAL_TALLER_SUCURSAL_ID_FK FOREIGN KEY (SUCURSAL_ID)
    REFERENCES SUCURSAL_F3_CRV_S1(SUCURSAL_ID)
)
;



-- 
-- TABLE: SERVICIO_LAPTOP_F3_CRV_S1 
--

CREATE TABLE SERVICIO_LAPTOP_F3_CRV_S1(
    NUM_SERVICIO    NUMBER(10, 0)     NOT NULL,
    LAPTOP_ID       NUMBER(10, 0)     NOT NULL,
    IMPORTE         VARCHAR2(30)      NOT NULL,
    DIAGNOSTICO     VARCHAR2(2000)    NOT NULL,
    FACTURA         BLOB,
    SUCURSAL_ID     NUMBER(10, 0)     NOT NULL,
    CONSTRAINT SERVICIO_LAPTOP_PK PRIMARY KEY (NUM_SERVICIO, LAPTOP_ID), 
    CONSTRAINT SERVICIO_LAPTOP_SUCURSAL_ID_FK FOREIGN KEY (SUCURSAL_ID)
    REFERENCES SUCURSAL_TALLER_F3_CRV_S1(SUCURSAL_ID)
)
;



-- 
-- TABLE: STATUS_LAPTOP 
--

CREATE TABLE STATUS_LAPTOP(
    STATUS_LAPTOP_ID    NUMBER(5, 0)     NOT NULL,
    CLAVE               VARCHAR2(40)     NOT NULL,
    DESCRIPCION         VARCHAR2(400)    NOT NULL,
    CONSTRAINT STATUS_LAPTOP_PK PRIMARY KEY (STATUS_LAPTOP_ID)
)
;



-- 
-- TABLE: SUCURSAL_VENTA_F3_CRV_S1 
--

CREATE TABLE SUCURSAL_VENTA_F3_CRV_S1(
    SUCURSAL_ID      NUMBER(10, 0)    NOT NULL,
    HORA_APERTURA    DATE             NOT NULL,
    HORA_CIERRE      DATE             NOT NULL,
    CONSTRAINT SUCURSAL_VENTA_PK PRIMARY KEY (SUCURSAL_ID),
    CONSTRAINT SUCURSAL_VENTA_SUCURSAL_ID_FK FOREIGN KEY (SUCURSAL_ID)
    REFERENCES SUCURSAL_F3_CRV_S1(SUCURSAL_ID)
)
;