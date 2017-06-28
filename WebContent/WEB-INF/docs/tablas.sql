create user admin identified by admin;
grant connect, resource, create session, dba to admin;

conn admin/admin@xe;


create tablespace datos DATAFILE 'C:\DB\seguros\datos\datos.dbf' size 300M;
create tablespace indices DATAFILE 'C:\DB\seguros\datos\indices.dbf' size 300M;

drop table ge_sucursales purge;
drop table ge_empresas purge;
drop table ge_usu_grupos purge;
drop table ge_permisos purge;
drop table ge_programas purge;
drop table ge_modulos purge;
drop table ge_dom_componentes purge;
drop table ge_dominios purge;
drop table ge_profesiones purge;
drop table ge_per_direcciones purge;
drop table ge_per_telefonos purge;
drop table ge_per_documentos purge;
drop table ge_usuarios purge;
drop table ge_personas purge;
drop table ge_barrios purge;
drop table ge_ciudades purge;
drop table ge_departamentos purge;
drop table ge_paises purge;

create table ge_dominios(
id_dominio number(5),
descripcion varchar2(100) not null)
initrans 1
maxtrans 255
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_dominios
add constraint pkg_ge_dominios
primary key (id_dominio)
using index
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

grant select, insert, update, delete on ge_dominios to public;
create or replace public synonym ge_dominios for admin.ge_dominios;

create table ge_dom_componentes(
id_dominio    number(5),
id_componente number(5),
descripcion   varchar2(100) not null,
ind_principal varchar2(1) default 'N' not null)
initrans 1
maxtrans 255
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_dom_componentes
add constraint pkg_ge_dom_componentes
primary key (id_dominio,id_componente)
using index
storage(initial 3072K
        next 3072K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_dom_componentes
add constraint fk_ge_dom_componentes_01
foreign key (id_dominio)
references ge_dominios(id_dominio);

alter table ge_dom_componentes
add constraint chk_ge_dom_componentes_01
check (ind_principal in ('S','N'));

grant select, insert, update, delete on ge_dom_componentes to public;
create or replace public synonym ge_dom_componentes for admin.ge_dom_componentes;

create table ge_paises(
id_pais  number(5),
nom_pais varchar2(100) not null,
abr_pais varchar2(5) not null,
nac_pais varchar2(30) not null,
id_usu_alta varchar2(30) default user not null,
fec_alta    date default sysdate not null,
id_usu_modif varchar2(30),
fec_modif    date)
initrans 1
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_paises
add constraint pk_ge_paises
primary key (id_pais)
using index
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

grant select, insert, update, delete on ge_paises to public;
create or replace public synonym ge_paises for admin.ge_paises;

create table ge_departamentos(
id_pais          number(5),
id_departamento  number(5),
nom_departamento varchar2(100) not null,
abr_departamento varchar2(5) not null,
id_usu_alta      varchar2(30) default user not null,
fec_alta         date default sysdate not null,
id_usu_modif     varchar2(30),
fec_modif        date)
initrans 1
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_departamentos
add constraint pk_ge_departamentos
primary key (id_pais,id_departamento)
using index
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_departamentos
add constraint fk_ge_departamentos_01
foreign key (id_pais) references ge_paises(id_pais);

grant select, insert, update, delete on ge_departamentos to public;
create or replace public synonym ge_departamentos for admin.ge_departamentos;

create table ge_ciudades(
id_pais          number(5),
id_departamento  number(5),
id_ciudad        number(5),
nom_ciudad       varchar2(100) not null,
abr_ciudad       varchar2(5) not null,
id_usu_alta      varchar2(30) default user not null,
fec_alta         date default sysdate not null,
id_usu_modif     varchar2(30),
fec_modif        date)
initrans 1
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_ciudades
add constraint pk_ge_ciudades
primary key (id_pais,id_departamento,id_ciudad)
using index
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_ciudades
add constraint fk_ge_ciudades_01
foreign key (id_pais) references ge_paises(id_pais);

alter table ge_ciudades
add constraint fk_ge_ciudades_02
foreign key (id_pais,id_departamento) references ge_departamentos(id_pais,id_departamento);

grant select, insert, update, delete on ge_ciudades to public;
create or replace public synonym ge_ciudades for admin.ge_ciudades;

create table ge_barrios(
id_pais          number(5),
id_departamento  number(5),
id_ciudad        number(5),
id_barrio        number(5),
nom_barrio       varchar2(100) not null,
abr_barrio       varchar2(5) not null,
id_usu_alta      varchar2(30) default user not null,
fec_alta         date default sysdate not null,
id_usu_modif     varchar2(30),
fec_modif        date)
initrans 1
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_barrios
add constraint pk_ge_barrios
primary key (id_pais,id_departamento,id_ciudad,id_barrio)
using index
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_barrios
add constraint fk_ge_barrios_01
foreign key (id_pais) references ge_paises(id_pais);

alter table ge_barrios
add constraint fk_ge_barrios_02
foreign key (id_pais,id_departamento) references ge_departamentos(id_pais,id_departamento);

alter table ge_barrios
add constraint fk_ge_barrios_03
foreign key (id_pais,id_departamento,id_ciudad) references ge_ciudades(id_pais,id_departamento,id_ciudad);

grant select, insert, update, delete on ge_barrios to public;
create or replace public synonym ge_barrios for admin.ge_barrios;

create table ge_profesiones(
id_profesion number(5),
descripcion varchar2(100) not null)
initrans 1
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_profesiones
add constraint pk_ge_profesiones
primary key (id_profesion)
using index
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

grant insert, update, delete, select on ge_profesiones to public;
create or replace public synonym ge_profesiones for admin.ge_profesiones;

create table ge_personas(
id_persona       number(15),
ind_fisica       varchar2(1) default 'S' not null,
nombres          varchar2(100) not null,
apellidos        varchar2(100),
nom_fantasia     varchar2(100),
id_pais_nac      number(5),
id_dep_nac       number(5),
id_ciu_nac       number(5),
fec_nacimiento   date not null,
id_profesion     number(5),
niv_estudio      number(5),
est_civil        number(5),
tip_sociedad     number(5),
mail             varchar2(200),
web              varchar2(200),
id_per_conyugue  number(15),
id_usu_alta      varchar2(30) default user not null,
fec_alta         date default sysdate not null,
id_usu_modif     varchar2(30),
fec_modif        date)
initrans 1
maxtrans 255
storage(initial 20480K
        next 20480K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

comment on column ge_personas.niv_estudio  is 'Se recupera del dominio con el mismo nombre';
comment on column ge_personas.est_civil    is 'Se recupera del dominio con el mismo nombre';
comment on column ge_personas.tip_sociedad is 'Se recupera del dominio con el mismo nombre';

alter table ge_personas
add constraint pk_ge_personas
primary key(
id_persona
)
using index
initrans 2
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

grant select, insert, update, delete on ge_personas to public;
create or replace public synonym ge_personas for admin.ge_personas;

create table ge_per_direcciones(
id_persona      number(15),
id_direccion    number(5),
id_pais         number(5) not null,
id_departamento number(5) not null,
id_ciudad       number(5) not null,
id_barrio       number(5),
direccion       varchar2(200) not null,
numero          number(5) not null,
cod_postal      varchar2(5),
ind_principal   varchar2(1) default 'N' not null)
initrans 1
maxtrans 255
storage(initial 20480K
        next 20480K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_per_direcciones
add constraint pk_ge_per_direcciones
primary key(
id_persona,
id_direccion
)
using index
initrans 2
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_per_direcciones
add constraint fk_ge_per_direciones_01
foreign key (id_pais) references ge_paises(id_pais);

alter table ge_per_direcciones
add constraint fk_ge_per_direciones_02
foreign key (id_pais,id_departamento) references ge_departamentos(id_pais,id_departamento);

alter table ge_per_direcciones
add constraint fk_ge_per_direciones_03
foreign key (id_pais,id_departamento,id_ciudad) references ge_ciudades(id_pais,id_departamento,id_ciudad);

alter table ge_per_direcciones
add constraint fk_ge_per_direciones_04
foreign key (id_persona) references ge_personas(id_persona);

alter table ge_per_direcciones 
add constraint chk_ge_per_direcciones_01
check (ind_principal in ('S','N'));

grant select, insert, update, delete on ge_per_direcciones to public;
create or replace public synonym ge_per_direcciones for admin.ge_per_direcciones;

create table ge_per_telefonos(
id_persona      number(15),
id_telefono     number(5),
tip_telefono    number(5) not null,
cod_area        varchar2(20) not null,
nro_telefono    varchar2(50) not null,
nro_interno     varchar2(5),
comentario      varchar2(100),
ind_principal   varchar2(1) default 'N' not null)
initrans 1
maxtrans 255
storage(initial 20480K
        next 20480K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

comment on column ge_per_telefonos.tip_telefono  is 'Se recupera del dominio con el mismo nombre';

alter table ge_per_telefonos
add constraint pk_ge_per_telefonos
primary key(
id_persona,
id_telefono
)
using index
initrans 2
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_per_telefonos
add constraint fk_ge_per_telefonos_01
foreign key (id_persona) references ge_personas(id_persona);

alter table ge_per_telefonos 
add constraint chk_ge_telefonos_01
check (ind_principal in ('S','N'));

grant select, insert, update, delete on ge_per_telefonos to public;
create or replace public synonym ge_per_telefonos for admin.ge_per_telefonos;

create table ge_per_documentos(
id_persona      number(15),
tip_documento   number(5) not null,
nro_documento   varchar2(50) not null,
fec_vencimiento date)
initrans 1
maxtrans 255
storage(initial 20480K
        next 20480K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

comment on column ge_per_documentos.tip_documento is 'Se recupera del dominio del mismo nombre';

alter table ge_per_documentos
add constraint pk_ge_per_documentos
primary key(
id_persona,
tip_documento
)
using index
initrans 2
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_per_documentos
add constraint fk_ge_per_documentos_01
foreign key (id_persona) references ge_personas(id_persona);

grant select, insert, update, delete on ge_per_documentos to public;
create or replace public synonym ge_per_documentos for admin.ge_per_documentos;

create table ge_usuarios(
id_usuario    varchar2(30),
clave         varchar2(30) not null,
id_grupo      number(5) not null,
id_persona    number(15) not null,
id_empresa    number(5) not null,
id_sucursal   number(5) not null,
ind_cam_clave varchar2(1) default 'N' not null,
ind_per_clave varchar2(1) default 'N' not null,
activo        varchar2(1) default 'S' not null)
initrans 1
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

comment on column ge_usuarios.ind_cam_clave is 'Debe cambiar la clave la primera vez que inicia';
comment on column ge_usuarios.ind_per_clave is 'Permite cambiar la clave';

alter table ge_usuarios
add constraint pk_ge_usuarios
primary key(
id_usuario
)
using index
initrans 2
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_usuarios
add constraint fk_ge_usuarios_01
foreign key (id_persona) references ge_personas(id_persona);

alter table ge_usuarios
add constraint chk_ge_usuarios_01
check (activo in ('S','N'));

alter table ge_usuarios
add constraint chk_ge_usuarios_02
check (ind_cam_clave in ('S','N'));

alter table ge_usuarios
add constraint chk_ge_usuarios_03
check (ind_per_clave in ('S','N'));

grant insert, update, delete, select on ge_usuarios to public;
create or replace public synonym ge_usuarios for admin.ge_usuarios;

create table ge_modulos(
id_modulo   number(5),
descripcion varchar2(100) not null,
fec_inicio  date,
id_usu_alta varchar2(30) default user not null,
fec_alta    date default sysdate not null,
id_usu_modif varchar2(30),
fec_modif    date)
initrans 1
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_modulos
add constraint pk_ge_modulos
primary key(
id_modulo
)
using index
initrans 2
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

grant insert, update, delete, select on ge_modulos to public;
create or replace public synonym ge_modulos for admin.ge_modulos;

create table ge_programas(
id_modulo    number(5),
id_programa  number(5),
titulo       varchar2(50) not null,
descripcion  varchar2(100) not null,
tip_programa varchar2(1) not null,
activo       varchar2(1) default 'S' not null,
id_usu_alta  varchar2(30) default user not null,
fec_alta     date default sysdate not null,
id_usu_modif varchar2(30),
fec_modif    date)
initrans 1
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_programas
add constraint pk_ge_programas
primary key(
id_modulo,id_programa
)
using index
initrans 2
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_programas
add constraint chk_ge_programas_01
check (activo in ('S','N'));

alter table ge_programas
add constraint chk_ge_programas_02
check (tip_programa in ('D','M','R'));

comment on column ge_programas.tip_programa is 'D = Definicion - M = Mantenimiento - R = Reportes';

grant insert, update, delete, select on ge_programas to public;
create or replace public synonym ge_programas for admin.ge_programas;

create table ge_empresas(
id_empresa   number(5),
nom_empresa  varchar2(100) not null,
tit_reportes varchar2(50) not null,
id_persona   number(5),
logo         varchar2(200),
logo_reporte varchar2(200),
activo       varchar2(1) default 'S' not null,
id_usu_alta varchar2(30) default user not null,
fec_alta    date default sysdate not null,
id_usu_modif varchar2(30),
fec_modif    date)
initrans 1
maxtrans 255
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_empresas
add constraint pk_ge_empresas
primary key(
id_empresa
)
using index
initrans 2
maxtrans 255
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_empresas
add constraint chk_ge_empresas_01
check (activo in ('S','N'));

grant insert, update, delete, select on ge_empresas to public;
create or replace public synonym ge_empresas for admin.ge_empresas;

create table ge_sucursales(
id_empresa      number(5),
id_sucursal     number(5),
nom_sucursal    varchar2(100) not null,
id_per_empresa  number(15) not null,
id_dir_sucursal number(5) not null,
id_tel_sucursal number(5) not null,
ind_principal   varchar2(1) default 'S' not null,
activo          varchar2(1) default 'S' not null,
id_usu_alta     varchar2(30) default user not null,
fec_alta        date default sysdate not null,
id_usu_modif    varchar2(30),
fec_modif       date)
initrans 1
maxtrans 255
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_sucursales
add constraint pk_ge_sucursales
primary key(
id_empresa,id_sucursal
)
using index
initrans 2
maxtrans 255
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_sucursales
add constraint fk_ge_sucursales_01
foreign key (id_per_empresa,id_dir_sucursal)
references ge_per_direcciones(id_persona,id_direccion);

alter table ge_sucursales
add constraint fk_ge_sucursales_02
foreign key (id_per_empresa,id_tel_sucursal)
references ge_per_telefonos(id_persona,id_telefono);

alter table ge_sucursales
add constraint chk_ge_sucursales_01
check (activo in ('S','N'));

alter table ge_sucursales
add constraint chk_ge_sucursales_02
check (ind_principal in ('S','N'));

grant insert, update, delete, select on ge_sucursales to public;
create or replace public synonym ge_sucursales for admin.ge_sucursales;

create table ge_usu_grupos(
id_grupo        number(5),
descripcion     varchar2(100) not null,
activo          varchar2(1) default 'S' not null,
id_usu_alta     varchar2(30) default user not null,
fec_alta        date default sysdate not null,
id_usu_modif    varchar2(30),
fec_modif       date)
initrans 1
maxtrans 255
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_usu_grupos
add constraint pk_ge_usu_grupos
primary key(
id_grupo
)
using index
initrans 2
maxtrans 255
storage(initial 1024K
        next 1024K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_usu_grupos
add constraint chk_ge_usu_grupos_01
check (activo in ('S','N'));

grant select, insert, update, delete on ge_usu_grupos to public;
create or replace public synonym ge_usu_grupos for admin.ge_usu_grupos;

create table ge_permisos(
id_grupo        number(5),
id_modulo       number(5),
id_programa     number(5),
insertar        varchar2(1) default 'N' not null,
actualizar      varchar2(1) default 'N' not null,
borrar          varchar2(1) default 'N' not null,
imprimir        varchar2(1) default 'N' not null,
id_usu_alta     varchar2(30) default user not null,
fec_alta        date default sysdate not null,
id_usu_modif    varchar2(30),
fec_modif       date)
initrans 1
maxtrans 255
storage(initial 10240K
        next 10240K
        pctincrease 0
        maxextents unlimited)
tablespace datos;

alter table ge_permisos
add constraint pk_ge_permisos
primary key(
id_grupo,
id_modulo,
id_programa
)
using index
initrans 2
maxtrans 255
storage(initial 5120K
        next 5120K
        pctincrease 0
        maxextents unlimited)
tablespace indices;

alter table ge_permisos
add constraint chk_ge_permisos_01
check (insertar in ('S','N'));
alter table ge_permisos
add constraint chk_ge_permisos_02
check (actualizar in ('S','N'));
alter table ge_permisos
add constraint chk_ge_permisos_03
check (borrar in ('S','N'));
alter table ge_permisos
add constraint chk_ge_permisos_04
check (imprimir in ('S','N'));

grant select, insert, update, delete on ge_usu_grupos to public;
create or replace public synonym ge_usu_grupos for admin.ge_usu_grupos;

