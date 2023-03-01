/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2023/3/1 14:45:37                            */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('医嘱') and o.name = 'FK_医嘱_RELATIONS_处方')
alter table 医嘱
   drop constraint FK_医嘱_RELATIONS_处方
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('医嘱') and o.name = 'FK_医嘱_RELATIONS_诊疗项目')
alter table 医嘱
   drop constraint FK_医嘱_RELATIONS_诊疗项目
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('处方') and o.name = 'FK_处方_RELATIONS_挂号单')
alter table 处方
   drop constraint FK_处方_RELATIONS_挂号单
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('处方') and o.name = 'FK_处方_RELATIONS_医师')
alter table 处方
   drop constraint FK_处方_RELATIONS_医师
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('处方') and o.name = 'FK_处方_RELATIONS_诊室')
alter table 处方
   drop constraint FK_处方_RELATIONS_诊室
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('处方') and o.name = 'FK_处方_RELATIONS_科室')
alter table 处方
   drop constraint FK_处方_RELATIONS_科室
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('处方') and o.name = 'FK_处方_RELATIONS_处方类型')
alter table 处方
   drop constraint FK_处方_RELATIONS_处方类型
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('挂号单') and o.name = 'FK_挂号单_RELATIONS_挂号类别')
alter table 挂号单
   drop constraint FK_挂号单_RELATIONS_挂号类别
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('挂号单') and o.name = 'FK_挂号单_RELATIONS_科室')
alter table 挂号单
   drop constraint FK_挂号单_RELATIONS_科室
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('挂号单') and o.name = 'FK_挂号单_RELATIONS_诊室')
alter table 挂号单
   drop constraint FK_挂号单_RELATIONS_诊室
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('挂号单') and o.name = 'FK_挂号单_RELATIONS_医师')
alter table 挂号单
   drop constraint FK_挂号单_RELATIONS_医师
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('挂号单') and o.name = 'FK_挂号单_RELATIONS_诊疗手册')
alter table 挂号单
   drop constraint FK_挂号单_RELATIONS_诊疗手册
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('挂号单') and o.name = 'FK_挂号单_RELATIONS_诊疗项目')
alter table 挂号单
   drop constraint FK_挂号单_RELATIONS_诊疗项目
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('诊疗手册') and o.name = 'FK_诊疗手册_RELATIONS_病人')
alter table 诊疗手册
   drop constraint FK_诊疗手册_RELATIONS_病人
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('诊疗项目') and o.name = 'FK_诊疗项目_RELATIONS_收费项目')
alter table 诊疗项目
   drop constraint FK_诊疗项目_RELATIONS_收费项目
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('医嘱')
            and   name  = 'Relationship_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index 医嘱.Relationship_15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('医嘱')
            and   name  = 'Relationship_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index 医嘱.Relationship_11_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('医嘱')
            and   type = 'U')
   drop table 医嘱
go

if exists (select 1
            from  sysobjects
           where  id = object_id('医师')
            and   type = 'U')
   drop table 医师
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('处方')
            and   name  = 'Relationship_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index 处方.Relationship_14_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('处方')
            and   name  = 'Relationship_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index 处方.Relationship_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('处方')
            and   name  = 'Relationship_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index 处方.Relationship_12_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('处方')
            and   name  = 'Relationship_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index 处方.Relationship_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('处方')
            and   name  = 'Relationship_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index 处方.Relationship_9_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('处方')
            and   type = 'U')
   drop table 处方
go

if exists (select 1
            from  sysobjects
           where  id = object_id('处方类型')
            and   type = 'U')
   drop table 处方类型
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('挂号单')
            and   name  = 'Relationship_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index 挂号单.Relationship_8_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('挂号单')
            and   name  = 'Relationship_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index 挂号单.Relationship_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('挂号单')
            and   name  = 'Relationship_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index 挂号单.Relationship_5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('挂号单')
            and   name  = 'Relationship_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index 挂号单.Relationship_4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('挂号单')
            and   name  = 'Relationship_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index 挂号单.Relationship_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('挂号单')
            and   name  = 'Relationship_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index 挂号单.Relationship_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('挂号单')
            and   type = 'U')
   drop table 挂号单
go

if exists (select 1
            from  sysobjects
           where  id = object_id('挂号类别')
            and   type = 'U')
   drop table 挂号类别
go

if exists (select 1
            from  sysobjects
           where  id = object_id('收费项目')
            and   type = 'U')
   drop table 收费项目
go

if exists (select 1
            from  sysobjects
           where  id = object_id('病人')
            and   type = 'U')
   drop table 病人
go

if exists (select 1
            from  sysobjects
           where  id = object_id('科室')
            and   type = 'U')
   drop table 科室
go

if exists (select 1
            from  sysobjects
           where  id = object_id('诊室')
            and   type = 'U')
   drop table 诊室
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('诊疗手册')
            and   name  = 'Relationship_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index 诊疗手册.Relationship_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('诊疗手册')
            and   type = 'U')
   drop table 诊疗手册
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('诊疗项目')
            and   name  = 'Relationship_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index 诊疗项目.Relationship_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('诊疗项目')
            and   type = 'U')
   drop table 诊疗项目
go

/*==============================================================*/
/* Table: 医嘱                                                    */
/*==============================================================*/
create table 医嘱 (
   医嘱ID                 varchar(20)          not null,
   日期                   varchar(20)          null,
   制单人                  varchar(20)          null,
   处方ID                 varchar(40)          null,
   收费项目ID               varchar(20)          not null,
   诊疗项目ID               varchar(20)          not null,
   数量                   float                null,
   单位                   varchar(4)           null,
   计算单位                 varchar(4)           null,
   使用数量                 float                null,
   医嘱                   varchar(200)         null,
   使用性质                 tinyint              null,
   要求                   int                  null,
   行次                   int                  not null,
   组号                   int                  not null,
   constraint PK_医嘱 primary key nonclustered (医嘱ID, 行次, 组号)
)
go

/*==============================================================*/
/* Index: Relationship_11_FK                                    */
/*==============================================================*/
create index Relationship_11_FK on 医嘱 (
处方ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_15_FK                                    */
/*==============================================================*/
create index Relationship_15_FK on 医嘱 (
收费项目ID ASC,
诊疗项目ID ASC
)
go

/*==============================================================*/
/* Table: 医师                                                    */
/*==============================================================*/
create table 医师 (
   医师ID                 varchar(5)           not null,
   名称                   varchar(50)          not null,
   助记码                  varchar(50)          null,
   constraint PK_医师 primary key nonclustered (医师ID)
)
go

/*==============================================================*/
/* Table: 处方                                                    */
/*==============================================================*/
create table 处方 (
   处方ID                 varchar(40)          not null,
   类型ID                 varchar(3)           null,
   挂号单ID                varchar(40)          null,
   医师ID                 varchar(5)           not null,
   诊室ID                 varchar(5)           not null,
   科室ID                 varchar(5)           not null,
   日期                   varchar(20)          null,
   制单人                  varchar(20)          null,
   状态                   tinyint              null,
   constraint PK_处方 primary key nonclustered (处方ID)
)
go

/*==============================================================*/
/* Index: Relationship_9_FK                                     */
/*==============================================================*/
create index Relationship_9_FK on 处方 (
类型ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_10_FK                                    */
/*==============================================================*/
create index Relationship_10_FK on 处方 (
挂号单ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_12_FK                                    */
/*==============================================================*/
create index Relationship_12_FK on 处方 (
医师ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_13_FK                                    */
/*==============================================================*/
create index Relationship_13_FK on 处方 (
诊室ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_14_FK                                    */
/*==============================================================*/
create index Relationship_14_FK on 处方 (
科室ID ASC
)
go

/*==============================================================*/
/* Table: 处方类型                                                  */
/*==============================================================*/
create table 处方类型 (
   类型ID                 varchar(3)           not null,
   名称                   varchar(50)          null,
   助记码                  varchar(50)          null,
   备注                   varchar(100)         null,
   颜色                   int                  null,
   constraint PK_处方类型 primary key nonclustered (类型ID)
)
go

/*==============================================================*/
/* Table: 挂号单                                                   */
/*==============================================================*/
create table 挂号单 (
   挂号单ID                varchar(40)          not null,
   日期                   varchar(20)          null,
   病人ID                 varchar(40)          not null,
   诊疗手册ID               varchar(40)          not null,
   就诊状态                 tinyint              null,
   类别ID                 varchar(5)           not null,
   医师ID                 varchar(5)           not null,
   诊室ID                 varchar(5)           not null,
   科室ID                 varchar(5)           not null,
   收费项目ID               varchar(20)          not null,
   诊疗项目ID               varchar(20)          not null,
   制单人                  varchar(20)          null,
   单据状态                 tinyint              null,
   金额                   float                null,
   工本费                  float                null,
   constraint PK_挂号单 primary key nonclustered (挂号单ID)
)
go

/*==============================================================*/
/* Index: Relationship_2_FK                                     */
/*==============================================================*/
create index Relationship_2_FK on 挂号单 (
类别ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_3_FK                                     */
/*==============================================================*/
create index Relationship_3_FK on 挂号单 (
科室ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_4_FK                                     */
/*==============================================================*/
create index Relationship_4_FK on 挂号单 (
诊室ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_5_FK                                     */
/*==============================================================*/
create index Relationship_5_FK on 挂号单 (
医师ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_7_FK                                     */
/*==============================================================*/
create index Relationship_7_FK on 挂号单 (
病人ID ASC,
诊疗手册ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_8_FK                                     */
/*==============================================================*/
create index Relationship_8_FK on 挂号单 (
收费项目ID ASC,
诊疗项目ID ASC
)
go

/*==============================================================*/
/* Table: 挂号类别                                                  */
/*==============================================================*/
create table 挂号类别 (
   类别ID                 varchar(5)           not null,
   名称                   varchar(50)          not null,
   助记码                  varchar(50)          null,
   constraint PK_挂号类别 primary key nonclustered (类别ID)
)
go

/*==============================================================*/
/* Table: 收费项目                                                  */
/*==============================================================*/
create table 收费项目 (
   收费项目ID               varchar(20)          not null,
   父级项目ID               varchar(20)          null,
   名称                   varchar(50)          null,
   助记码                  varchar(50)          null,
   constraint PK_收费项目 primary key nonclustered (收费项目ID)
)
go

/*==============================================================*/
/* Table: 病人                                                    */
/*==============================================================*/
create table 病人 (
   病人ID                 varchar(40)          not null,
   身份证                  varchar(20)          null,
   性别                   varchar(1)           null,
   出生日期                 varchar(20)          null,
   constraint PK_病人 primary key nonclustered (病人ID)
)
go

/*==============================================================*/
/* Table: 科室                                                    */
/*==============================================================*/
create table 科室 (
   科室ID                 varchar(5)           not null,
   名称                   varchar(50)          not null,
   助记码                  varchar(50)          null,
   constraint PK_科室 primary key nonclustered (科室ID)
)
go

/*==============================================================*/
/* Table: 诊室                                                    */
/*==============================================================*/
create table 诊室 (
   诊室ID                 varchar(5)           not null,
   名称                   varchar(50)          not null,
   助记码                  varchar(50)          null,
   constraint PK_诊室 primary key nonclustered (诊室ID)
)
go

/*==============================================================*/
/* Table: 诊疗手册                                                  */
/*==============================================================*/
create table 诊疗手册 (
   病人ID                 varchar(40)          not null,
   诊疗手册ID               varchar(40)          not null,
   父级手册ID               varchar(40)          null,
   启用                   bit                  null,
   启用日期                 varchar(20)          null,
   constraint PK_诊疗手册 primary key nonclustered (病人ID, 诊疗手册ID)
)
go

/*==============================================================*/
/* Index: Relationship_6_FK                                     */
/*==============================================================*/
create index Relationship_6_FK on 诊疗手册 (
病人ID ASC
)
go

/*==============================================================*/
/* Table: 诊疗项目                                                  */
/*==============================================================*/
create table 诊疗项目 (
   收费项目ID               varchar(20)          not null,
   诊疗项目ID               varchar(20)          not null,
   父级项目ID               varchar(20)          null,
   名称                   varchar(50)          not null,
   助记码                  varchar(50)          null,
   constraint PK_诊疗项目 primary key nonclustered (收费项目ID, 诊疗项目ID)
)
go

/*==============================================================*/
/* Index: Relationship_1_FK                                     */
/*==============================================================*/
create index Relationship_1_FK on 诊疗项目 (
收费项目ID ASC
)
go

alter table 医嘱
   add constraint FK_医嘱_RELATIONS_处方 foreign key (处方ID)
      references 处方 (处方ID)
go

alter table 医嘱
   add constraint FK_医嘱_RELATIONS_诊疗项目 foreign key (收费项目ID, 诊疗项目ID)
      references 诊疗项目 (收费项目ID, 诊疗项目ID)
go

alter table 处方
   add constraint FK_处方_RELATIONS_挂号单 foreign key (挂号单ID)
      references 挂号单 (挂号单ID)
go

alter table 处方
   add constraint FK_处方_RELATIONS_医师 foreign key (医师ID)
      references 医师 (医师ID)
go

alter table 处方
   add constraint FK_处方_RELATIONS_诊室 foreign key (诊室ID)
      references 诊室 (诊室ID)
go

alter table 处方
   add constraint FK_处方_RELATIONS_科室 foreign key (科室ID)
      references 科室 (科室ID)
go

alter table 处方
   add constraint FK_处方_RELATIONS_处方类型 foreign key (类型ID)
      references 处方类型 (类型ID)
go

alter table 挂号单
   add constraint FK_挂号单_RELATIONS_挂号类别 foreign key (类别ID)
      references 挂号类别 (类别ID)
go

alter table 挂号单
   add constraint FK_挂号单_RELATIONS_科室 foreign key (科室ID)
      references 科室 (科室ID)
go

alter table 挂号单
   add constraint FK_挂号单_RELATIONS_诊室 foreign key (诊室ID)
      references 诊室 (诊室ID)
go

alter table 挂号单
   add constraint FK_挂号单_RELATIONS_医师 foreign key (医师ID)
      references 医师 (医师ID)
go

alter table 挂号单
   add constraint FK_挂号单_RELATIONS_诊疗手册 foreign key (病人ID, 诊疗手册ID)
      references 诊疗手册 (病人ID, 诊疗手册ID)
go

alter table 挂号单
   add constraint FK_挂号单_RELATIONS_诊疗项目 foreign key (收费项目ID, 诊疗项目ID)
      references 诊疗项目 (收费项目ID, 诊疗项目ID)
go

alter table 诊疗手册
   add constraint FK_诊疗手册_RELATIONS_病人 foreign key (病人ID)
      references 病人 (病人ID)
go

alter table 诊疗项目
   add constraint FK_诊疗项目_RELATIONS_收费项目 foreign key (收费项目ID)
      references 收费项目 (收费项目ID)
go

