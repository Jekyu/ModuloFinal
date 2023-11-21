/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     20/11/2023 10:47:52 p. m.                    */
/*==============================================================*/


drop index RELATIONSHIP_2_FK;

drop index RELATIONSHIP_1_FK;

drop index CONTACTO_PK;

drop table CONTACTO;

drop index RELATIONSHIP_17_FK;

drop index RELATIONSHIP_16_FK;

drop index DETALLEENSAMBLE_PK;

drop table DETALLEENSAMBLE;

drop index RELATIONSHIP_18_FK;

drop index RELATIONSHIP_15_FK;

drop index RELATIONSHIP_13_FK;

drop index RELATIONSHIP_12_FK;

drop index DETALLEFACTURA_PK;

drop table DETALLEFACTURA;

drop index RELATIONSHIP_5_FK;

drop index EMPLEADO_PK;

drop table EMPLEADO;

drop index RELATIONSHIP_27_FK;

drop index ENSAMBLE_PK;

drop table ENSAMBLE;

drop index EVENTO_PK;

drop table EVENTO;

drop index RELATIONSHIP_11_FK;

drop index RELATIONSHIP_10_FK;

drop index RELATIONSHIP_9_FK;

drop index RELATIONSHIP_8_FK;

drop index FACTURA_PK;

drop table FACTURA;

drop index FORMAPAGO_PK;

drop table FORMAPAGO;

drop index RELATIONSHIP_7_FK;

drop index RELATIONSHIP_6_FK;

drop index HISTORIACARGO_PK;

drop table HISTORIACARGO;

drop index RELATIONSHIP_26_FK;

drop index RELATIONSHIP_20_FK;

drop index RELATIONSHIP_19_FK;

drop index INVENTARIO_PK;

drop table INVENTARIO;

drop index RELATIONSHIP_4_FK;

drop index RELATIONSHIP_3_FK;

drop index PERSONA_PK;

drop table PERSONA;

drop index RELATIONSHIP_25_FK;

drop index RELATIONSHIP_24_FK;

drop index RELATIONSHIP_23_FK;

drop index REFCARAC_PK;

drop table REFCARAC;

drop index RELATIONSHIP_22_FK;

drop index REFERENCIAELEMENTO_PK;

drop table REFERENCIAELEMENTO;

drop index TIPOCARACTERISTICA_PK;

drop table TIPOCARACTERISTICA;

drop index TIPOCARGO_PK;

drop table TIPOCARGO;

drop index TIPOCONTACTO_PK;

drop table TIPOCONTACTO;

drop index TIPODETALLE_PK;

drop table TIPODETALLE;

drop index TIPOELEMENTO_PK;

drop table TIPOELEMENTO;

drop index TIPOFACTURA_PK;

drop table TIPOFACTURA;

drop index TIPOIDENTIFICA_PK;

drop table TIPOIDENTIFICA;

drop index TIPOPERSONA_PK;

drop table TIPOPERSONA;

drop index UNIDADMEDIA_PK;

drop table UNIDADMEDIA;

/*==============================================================*/
/* Table: CONTACTO                                              */
/*==============================================================*/
create table CONTACTO (
   IDCONSECCONTACTO     INT4                 not null,
   IDTIPOCON            VARCHAR(2)           null,
   IDPERSONA            VARCHAR(3)           not null,
   IDTIPOPERSONA        VARCHAR(2)           not null,
   VALORCONTACTO        VARCHAR(40)          null,
   OBSERVACION          VARCHAR(50)          null,
   constraint PK_CONTACTO primary key (IDCONSECCONTACTO, IDPERSONA, IDTIPOPERSONA)
);

/*==============================================================*/
/* Index: CONTACTO_PK                                           */
/*==============================================================*/
create unique index CONTACTO_PK on CONTACTO (
IDCONSECCONTACTO,
IDPERSONA,
IDTIPOPERSONA
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on CONTACTO (
IDTIPOCON
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_2_FK on CONTACTO (
IDPERSONA,
IDTIPOPERSONA
);

/*==============================================================*/
/* Table: DETALLEENSAMBLE                                       */
/*==============================================================*/
create table DETALLEENSAMBLE (
   ITEMENSAMBLE         INT4                 not null,
   CONSECC              INT4                 not null,
   NOINVEN              INT4                 not null,
   IDREF                INT4                 not null,
   constraint PK_DETALLEENSAMBLE primary key (ITEMENSAMBLE, CONSECC, NOINVEN, IDREF)
);

/*==============================================================*/
/* Index: DETALLEENSAMBLE_PK                                    */
/*==============================================================*/
create unique index DETALLEENSAMBLE_PK on DETALLEENSAMBLE (
ITEMENSAMBLE,
CONSECC,
NOINVEN,
IDREF
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_16_FK on DETALLEENSAMBLE (
CONSECC
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_17_FK on DETALLEENSAMBLE (
NOINVEN,
IDREF
);

/*==============================================================*/
/* Table: DETALLEFACTURA                                        */
/*==============================================================*/
create table DETALLEFACTURA (
   ITEM                 INT4                 not null,
   IDTIPODETA           VARCHAR(2)           not null,
   NFACTURA             INT4                 not null,
   CONSECC              INT4                 null,
   NOINVEN              INT4                 null,
   IDREF                INT4                 null,
   CANTIDAD             INT4                 null,
   PRECIO               NUMERIC(5,2)         null,
   constraint PK_DETALLEFACTURA primary key (ITEM, NFACTURA)
);

/*==============================================================*/
/* Index: DETALLEFACTURA_PK                                     */
/*==============================================================*/
create unique index DETALLEFACTURA_PK on DETALLEFACTURA (
ITEM,
NFACTURA
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_12_FK on DETALLEFACTURA (
IDTIPODETA
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_13_FK on DETALLEFACTURA (
NFACTURA
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on DETALLEFACTURA (
CONSECC
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_18_FK on DETALLEFACTURA (
NOINVEN,
IDREF
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   CODEMPLEADO          VARCHAR(3)           not null,
   TIPOIDENTIFI         VARCHAR(2)           not null,
   NOMEMPLEADO          VARCHAR(30)          null,
   APEEMPLEADO          VARCHAR(30)          null,
   IDENEMPLEADO         VARCHAR(15)          null,
   FCHINGRESO           DATE                 null,
   FCHNACIMIENTO        DATE                 null,
   constraint PK_EMPLEADO primary key (CODEMPLEADO)
);

/*==============================================================*/
/* Index: EMPLEADO_PK                                           */
/*==============================================================*/
create unique index EMPLEADO_PK on EMPLEADO (
CODEMPLEADO
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_5_FK on EMPLEADO (
TIPOIDENTIFI
);

/*==============================================================*/
/* Table: ENSAMBLE                                              */
/*==============================================================*/
create table ENSAMBLE (
   CONSECC              INT4                 not null,
   CODEMPLEADO          VARCHAR(3)           null,
   FCHENSAMBLE          DATE                 null,
   FACTURADO            BOOL                 null,
   constraint PK_ENSAMBLE primary key (CONSECC)
);

/*==============================================================*/
/* Index: ENSAMBLE_PK                                           */
/*==============================================================*/
create unique index ENSAMBLE_PK on ENSAMBLE (
CONSECC
);

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_27_FK on ENSAMBLE (
CODEMPLEADO
);

/*==============================================================*/
/* Table: EVENTO                                                */
/*==============================================================*/
create table EVENTO (
   IDEVENTO             VARCHAR(2)           not null,
   DESCEVENTO           VARCHAR(20)          null,
   constraint PK_EVENTO primary key (IDEVENTO)
);

/*==============================================================*/
/* Index: EVENTO_PK                                             */
/*==============================================================*/
create unique index EVENTO_PK on EVENTO (
IDEVENTO
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   NFACTURA             INT4                 not null,
   IDFORMAPAGO          VARCHAR(2)           not null,
   IDTIPOFAC            VARCHAR(2)           not null,
   IDPERSONA            VARCHAR(3)           not null,
   IDTIPOPERSONA        VARCHAR(2)           not null,
   CODEMPLEADO          VARCHAR(3)           not null,
   FCHFACTURA           DATE                 null,
   VALORFACTURA         NUMERIC(5,2)         null,
   constraint PK_FACTURA primary key (NFACTURA)
);

/*==============================================================*/
/* Index: FACTURA_PK                                            */
/*==============================================================*/
create unique index FACTURA_PK on FACTURA (
NFACTURA
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on FACTURA (
IDFORMAPAGO
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on FACTURA (
IDTIPOFAC
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_10_FK on FACTURA (
IDPERSONA,
IDTIPOPERSONA
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_11_FK on FACTURA (
CODEMPLEADO
);

/*==============================================================*/
/* Table: FORMAPAGO                                             */
/*==============================================================*/
create table FORMAPAGO (
   IDFORMAPAGO          VARCHAR(2)           not null,
   DESCFORMAPAGO        VARCHAR(20)          null,
   constraint PK_FORMAPAGO primary key (IDFORMAPAGO)
);

/*==============================================================*/
/* Index: FORMAPAGO_PK                                          */
/*==============================================================*/
create unique index FORMAPAGO_PK on FORMAPAGO (
IDFORMAPAGO
);

/*==============================================================*/
/* Table: HISTORIACARGO                                         */
/*==============================================================*/
create table HISTORIACARGO (
   CONSECCARGO          INT4                 not null,
   IDTIPOCARGO          VARCHAR(2)           not null,
   CODEMPLEADO          VARCHAR(3)           not null,
   FCHINICIO            DATE                 null,
   FCHFIN               DATE                 null,
   constraint PK_HISTORIACARGO primary key (CONSECCARGO)
);

/*==============================================================*/
/* Index: HISTORIACARGO_PK                                      */
/*==============================================================*/
create unique index HISTORIACARGO_PK on HISTORIACARGO (
CONSECCARGO
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_6_FK on HISTORIACARGO (
IDTIPOCARGO
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_7_FK on HISTORIACARGO (
CODEMPLEADO
);

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO (
   NOINVEN              INT4                 not null,
   NFACTURA             INT4                 null,
   IDEVENTO             VARCHAR(2)           not null,
   IDREF                INT4                 not null,
   FCHEVENTO            DATE                 null,
   VALOR                NUMERIC(4,2)         null,
   constraint PK_INVENTARIO primary key (NOINVEN, IDREF)
);

/*==============================================================*/
/* Index: INVENTARIO_PK                                         */
/*==============================================================*/
create unique index INVENTARIO_PK on INVENTARIO (
NOINVEN,
IDREF
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_19_FK on INVENTARIO (
NFACTURA
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_20_FK on INVENTARIO (
IDEVENTO
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_26_FK on INVENTARIO (
IDREF
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   IDPERSONA            VARCHAR(3)           not null,
   TIPOIDENTIFI         VARCHAR(2)           not null,
   IDTIPOPERSONA        VARCHAR(2)           not null,
   NOMPERSONA           VARCHAR(30)          null,
   APEPERSONA           VARCHAR(30)          null,
   FCHREGPER            DATE                 null,
   IDENPERSONA          VARCHAR(15)          null,
   constraint PK_PERSONA primary key (IDPERSONA, IDTIPOPERSONA)
);

/*==============================================================*/
/* Index: PERSONA_PK                                            */
/*==============================================================*/
create unique index PERSONA_PK on PERSONA (
IDPERSONA,
IDTIPOPERSONA
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on PERSONA (
TIPOIDENTIFI
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on PERSONA (
IDTIPOPERSONA
);

/*==============================================================*/
/* Table: REFCARAC                                              */
/*==============================================================*/
create table REFCARAC (
   ITEMREFCARA          INT4                 not null,
   IDREF                INT4                 not null,
   IDUNIDAD             VARCHAR(2)           null,
   IDTIPOCARAC          VARCHAR(4)           not null,
   VALORREFCARA         VARCHAR(30)          null,
   constraint PK_REFCARAC primary key (ITEMREFCARA, IDREF)
);

/*==============================================================*/
/* Index: REFCARAC_PK                                           */
/*==============================================================*/
create unique index REFCARAC_PK on REFCARAC (
ITEMREFCARA,
IDREF
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_23_FK on REFCARAC (
IDREF
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_24_FK on REFCARAC (
IDUNIDAD
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_25_FK on REFCARAC (
IDTIPOCARAC
);

/*==============================================================*/
/* Table: REFERENCIAELEMENTO                                    */
/*==============================================================*/
create table REFERENCIAELEMENTO (
   IDREF                INT4                 not null,
   IDTIPOELEMENTO       VARCHAR(2)           not null,
   OBSREF               VARCHAR(50)          null,
   constraint PK_REFERENCIAELEMENTO primary key (IDREF)
);

/*==============================================================*/
/* Index: REFERENCIAELEMENTO_PK                                 */
/*==============================================================*/
create unique index REFERENCIAELEMENTO_PK on REFERENCIAELEMENTO (
IDREF
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_22_FK on REFERENCIAELEMENTO (
IDTIPOELEMENTO
);

/*==============================================================*/
/* Table: TIPOCARACTERISTICA                                    */
/*==============================================================*/
create table TIPOCARACTERISTICA (
   IDTIPOCARAC          VARCHAR(4)           not null,
   DESCTIPOCARAC        VARCHAR(30)          null,
   constraint PK_TIPOCARACTERISTICA primary key (IDTIPOCARAC)
);

/*==============================================================*/
/* Index: TIPOCARACTERISTICA_PK                                 */
/*==============================================================*/
create unique index TIPOCARACTERISTICA_PK on TIPOCARACTERISTICA (
IDTIPOCARAC
);

/*==============================================================*/
/* Table: TIPOCARGO                                             */
/*==============================================================*/
create table TIPOCARGO (
   IDTIPOCARGO          VARCHAR(2)           not null,
   DESCTIPOCARGO        VARCHAR(20)          null,
   constraint PK_TIPOCARGO primary key (IDTIPOCARGO)
);

/*==============================================================*/
/* Index: TIPOCARGO_PK                                          */
/*==============================================================*/
create unique index TIPOCARGO_PK on TIPOCARGO (
IDTIPOCARGO
);

/*==============================================================*/
/* Table: TIPOCONTACTO                                          */
/*==============================================================*/
create table TIPOCONTACTO (
   IDTIPOCON            VARCHAR(2)           not null,
   DESCTIPOCON          VARCHAR(20)          null,
   constraint PK_TIPOCONTACTO primary key (IDTIPOCON)
);

/*==============================================================*/
/* Index: TIPOCONTACTO_PK                                       */
/*==============================================================*/
create unique index TIPOCONTACTO_PK on TIPOCONTACTO (
IDTIPOCON
);

/*==============================================================*/
/* Table: TIPODETALLE                                           */
/*==============================================================*/
create table TIPODETALLE (
   IDTIPODETA           VARCHAR(2)           not null,
   DESCTIPODETA         VARCHAR(20)          null,
   constraint PK_TIPODETALLE primary key (IDTIPODETA)
);

/*==============================================================*/
/* Index: TIPODETALLE_PK                                        */
/*==============================================================*/
create unique index TIPODETALLE_PK on TIPODETALLE (
IDTIPODETA
);

/*==============================================================*/
/* Table: TIPOELEMENTO                                          */
/*==============================================================*/
create table TIPOELEMENTO (
   IDTIPOELEMENTO       VARCHAR(2)           not null,
   DESCTIPOELEMENTO     VARCHAR(20)          null,
   constraint PK_TIPOELEMENTO primary key (IDTIPOELEMENTO)
);

/*==============================================================*/
/* Index: TIPOELEMENTO_PK                                       */
/*==============================================================*/
create unique index TIPOELEMENTO_PK on TIPOELEMENTO (
IDTIPOELEMENTO
);

/*==============================================================*/
/* Table: TIPOFACTURA                                           */
/*==============================================================*/
create table TIPOFACTURA (
   IDTIPOFAC            VARCHAR(2)           not null,
   DESCTIPOFAC          VARCHAR(20)          null,
   constraint PK_TIPOFACTURA primary key (IDTIPOFAC)
);

/*==============================================================*/
/* Index: TIPOFACTURA_PK                                        */
/*==============================================================*/
create unique index TIPOFACTURA_PK on TIPOFACTURA (
IDTIPOFAC
);

/*==============================================================*/
/* Table: TIPOIDENTIFICA                                        */
/*==============================================================*/
create table TIPOIDENTIFICA (
   TIPOIDENTIFI         VARCHAR(2)           not null,
   DESCTIPOIDENTI       VARCHAR(20)          null,
   constraint PK_TIPOIDENTIFICA primary key (TIPOIDENTIFI)
);

/*==============================================================*/
/* Index: TIPOIDENTIFICA_PK                                     */
/*==============================================================*/
create unique index TIPOIDENTIFICA_PK on TIPOIDENTIFICA (
TIPOIDENTIFI
);

/*==============================================================*/
/* Table: TIPOPERSONA                                           */
/*==============================================================*/
create table TIPOPERSONA (
   IDTIPOPERSONA        VARCHAR(2)           not null,
   DESCTIPOPERSO        VARCHAR(20)          null,
   constraint PK_TIPOPERSONA primary key (IDTIPOPERSONA)
);

/*==============================================================*/
/* Index: TIPOPERSONA_PK                                        */
/*==============================================================*/
create unique index TIPOPERSONA_PK on TIPOPERSONA (
IDTIPOPERSONA
);

/*==============================================================*/
/* Table: UNIDADMEDIA                                           */
/*==============================================================*/
create table UNIDADMEDIA (
   IDUNIDAD             VARCHAR(2)           not null,
   DESCUNIDAD           VARCHAR(20)          null,
   constraint PK_UNIDADMEDIA primary key (IDUNIDAD)
);

/*==============================================================*/
/* Index: UNIDADMEDIA_PK                                        */
/*==============================================================*/
create unique index UNIDADMEDIA_PK on UNIDADMEDIA (
IDUNIDAD
);

alter table CONTACTO
   add constraint FK_CONTACTO_RELATIONS_TIPOCONT foreign key (IDTIPOCON)
      references TIPOCONTACTO (IDTIPOCON)
      on delete restrict on update restrict;

alter table CONTACTO
   add constraint FK_CONTACTO_RELATIONS_PERSONA foreign key (IDPERSONA, IDTIPOPERSONA)
      references PERSONA (IDPERSONA, IDTIPOPERSONA)
      on delete restrict on update restrict;

alter table DETALLEENSAMBLE
   add constraint FK_DETALLEE_RELATIONS_ENSAMBLE foreign key (CONSECC)
      references ENSAMBLE (CONSECC)
      on delete restrict on update restrict;

alter table DETALLEENSAMBLE
   add constraint FK_DETALLEE_RELATIONS_INVENTAR foreign key (NOINVEN, IDREF)
      references INVENTARIO (NOINVEN, IDREF)
      on delete restrict on update restrict;

alter table DETALLEFACTURA
   add constraint FK_DETALLEF_RELATIONS_TIPODETA foreign key (IDTIPODETA)
      references TIPODETALLE (IDTIPODETA)
      on delete restrict on update restrict;

alter table DETALLEFACTURA
   add constraint FK_DETALLEF_RELATIONS_FACTURA foreign key (NFACTURA)
      references FACTURA (NFACTURA)
      on delete restrict on update restrict;

alter table DETALLEFACTURA
   add constraint FK_DETALLEF_RELATIONS_ENSAMBLE foreign key (CONSECC)
      references ENSAMBLE (CONSECC)
      on delete restrict on update restrict;

alter table DETALLEFACTURA
   add constraint FK_DETALLEF_RELATIONS_INVENTAR foreign key (NOINVEN, IDREF)
      references INVENTARIO (NOINVEN, IDREF)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_TIPOIDEN foreign key (TIPOIDENTIFI)
      references TIPOIDENTIFICA (TIPOIDENTIFI)
      on delete restrict on update restrict;

alter table ENSAMBLE
   add constraint FK_ENSAMBLE_RELATIONS_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_PERSONA foreign key (IDPERSONA, IDTIPOPERSONA)
      references PERSONA (IDPERSONA, IDTIPOPERSONA)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_FORMAPAG foreign key (IDFORMAPAGO)
      references FORMAPAGO (IDFORMAPAGO)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_TIPOFACT foreign key (IDTIPOFAC)
      references TIPOFACTURA (IDTIPOFAC)
      on delete restrict on update restrict;

alter table HISTORIACARGO
   add constraint FK_HISTORIA_RELATIONS_TIPOCARG foreign key (IDTIPOCARGO)
      references TIPOCARGO (IDTIPOCARGO)
      on delete restrict on update restrict;

alter table HISTORIACARGO
   add constraint FK_HISTORIA_RELATIONS_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO)
      on delete restrict on update restrict;

alter table INVENTARIO
   add constraint FK_INVENTAR_RELATIONS_FACTURA foreign key (NFACTURA)
      references FACTURA (NFACTURA)
      on delete restrict on update restrict;

alter table INVENTARIO
   add constraint FK_INVENTAR_RELATIONS_EVENTO foreign key (IDEVENTO)
      references EVENTO (IDEVENTO)
      on delete restrict on update restrict;

alter table INVENTARIO
   add constraint FK_INVENTAR_RELATIONS_REFERENC foreign key (IDREF)
      references REFERENCIAELEMENTO (IDREF)
      on delete restrict on update restrict;

alter table PERSONA
   add constraint FK_PERSONA_RELATIONS_TIPOIDEN foreign key (TIPOIDENTIFI)
      references TIPOIDENTIFICA (TIPOIDENTIFI)
      on delete restrict on update restrict;

alter table PERSONA
   add constraint FK_PERSONA_RELATIONS_TIPOPERS foreign key (IDTIPOPERSONA)
      references TIPOPERSONA (IDTIPOPERSONA)
      on delete restrict on update restrict;

alter table REFCARAC
   add constraint FK_REFCARAC_RELATIONS_REFERENC foreign key (IDREF)
      references REFERENCIAELEMENTO (IDREF)
      on delete restrict on update restrict;

alter table REFCARAC
   add constraint FK_REFCARAC_RELATIONS_UNIDADME foreign key (IDUNIDAD)
      references UNIDADMEDIA (IDUNIDAD)
      on delete restrict on update restrict;

alter table REFCARAC
   add constraint FK_REFCARAC_RELATIONS_TIPOCARA foreign key (IDTIPOCARAC)
      references TIPOCARACTERISTICA (IDTIPOCARAC)
      on delete restrict on update restrict;

alter table REFERENCIAELEMENTO
   add constraint FK_REFERENC_RELATIONS_TIPOELEM foreign key (IDTIPOELEMENTO)
      references TIPOELEMENTO (IDTIPOELEMENTO)
      on delete restrict on update restrict;

