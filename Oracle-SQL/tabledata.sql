/*
 Navicat Premium Data Transfer

 Source Server         : Oracle-Scott
 Source Server Type    : Oracle
 Source Server Version : 100200
 Source Host           : 192.168.194.128:1521
 Source Schema         : SCOTT

 Target Server Type    : Oracle
 Target Server Version : 100200
 File Encoding         : 65001

 Date: 25/09/2018 16:34:19
*/


-- ----------------------------
-- Table structure for BONUS
-- ----------------------------
DROP TABLE "BONUS";
CREATE TABLE "BONUS" (
  "ENAME" VARCHAR2(10 BYTE) ,
  "JOB" VARCHAR2(9 BYTE) ,
  "SAL" NUMBER ,
  "COMM" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for DEPT
-- ----------------------------
DROP TABLE "DEPT";
CREATE TABLE "DEPT" (
  "DEPTNO" NUMBER(2) NOT NULL ,
  "DNAME" VARCHAR2(14 BYTE) ,
  "LOC" VARCHAR2(13 BYTE) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of DEPT
-- ----------------------------
INSERT INTO "DEPT" VALUES ('10', 'ACCOUNTING', 'NEW YORK');
INSERT INTO "DEPT" VALUES ('20', 'RESEARCH', 'DALLAS');
INSERT INTO "DEPT" VALUES ('30', 'SALES', 'CHICAGO');
INSERT INTO "DEPT" VALUES ('40', 'OPERATIONS', 'BOSTON');
COMMIT;

-- ----------------------------
-- Table structure for EMP
-- ----------------------------
DROP TABLE "EMP";
CREATE TABLE "EMP" (
  "EMPNO" NUMBER(4) NOT NULL ,
  "ENAME" VARCHAR2(10 BYTE) ,
  "JOB" VARCHAR2(9 BYTE) ,
  "MGR" NUMBER(4) ,
  "HIREDATE" DATE ,
  "SAL" NUMBER(7,2) ,
  "COMM" NUMBER(7,2) ,
  "DEPTNO" NUMBER(2) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of EMP
-- ----------------------------
INSERT INTO "EMP" VALUES ('7369', 'SMITH', 'CLERK', '7902', TO_DATE('1980-12-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '800', NULL, '20');
INSERT INTO "EMP" VALUES ('7499', 'ALLEN', 'SALESMAN', '7698', TO_DATE('1981-02-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1600', '300', '30');
INSERT INTO "EMP" VALUES ('7521', 'WARD', 'SALESMAN', '7698', TO_DATE('1981-02-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1250', '500', '30');
INSERT INTO "EMP" VALUES ('7566', 'JONES', 'MANAGER', '7839', TO_DATE('1981-04-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2975', NULL, '20');
INSERT INTO "EMP" VALUES ('7654', 'MARTIN', 'SALESMAN', '7698', TO_DATE('1981-09-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1250', '1400', '30');
INSERT INTO "EMP" VALUES ('7698', 'BLAKE', 'MANAGER', '7839', TO_DATE('1981-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2850', NULL, '30');
INSERT INTO "EMP" VALUES ('7782', 'CLARK', 'MANAGER', '7839', TO_DATE('1981-06-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2450', NULL, '10');
INSERT INTO "EMP" VALUES ('7788', 'SCOTT', 'ANALYST', '7566', TO_DATE('1987-04-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3000', NULL, '20');
INSERT INTO "EMP" VALUES ('7839', 'KING', 'PRESIDENT', NULL, TO_DATE('1981-11-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5000', NULL, '10');
INSERT INTO "EMP" VALUES ('7844', 'TURNER', 'SALESMAN', '7698', TO_DATE('1981-09-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1500', '0', '30');
INSERT INTO "EMP" VALUES ('7876', 'ADAMS', 'CLERK', '7788', TO_DATE('1987-05-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1100', NULL, '20');
INSERT INTO "EMP" VALUES ('7900', 'JAMES', 'CLERK', '7698', TO_DATE('1981-12-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '950', NULL, '30');
INSERT INTO "EMP" VALUES ('7902', 'FORD', 'ANALYST', '7566', TO_DATE('1981-12-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3000', NULL, '20');
INSERT INTO "EMP" VALUES ('7934', 'MILLER', 'CLERK', '7782', TO_DATE('1982-01-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1300', NULL, '10');
COMMIT;

-- ----------------------------
-- Table structure for SALGRADE
-- ----------------------------
DROP TABLE "SALGRADE";
CREATE TABLE "SALGRADE" (
  "GRADE" NUMBER ,
  "LOSAL" NUMBER ,
  "HISAL" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SALGRADE
-- ----------------------------
INSERT INTO "SALGRADE" VALUES ('1', '700', '1200');
INSERT INTO "SALGRADE" VALUES ('2', '1201', '1400');
INSERT INTO "SALGRADE" VALUES ('3', '1401', '2000');
INSERT INTO "SALGRADE" VALUES ('4', '2001', '3000');
INSERT INTO "SALGRADE" VALUES ('5', '3001', '9999');
COMMIT;

-- ----------------------------
-- Primary Key structure for table DEPT
-- ----------------------------
ALTER TABLE "DEPT" ADD CONSTRAINT "PK_DEPT" PRIMARY KEY ("DEPTNO");

-- ----------------------------
-- Primary Key structure for table EMP
-- ----------------------------
ALTER TABLE "EMP" ADD CONSTRAINT "PK_EMP" PRIMARY KEY ("EMPNO");

-- ----------------------------
-- Foreign Keys structure for table EMP
-- ----------------------------
ALTER TABLE "EMP" ADD CONSTRAINT "FK_DEPTNO" FOREIGN KEY ("DEPTNO") REFERENCES "DEPT" ("DEPTNO") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;