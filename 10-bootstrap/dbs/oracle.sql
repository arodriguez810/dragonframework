--------------------------------------------------------
--  File created - Tuesday-July-23-2019   
--------------------------------------------------------
  DROP TABLE "ADMIN"."CATEGORY" cascade constraints;
  DROP TABLE "ADMIN"."CHILD" cascade constraints;
  DROP TABLE "ADMIN"."DATES" cascade constraints;
  DROP TABLE "ADMIN"."LISTS" cascade constraints;
  DROP TABLE "ADMIN"."LISTS_CATEGORY" cascade constraints;
  DROP TABLE "ADMIN"."PARENT" cascade constraints;
  DROP TABLE "ADMIN"."RELATION" cascade constraints;
  DROP TABLE "ADMIN"."SPECIAL" cascade constraints;
  DROP TABLE "ADMIN"."TEXTS" cascade constraints;
  DROP TABLE "ADMIN"."USERS" cascade constraints;
  DROP TABLE "ADMIN"."tEsT" cascade constraints;
  DROP SEQUENCE "ADMIN"."CATEGORY_SEQ";
  DROP SEQUENCE "ADMIN"."CATEGORY_SEQ1";
  DROP SEQUENCE "ADMIN"."CHILDSEC";
  DROP SEQUENCE "ADMIN"."DATES_SEQ";
  DROP SEQUENCE "ADMIN"."LISTSEQ";
  DROP SEQUENCE "ADMIN"."LISTS_CATEGORY_SEQ";
  DROP SEQUENCE "ADMIN"."PARENTSEC";
  DROP SEQUENCE "ADMIN"."SPECIAL_SEQ";
  DROP SEQUENCE "ADMIN"."TABLE1_SEQ";
  DROP SEQUENCE "ADMIN"."TABLE1_SEQ1";
  DROP SEQUENCE "ADMIN"."TEXTS_SEQ";
  DROP SEQUENCE "ADMIN"."USERS_SEQ";
  DROP VIEW "ADMIN"."VIEW_REPORT";
  DROP FUNCTION "ADMIN"."HASH_MD5";
--------------------------------------------------------
--  DDL for Sequence CATEGORY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."CATEGORY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CATEGORY_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."CATEGORY_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CHILDSEC
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."CHILDSEC"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DATES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."DATES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LISTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."LISTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LISTS_CATEGORY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."LISTS_CATEGORY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PARENTSEC
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."PARENTSEC"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SPECIAL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."SPECIAL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TABLE1_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."TABLE1_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TABLE1_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."TABLE1_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TEXTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."TEXTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "ADMIN"."CATEGORY" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(20 BYTE), 
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CHILD
--------------------------------------------------------

  CREATE TABLE "ADMIN"."CHILD" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(20 BYTE), 
	"PARENT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DATES
--------------------------------------------------------

  CREATE TABLE "ADMIN"."DATES" 
   (	"ID" NUMBER, 
	"TIME" DATE, 
	"DATE" DATE, 
	"DATETIME" DATE, 
	"RANGE_FROM" DATE, 
	"RANGE_TO" DATE, 
	"RANGETIME_FROM" DATE, 
	"RANGETIME_TO" DATE, 
	"TIMERANGE_FROM" DATE, 
	"TIMERANGE_TO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LISTS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."LISTS" 
   (	"ID" NUMBER, 
	"PARENT" NUMBER, 
	"CHILD" NUMBER, 
	"NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LISTS_CATEGORY
--------------------------------------------------------

  CREATE TABLE "ADMIN"."LISTS_CATEGORY" 
   (	"ID" NUMBER, 
	"CATEGORY" NUMBER, 
	"LISTS" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PARENT
--------------------------------------------------------

  CREATE TABLE "ADMIN"."PARENT" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"DESCRIPTION" VARCHAR2(255 BYTE), 
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RELATION
--------------------------------------------------------

  CREATE TABLE "ADMIN"."RELATION" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"DESCRIPTION" VARCHAR2(800 BYTE), 
	"TEMPID" VARCHAR2(800 BYTE), 
	"LIST" NUMBER, 
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SPECIAL
--------------------------------------------------------

  CREATE TABLE "ADMIN"."SPECIAL" 
   (	"ID" NUMBER, 
	"COLOR" VARCHAR2(20 BYTE), 
	"LOCATION" VARCHAR2(300 BYTE), 
	"BIT" NUMBER(*,0), 
	"TAGS" VARCHAR2(4000 BYTE), 
	"HTML" LONG
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TEXTS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."TEXTS" 
   (	"ID" VARCHAR2(20 BYTE), 
	"BASIC" VARCHAR2(50 BYTE), 
	"MONEY" NUMBER, 
	"PERCENTAGE" NUMBER, 
	"NORMALPASSWORD" VARCHAR2(255 BYTE), 
	"PASSWORDPLUS" VARCHAR2(255 BYTE), 
	"TEXTAREA" VARCHAR2(500 BYTE), 
	"NUM" NUMBER, 
	"PHONE" VARCHAR2(255 BYTE), 
	"CELLPHONE" VARCHAR2(255 BYTE), 
	"INTEGER" NUMBER(*,0), 
	"DECIMAL" NUMBER(18,2), 
	"HOUR" VARCHAR2(5 BYTE), 
	"YEAR" NUMBER, 
	"INDENTIFICATION" VARCHAR2(255 BYTE), 
	"CREDITCARD" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."USERS" 
   (	"ID" NUMBER, 
	"USERNAME" VARCHAR2(200 BYTE), 
	"NAME" VARCHAR2(500 BYTE), 
	"LASTNAME" VARCHAR2(500 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"PASSWORD" VARCHAR2(255 BYTE), 
	"CONFIRMPASSWORD" VARCHAR2(255 BYTE), 
	"PROFILE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table tEsT
--------------------------------------------------------

  CREATE TABLE "ADMIN"."tEsT" 
   (	"GG" NUMBER, 
	"tinI" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "SYSTEM" ;

---------------------------------------------------
--   DATA FOR TABLE CATEGORY
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN.CATEGORY
Insert into ADMIN.CATEGORY (ID,NAME,DESCRIPTION) values (1,'Category 1','Category 1');
Insert into ADMIN.CATEGORY (ID,NAME,DESCRIPTION) values (2,'Category 2','Category 2');

---------------------------------------------------
--   END DATA FOR TABLE CATEGORY
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CHILD
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN.CHILD
Insert into ADMIN.CHILD (ID,NAME,DESCRIPTION,PARENT) values (2,'Child2','Child2',null,null,null);
Insert into ADMIN.CHILD (ID,NAME,DESCRIPTION,PARENT) values (3,'Child New','Child New',null,null,null,null,2);
Insert into ADMIN.CHILD (ID,NAME,DESCRIPTION,PARENT) values (1,'Child1','Child1',null,null,null);

---------------------------------------------------
--   END DATA FOR TABLE CHILD
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE DATES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN.DATES

---------------------------------------------------
--   END DATA FOR TABLE DATES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE LISTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN.LISTS
Insert into ADMIN.LISTS (ID,PARENT,CHILD,NAME) values (1,2,3,'List1');

---------------------------------------------------
--   END DATA FOR TABLE LISTS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE LISTS_CATEGORY
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN.LISTS_CATEGORY
Insert into ADMIN.LISTS_CATEGORY (ID,CATEGORY,LISTS) values (21,1,1);
Insert into ADMIN.LISTS_CATEGORY (ID,CATEGORY,LISTS) values (22,2,1);

---------------------------------------------------
--   END DATA FOR TABLE LISTS_CATEGORY
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PARENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN.PARENT
Insert into ADMIN.PARENT (ID,NAME,DESCRIPTION) values (1,'Parent1','Parent1');
Insert into ADMIN.PARENT (ID,NAME,DESCRIPTION) values (2,'Parent2','Parent2');

---------------------------------------------------
--   END DATA FOR TABLE PARENT
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE RELATION
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN.RELATION
Insert into ADMIN.RELATION (ID,NAME,DESCRIPTION,TEMPID,LIST) values (2,'Relation1','Relation1');
Insert into ADMIN.RELATION (ID,NAME,DESCRIPTION,TEMPID,LIST) values (21,'Otra relation','Otra relation');

---------------------------------------------------
--   END DATA FOR TABLE RELATION
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE SPECIAL
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN.SPECIAL
Insert into ADMIN.SPECIAL (ID,COLOR,LOCATION,BIT,TAGS,HTML) values (1,'rgb(255, 255, 0)','18.4827864;-69.92137509999998',1,'hello,world,test,one','<p><b>Test<br></b></p>');

---------------------------------------------------
--   END DATA FOR TABLE SPECIAL
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE TEXTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN.TEXTS
Insert into ADMIN.TEXTS (ID,BASIC,MONEY,PERCENTAGE,NORMALPASSWORD,PASSWORDPLUS,TEXTAREA,NUM,PHONE,CELLPHONE,INTEGER,DECIMAL,HOUR,YEAR,INDENTIFICATION,CREDITCARD) values ('5','Test2',1231.23,23,'5a884bcb8db9e6aa7189a7a0abe05fd8','5a884bcb8db9e6aa7189a7a0abe05fd8','123123',4,'(123) 123-1232','(123) 123-1231',123,1231231.23,'21:31',1231,'123-1231231-2','1231-2312-3123-1231');
Insert into ADMIN.TEXTS (ID,BASIC,MONEY,PERCENTAGE,NORMALPASSWORD,PASSWORDPLUS,TEXTAREA,NUM,PHONE,CELLPHONE,INTEGER,DECIMAL,HOUR,YEAR,INDENTIFICATION,CREDITCARD) values ('4','Holaf',2000,12,'5a884bcb8db9e6aa7189a7a0abe05fd8','5a884bcb8db9e6aa7189a7a0abe05fd8','123123',3,'(809) 099-8948','(494) 984-8949',45,452.61,'94:45',6154,'564-5644985-6','5465-4564-5465-4564');

---------------------------------------------------
--   END DATA FOR TABLE TEXTS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE USERS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN.USERS
Insert into ADMIN.USERS (ID,USERNAME,NAME,LASTNAME,EMAIL,PASSWORD,CONFIRMPASSWORD,PROFILE) values (1,'admin','Adminis','Trator','admin@dragon.com','9ccc9c1af553d8dfeb5a2da859f60292','9ccc9c1af553d8dfeb5a2da859f60292',to_timestamp('27-JUN-19 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('27-JUN-19 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),1);
Insert into ADMIN.USERS (ID,USERNAME,NAME,LASTNAME,EMAIL,PASSWORD,CONFIRMPASSWORD,PROFILE) values (4,'agent','Agent','Agent','agent@dragon.com','9ccc9c1af553d8dfeb5a2da859f60292','9ccc9c1af553d8dfeb5a2da859f60292',to_timestamp('27-JUN-19 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('27-JUN-19 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),2);
Insert into ADMIN.USERS (ID,USERNAME,NAME,LASTNAME,EMAIL,PASSWORD,CONFIRMPASSWORD,PROFILE) values (5,'client','Client','client','client@dragon.com','9ccc9c1af553d8dfeb5a2da859f60292','9ccc9c1af553d8dfeb5a2da859f60292',to_timestamp('27-JUN-19 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('27-JUN-19 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),2);

---------------------------------------------------
--   END DATA FOR TABLE USERS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE tEsT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN."tEsT"

---------------------------------------------------
--   END DATA FOR TABLE tEsT
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table TEXTS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."TEXTS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ADMIN"."TEXTS" ADD CONSTRAINT "TEXTS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHILD
--------------------------------------------------------

  ALTER TABLE "ADMIN"."CHILD" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RELATION
--------------------------------------------------------

  ALTER TABLE "ADMIN"."RELATION" ADD CONSTRAINT "RELATION_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "ADMIN"."RELATION" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."USERS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ADMIN"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DATES
--------------------------------------------------------

  ALTER TABLE "ADMIN"."DATES" ADD CONSTRAINT "DATES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "ADMIN"."DATES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "ADMIN"."CATEGORY" ADD CONSTRAINT "CATEGORY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "ADMIN"."CATEGORY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LISTS_CATEGORY
--------------------------------------------------------

  ALTER TABLE "ADMIN"."LISTS_CATEGORY" ADD CONSTRAINT "LISTS_CATEGORY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "ADMIN"."LISTS_CATEGORY" MODIFY ("ID" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table PARENT
--------------------------------------------------------

  ALTER TABLE "ADMIN"."PARENT" ADD CONSTRAINT "PARENT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "ADMIN"."PARENT" MODIFY ("ID" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table LISTS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."LISTS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "ADMIN"."LISTS" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  DDL for Index LISTS_CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."LISTS_CATEGORY_PK" ON "ADMIN"."LISTS_CATEGORY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."CATEGORY_PK" ON "ADMIN"."CATEGORY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DATES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."DATES_PK" ON "ADMIN"."DATES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."USERS_PK" ON "ADMIN"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RELATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."RELATION_PK" ON "ADMIN"."RELATION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PARENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."PARENT_PK" ON "ADMIN"."PARENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."TABLE1_PK" ON "ADMIN"."LISTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TEXTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."TEXTS_PK" ON "ADMIN"."TEXTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;











--------------------------------------------------------
--  DDL for Trigger CATEGORY_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."CATEGORY_TRG" 
BEFORE INSERT ON CATEGORY
FOR EACH ROW 
BEGIN
  SELECT CATEGORY_SEQ1.NEXTVAL INTO :NEW.ID FROM DUAL;
END;

/
ALTER TRIGGER "ADMIN"."CATEGORY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CHILDSEC
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."CHILDSEC" 
BEFORE INSERT ON "CHILD"
FOR EACH ROW 
BEGIN
  SELECT CHILDSEC.NEXTVAL INTO :NEW.ID FROM DUAL;
END;
/
ALTER TRIGGER "ADMIN"."CHILDSEC" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DATES_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."DATES_TRG" 
BEFORE INSERT ON DATES
FOR EACH ROW 
BEGIN
  SELECT DATES_SEQ.NEXTVAL INTO :NEW.ID FROM DUAL;
END;

/
ALTER TRIGGER "ADMIN"."DATES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LISTS_CATEGORY_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."LISTS_CATEGORY_TRG" 
BEFORE INSERT ON LISTS_CATEGORY
FOR EACH ROW 
BEGIN
  SELECT LISTS_CATEGORY_SEQ.NEXTVAL INTO :NEW.ID FROM DUAL;
END;

/
ALTER TRIGGER "ADMIN"."LISTS_CATEGORY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LIST_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."LIST_TRG" 
BEFORE INSERT ON "LISTS"
FOR EACH ROW 
BEGIN
  SELECT LISTSEQ.NEXTVAL INTO :NEW.ID FROM DUAL;
END;
/
ALTER TRIGGER "ADMIN"."LIST_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PARENT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."PARENT_TRG" 
BEFORE INSERT ON PARENT
FOR EACH ROW 
BEGIN
  SELECT PARENTSEC.NEXTVAL INTO :NEW.ID FROM DUAL;
END;
/
ALTER TRIGGER "ADMIN"."PARENT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RELATION_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."RELATION_TRG" BEFORE INSERT ON RELATION
FOR EACH ROW 
BEGIN
  SELECT TABLE1_SEQ1.NEXTVAL INTO :NEW.ID FROM DUAL;
END;

/
ALTER TRIGGER "ADMIN"."RELATION_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SPECIAL_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."SPECIAL_TRG" 
BEFORE INSERT ON SPECIAL
FOR EACH ROW 
BEGIN
  SELECT SPECIAL_SEQ.NEXTVAL INTO :NEW.ID FROM DUAL;
END;

/
ALTER TRIGGER "ADMIN"."SPECIAL_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TEXTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."TEXTS_TRG" 
BEFORE INSERT ON TEXTS
FOR EACH ROW 
BEGIN
  SELECT TEXTS_SEQ.NEXTVAL INTO :NEW.ID FROM DUAL;
END;

/
ALTER TRIGGER "ADMIN"."TEXTS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."USERS_TRG" 
BEFORE INSERT ON USERS
FOR EACH ROW 
BEGIN
  SELECT USERS_SEQ.NEXTVAL INTO :NEW.ID FROM DUAL;
END;

/
ALTER TRIGGER "ADMIN"."USERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for View VIEW_REPORT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ADMIN"."VIEW_REPORT" ("ID", "BASIC", "MONEY", "PERCENTAGE", "NORMALPASSWORD", "PASSWORDPLUS", "TEXTAREA", "NUM", "PHONE", "CELLPHONE", "INTEGER", "DECIMAL", "HOUR", "YEAR", "INDENTIFICATION", "CREDITCARD") AS 
  SELECT 
    "ID","BASIC","MONEY","PERCENTAGE","NORMALPASSWORD","PASSWORDPLUS","TEXTAREA","NUM","PHONE","CELLPHONE","INTEGER","DECIMAL","HOUR","YEAR","INDENTIFICATION","CREDITCARD"
FROM
texts;
--------------------------------------------------------
--  DDL for Function HASH_MD5
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ADMIN"."HASH_MD5" 
(
  psINPUT IN VARCHAR2
) RETURN VARCHAR2 AS rHash RAW (16);
BEGIN
    rHash := DBMS_CRYPTO.HASH (TO_CLOB (psINPUT), DBMS_CRYPTO.HASH_MD5);
    RETURN (LOWER (RAWTOHEX (rHash)));
END HASH_MD5;

/

