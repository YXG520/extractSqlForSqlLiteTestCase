

  CREATE TABLE t1(x);
  PRAGMA writable_schema=ON;
  UPDATE sqlite_master SET sql='CREATE table t(d CHECK(T(#0)';
  BEGIN;
  CREATE TABLE t2(y);
  ROLLBACK;
  DROP TABLE IF EXISTS t3;



  CREATE TABLE t1(x UNIQUE);
  PRAGMA writable_schema=ON;
  UPDATE sqlite_master SET sql='CREATE TABLE IF not EXISTS t(c)';
  BEGIN;
  CREATE TABLE t2(x);
  ROLLBACK;
  DROP TABLE F;



  CREATE TABLE t1(x UNIQUE);
  PRAGMA writable_schema=ON;
  UPDATE sqlite_master SET sql='CREATE table y(a TEXT, a TEXT)';
  BEGIN;
  CREATE TABLE t2(y);
  ROLLBACK;
  DROP TABLE IF EXISTS t;

