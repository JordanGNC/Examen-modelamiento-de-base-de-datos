CREATE TABLE afiliados (
    id_afiliados                NUMERIC NOT NULL,
    primer_nombre               VARCHAR2(250) NOT NULL,
    segundo_nombre              VARCHAR2(250) NULL,
    apellido_paterno            VARCHAR2(250) NOT NULL,
    apellido_materno            VARCHAR2(250) NULL,
    pasaporte                   VARCHAR2(20) NULL,
    rut                         NUMERIC(8)  NULL,
    digito_verificador          VARCHAR2(1) NULL,
    correo_electronico          VARCHAR2(250) NOT NULL,
    fecha_nacimiento            DATE NOT NULL,
    direccion                   VARCHAR2(250) NOT NULL
);

CREATE TABLE nacionalidad (
    id_nacionalidad             NUMERIC NOT NULL,
    pais                        VARCHAR(250) NOT NULL
);

CREATE TABLE carga (
    id_carga                    NUMERIC NOT NULL,
    primer_nombre_carga         VARCHAR2(250) NOT NULL,
    segundo_nombre_carga        VARCHAR2(250) NULL,
    apellido_paterno_carga      VARCHAR2(250) NOT NULL,
    apellido_materno_carga      VARCHAR2(250) NULL,
    rut_carga                   NUMERIC(8) NOT NULL,
    digito_verificador_carga    VARCHAR2(1) NOT NULL,
    fecha_nacimiento_carga      DATE NOT NULL
);

CREATE TABLE parentesco (
    id_parentesco               NUMERIC NOT NULL,
    parentesco_con_la_carga     VARCHAR2(250) NOT NULL
);

CREATE TABLE estado_civil (
    id_estadocivil              NUMERIC NOT NULL,
    acuerdo_civil               VARCHAR(250) NOT NULL
);

CREATE TABLE estado_de_solicitud (
    id_solicitud                NUMERIC NOT NULL,
    fecha_registro_de_solicitud DATE NOT NULL,
    estado_solicitud            VARCHAR2(250)
);

CREATE TABLE telefonos (
    id_telefonos                NUMERIC NOT NULL,
    numero_de_telefono          NUMERIC(8) NOT NULL
);

CREATE TABLE tipos_de_telefonos (
    id_tipodetelefono           NUMERIC NOT NULL,
    tipo_de_telefono            VARCHAR2(250) NOT NULL
);

CREATE TABLE pagos (
    id_pagos                    NUMERIC NOT NULL,
    fecha_de_pago               DATE NOT NULL,
    valor_a_pagar               NUMERIC(20) NOT NULL
);

CREATE TABLE formas_de_pagos (
    id_formasdepago             NUMERIC NOT NULL,
    forma_de_pago               VARCHAR2(250) NOT NULL
);

CREATE TABLE cheques (
    id_cheque                   NUMERIC NOT NULL,
    numero_de_cheque            NUMERIC(20) NOT NULL
);

CREATE TABLE bancos (
    id_banco                    NUMERIC NOT NULL,
    nombre_banco                VARCHAR2(250) NOT NULL
);

CREATE TABLE comunas (
    id_comuna                   NUMERIC NOT NULL,
    nombre_comuna               VARCHAR2(250) NOT NULL
);

CREATE TABLE provincias (
    id_provincia                NUMERIC NOT NULL,
    nombre_provincia            VARCHAR2(250) NOT NULL
);

CREATE TABLE regiones (
    id_region                   NUMERIC NOT NULL,
    nombre_region               VARCHAR2(250) NOT NULL
);

CREATE TABLE vehiculo (
    id_auto                     NUMERIC NOT NULL,
    marca                       VARCHAR2(250) NOT NULL,
    modelo_vehiculo             VARCHAR2(250) NOT NULL,
    patente                     VARCHAR2(250) NOT NULL,
    color                       VARCHAR2(250) NOT NULL,
    numero_chasis               NUMERIC(20) NOT NULL,
    numero_motor                NUMERIC(20) NOT NULL
);

CREATE TABLE estado_de_vehiculo (
    id_estadodevehiculo         NUMERIC NOT NULL,
    estado                      VARCHAR2(250) NOT NULL,
    descuento_vehiculo          VARCHAR2(250) NOT NULL
);

CREATE TABLE aseguradora_de_vehiculo (
    id_aseguradora              NUMERIC NOT NULL,
    nombre_aseguradora          VARCHAR2(250) NOT NULL,
    direccion_aseguradora       VARCHAR2(250) NOT NULL
);

CREATE TABLE empresa (
    id_empresa                  NUMERIC NOT NULL,
    nombre_empresa              VARCHAR2(250) NOT NULL,
    direccion_empresa           VARCHAR2(250) NOT NULL
);

CREATE TABLE sindicato (
    id_sindicato                NUMERIC NOT NULL,
    nombre_de_sindicato         VARCHAR2(250) NOT NULL
);

CREATE TABLE beneficio_transporte (
    id_beneficiotransporte      NUMERIC NOT NULL,
    tipo_de_transporte          VARCHAR2(250) NOT NULL,
    descuento_transporte        VARCHAR2(250) NOT NULL
);

CREATE TABLE beneficios (
    id_beneficio                NUMERIC NOT NULL,
    descuento_beneficio         VARCHAR2(250) NOT NULL,
    nombre_de_beneficio         VARCHAR2(250) NOT NULL,
    cantidad_maxima_de_usos     NUMERIC(20) NOT NULL
);

CREATE TABLE discapacidad_afiliado (
    id_discapacidad             NUMERIC NOT NULL,
    cuenta_con_discapacidad     VARCHAR(250) NOT NULL
);

CREATE TABLE tipo_de_discapacidad (
    id_tipodediscapacidad       NUMERIC NOT NULL,
    nombre_de_discapacidad      VARCHAR2(250) NOT NULL
);