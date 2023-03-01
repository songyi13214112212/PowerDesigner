/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2023/3/1 14:45:37                            */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ҽ��') and o.name = 'FK_ҽ��_RELATIONS_����')
alter table ҽ��
   drop constraint FK_ҽ��_RELATIONS_����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ҽ��') and o.name = 'FK_ҽ��_RELATIONS_������Ŀ')
alter table ҽ��
   drop constraint FK_ҽ��_RELATIONS_������Ŀ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('����') and o.name = 'FK_����_RELATIONS_�Һŵ�')
alter table ����
   drop constraint FK_����_RELATIONS_�Һŵ�
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('����') and o.name = 'FK_����_RELATIONS_ҽʦ')
alter table ����
   drop constraint FK_����_RELATIONS_ҽʦ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('����') and o.name = 'FK_����_RELATIONS_����')
alter table ����
   drop constraint FK_����_RELATIONS_����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('����') and o.name = 'FK_����_RELATIONS_����')
alter table ����
   drop constraint FK_����_RELATIONS_����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('����') and o.name = 'FK_����_RELATIONS_��������')
alter table ����
   drop constraint FK_����_RELATIONS_��������
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�Һŵ�') and o.name = 'FK_�Һŵ�_RELATIONS_�Һ����')
alter table �Һŵ�
   drop constraint FK_�Һŵ�_RELATIONS_�Һ����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�Һŵ�') and o.name = 'FK_�Һŵ�_RELATIONS_����')
alter table �Һŵ�
   drop constraint FK_�Һŵ�_RELATIONS_����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�Һŵ�') and o.name = 'FK_�Һŵ�_RELATIONS_����')
alter table �Һŵ�
   drop constraint FK_�Һŵ�_RELATIONS_����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�Һŵ�') and o.name = 'FK_�Һŵ�_RELATIONS_ҽʦ')
alter table �Һŵ�
   drop constraint FK_�Һŵ�_RELATIONS_ҽʦ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�Һŵ�') and o.name = 'FK_�Һŵ�_RELATIONS_�����ֲ�')
alter table �Һŵ�
   drop constraint FK_�Һŵ�_RELATIONS_�����ֲ�
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�Һŵ�') and o.name = 'FK_�Һŵ�_RELATIONS_������Ŀ')
alter table �Һŵ�
   drop constraint FK_�Һŵ�_RELATIONS_������Ŀ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�����ֲ�') and o.name = 'FK_�����ֲ�_RELATIONS_����')
alter table �����ֲ�
   drop constraint FK_�����ֲ�_RELATIONS_����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('������Ŀ') and o.name = 'FK_������Ŀ_RELATIONS_�շ���Ŀ')
alter table ������Ŀ
   drop constraint FK_������Ŀ_RELATIONS_�շ���Ŀ
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ҽ��')
            and   name  = 'Relationship_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index ҽ��.Relationship_15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ҽ��')
            and   name  = 'Relationship_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index ҽ��.Relationship_11_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ҽ��')
            and   type = 'U')
   drop table ҽ��
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ҽʦ')
            and   type = 'U')
   drop table ҽʦ
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����')
            and   name  = 'Relationship_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index ����.Relationship_14_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����')
            and   name  = 'Relationship_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index ����.Relationship_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����')
            and   name  = 'Relationship_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index ����.Relationship_12_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����')
            and   name  = 'Relationship_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index ����.Relationship_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����')
            and   name  = 'Relationship_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index ����.Relationship_9_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('����')
            and   type = 'U')
   drop table ����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('��������')
            and   type = 'U')
   drop table ��������
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('�Һŵ�')
            and   name  = 'Relationship_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index �Һŵ�.Relationship_8_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('�Һŵ�')
            and   name  = 'Relationship_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index �Һŵ�.Relationship_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('�Һŵ�')
            and   name  = 'Relationship_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index �Һŵ�.Relationship_5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('�Һŵ�')
            and   name  = 'Relationship_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index �Һŵ�.Relationship_4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('�Һŵ�')
            and   name  = 'Relationship_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index �Һŵ�.Relationship_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('�Һŵ�')
            and   name  = 'Relationship_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index �Һŵ�.Relationship_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�Һŵ�')
            and   type = 'U')
   drop table �Һŵ�
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�Һ����')
            and   type = 'U')
   drop table �Һ����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�շ���Ŀ')
            and   type = 'U')
   drop table �շ���Ŀ
go

if exists (select 1
            from  sysobjects
           where  id = object_id('����')
            and   type = 'U')
   drop table ����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('����')
            and   type = 'U')
   drop table ����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('����')
            and   type = 'U')
   drop table ����
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('�����ֲ�')
            and   name  = 'Relationship_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index �����ֲ�.Relationship_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�����ֲ�')
            and   type = 'U')
   drop table �����ֲ�
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('������Ŀ')
            and   name  = 'Relationship_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index ������Ŀ.Relationship_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('������Ŀ')
            and   type = 'U')
   drop table ������Ŀ
go

/*==============================================================*/
/* Table: ҽ��                                                    */
/*==============================================================*/
create table ҽ�� (
   ҽ��ID                 varchar(20)          not null,
   ����                   varchar(20)          null,
   �Ƶ���                  varchar(20)          null,
   ����ID                 varchar(40)          null,
   �շ���ĿID               varchar(20)          not null,
   ������ĿID               varchar(20)          not null,
   ����                   float                null,
   ��λ                   varchar(4)           null,
   ���㵥λ                 varchar(4)           null,
   ʹ������                 float                null,
   ҽ��                   varchar(200)         null,
   ʹ������                 tinyint              null,
   Ҫ��                   int                  null,
   �д�                   int                  not null,
   ���                   int                  not null,
   constraint PK_ҽ�� primary key nonclustered (ҽ��ID, �д�, ���)
)
go

/*==============================================================*/
/* Index: Relationship_11_FK                                    */
/*==============================================================*/
create index Relationship_11_FK on ҽ�� (
����ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_15_FK                                    */
/*==============================================================*/
create index Relationship_15_FK on ҽ�� (
�շ���ĿID ASC,
������ĿID ASC
)
go

/*==============================================================*/
/* Table: ҽʦ                                                    */
/*==============================================================*/
create table ҽʦ (
   ҽʦID                 varchar(5)           not null,
   ����                   varchar(50)          not null,
   ������                  varchar(50)          null,
   constraint PK_ҽʦ primary key nonclustered (ҽʦID)
)
go

/*==============================================================*/
/* Table: ����                                                    */
/*==============================================================*/
create table ���� (
   ����ID                 varchar(40)          not null,
   ����ID                 varchar(3)           null,
   �Һŵ�ID                varchar(40)          null,
   ҽʦID                 varchar(5)           not null,
   ����ID                 varchar(5)           not null,
   ����ID                 varchar(5)           not null,
   ����                   varchar(20)          null,
   �Ƶ���                  varchar(20)          null,
   ״̬                   tinyint              null,
   constraint PK_���� primary key nonclustered (����ID)
)
go

/*==============================================================*/
/* Index: Relationship_9_FK                                     */
/*==============================================================*/
create index Relationship_9_FK on ���� (
����ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_10_FK                                    */
/*==============================================================*/
create index Relationship_10_FK on ���� (
�Һŵ�ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_12_FK                                    */
/*==============================================================*/
create index Relationship_12_FK on ���� (
ҽʦID ASC
)
go

/*==============================================================*/
/* Index: Relationship_13_FK                                    */
/*==============================================================*/
create index Relationship_13_FK on ���� (
����ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_14_FK                                    */
/*==============================================================*/
create index Relationship_14_FK on ���� (
����ID ASC
)
go

/*==============================================================*/
/* Table: ��������                                                  */
/*==============================================================*/
create table �������� (
   ����ID                 varchar(3)           not null,
   ����                   varchar(50)          null,
   ������                  varchar(50)          null,
   ��ע                   varchar(100)         null,
   ��ɫ                   int                  null,
   constraint PK_�������� primary key nonclustered (����ID)
)
go

/*==============================================================*/
/* Table: �Һŵ�                                                   */
/*==============================================================*/
create table �Һŵ� (
   �Һŵ�ID                varchar(40)          not null,
   ����                   varchar(20)          null,
   ����ID                 varchar(40)          not null,
   �����ֲ�ID               varchar(40)          not null,
   ����״̬                 tinyint              null,
   ���ID                 varchar(5)           not null,
   ҽʦID                 varchar(5)           not null,
   ����ID                 varchar(5)           not null,
   ����ID                 varchar(5)           not null,
   �շ���ĿID               varchar(20)          not null,
   ������ĿID               varchar(20)          not null,
   �Ƶ���                  varchar(20)          null,
   ����״̬                 tinyint              null,
   ���                   float                null,
   ������                  float                null,
   constraint PK_�Һŵ� primary key nonclustered (�Һŵ�ID)
)
go

/*==============================================================*/
/* Index: Relationship_2_FK                                     */
/*==============================================================*/
create index Relationship_2_FK on �Һŵ� (
���ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_3_FK                                     */
/*==============================================================*/
create index Relationship_3_FK on �Һŵ� (
����ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_4_FK                                     */
/*==============================================================*/
create index Relationship_4_FK on �Һŵ� (
����ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_5_FK                                     */
/*==============================================================*/
create index Relationship_5_FK on �Һŵ� (
ҽʦID ASC
)
go

/*==============================================================*/
/* Index: Relationship_7_FK                                     */
/*==============================================================*/
create index Relationship_7_FK on �Һŵ� (
����ID ASC,
�����ֲ�ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_8_FK                                     */
/*==============================================================*/
create index Relationship_8_FK on �Һŵ� (
�շ���ĿID ASC,
������ĿID ASC
)
go

/*==============================================================*/
/* Table: �Һ����                                                  */
/*==============================================================*/
create table �Һ���� (
   ���ID                 varchar(5)           not null,
   ����                   varchar(50)          not null,
   ������                  varchar(50)          null,
   constraint PK_�Һ���� primary key nonclustered (���ID)
)
go

/*==============================================================*/
/* Table: �շ���Ŀ                                                  */
/*==============================================================*/
create table �շ���Ŀ (
   �շ���ĿID               varchar(20)          not null,
   ������ĿID               varchar(20)          null,
   ����                   varchar(50)          null,
   ������                  varchar(50)          null,
   constraint PK_�շ���Ŀ primary key nonclustered (�շ���ĿID)
)
go

/*==============================================================*/
/* Table: ����                                                    */
/*==============================================================*/
create table ���� (
   ����ID                 varchar(40)          not null,
   ���֤                  varchar(20)          null,
   �Ա�                   varchar(1)           null,
   ��������                 varchar(20)          null,
   constraint PK_���� primary key nonclustered (����ID)
)
go

/*==============================================================*/
/* Table: ����                                                    */
/*==============================================================*/
create table ���� (
   ����ID                 varchar(5)           not null,
   ����                   varchar(50)          not null,
   ������                  varchar(50)          null,
   constraint PK_���� primary key nonclustered (����ID)
)
go

/*==============================================================*/
/* Table: ����                                                    */
/*==============================================================*/
create table ���� (
   ����ID                 varchar(5)           not null,
   ����                   varchar(50)          not null,
   ������                  varchar(50)          null,
   constraint PK_���� primary key nonclustered (����ID)
)
go

/*==============================================================*/
/* Table: �����ֲ�                                                  */
/*==============================================================*/
create table �����ֲ� (
   ����ID                 varchar(40)          not null,
   �����ֲ�ID               varchar(40)          not null,
   �����ֲ�ID               varchar(40)          null,
   ����                   bit                  null,
   ��������                 varchar(20)          null,
   constraint PK_�����ֲ� primary key nonclustered (����ID, �����ֲ�ID)
)
go

/*==============================================================*/
/* Index: Relationship_6_FK                                     */
/*==============================================================*/
create index Relationship_6_FK on �����ֲ� (
����ID ASC
)
go

/*==============================================================*/
/* Table: ������Ŀ                                                  */
/*==============================================================*/
create table ������Ŀ (
   �շ���ĿID               varchar(20)          not null,
   ������ĿID               varchar(20)          not null,
   ������ĿID               varchar(20)          null,
   ����                   varchar(50)          not null,
   ������                  varchar(50)          null,
   constraint PK_������Ŀ primary key nonclustered (�շ���ĿID, ������ĿID)
)
go

/*==============================================================*/
/* Index: Relationship_1_FK                                     */
/*==============================================================*/
create index Relationship_1_FK on ������Ŀ (
�շ���ĿID ASC
)
go

alter table ҽ��
   add constraint FK_ҽ��_RELATIONS_���� foreign key (����ID)
      references ���� (����ID)
go

alter table ҽ��
   add constraint FK_ҽ��_RELATIONS_������Ŀ foreign key (�շ���ĿID, ������ĿID)
      references ������Ŀ (�շ���ĿID, ������ĿID)
go

alter table ����
   add constraint FK_����_RELATIONS_�Һŵ� foreign key (�Һŵ�ID)
      references �Һŵ� (�Һŵ�ID)
go

alter table ����
   add constraint FK_����_RELATIONS_ҽʦ foreign key (ҽʦID)
      references ҽʦ (ҽʦID)
go

alter table ����
   add constraint FK_����_RELATIONS_���� foreign key (����ID)
      references ���� (����ID)
go

alter table ����
   add constraint FK_����_RELATIONS_���� foreign key (����ID)
      references ���� (����ID)
go

alter table ����
   add constraint FK_����_RELATIONS_�������� foreign key (����ID)
      references �������� (����ID)
go

alter table �Һŵ�
   add constraint FK_�Һŵ�_RELATIONS_�Һ���� foreign key (���ID)
      references �Һ���� (���ID)
go

alter table �Һŵ�
   add constraint FK_�Һŵ�_RELATIONS_���� foreign key (����ID)
      references ���� (����ID)
go

alter table �Һŵ�
   add constraint FK_�Һŵ�_RELATIONS_���� foreign key (����ID)
      references ���� (����ID)
go

alter table �Һŵ�
   add constraint FK_�Һŵ�_RELATIONS_ҽʦ foreign key (ҽʦID)
      references ҽʦ (ҽʦID)
go

alter table �Һŵ�
   add constraint FK_�Һŵ�_RELATIONS_�����ֲ� foreign key (����ID, �����ֲ�ID)
      references �����ֲ� (����ID, �����ֲ�ID)
go

alter table �Һŵ�
   add constraint FK_�Һŵ�_RELATIONS_������Ŀ foreign key (�շ���ĿID, ������ĿID)
      references ������Ŀ (�շ���ĿID, ������ĿID)
go

alter table �����ֲ�
   add constraint FK_�����ֲ�_RELATIONS_���� foreign key (����ID)
      references ���� (����ID)
go

alter table ������Ŀ
   add constraint FK_������Ŀ_RELATIONS_�շ���Ŀ foreign key (�շ���ĿID)
      references �շ���Ŀ (�շ���ĿID)
go

