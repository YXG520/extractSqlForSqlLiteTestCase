CREATE TABLE Table0 (Col0  NOT NULL DEFAULT (CURRENT_TIME IS 1 > 1));
  INSERT OR REPLACE INTO Table0 DEFAULT VALUES ;
  SELECT * FROM Table0;

CREATE TABLE Table1(
    Col0 TEXT DEFAULT (CASE WHEN 1 IS 3530822107858468864 
                            THEN 1 ELSE quote(1) IS 3530822107858468864 END)
  );
  INSERT INTO Table1 DEFAULT VALUES;
  SELECT * FROM Table1;

CREATE TABLE Table2a(
     Col0  NOT NULL   DEFAULT (CURRENT_TIME IS 1  IS NOT 1  > 1)
  );
  INSERT OR REPLACE INTO Table2a DEFAULT VALUES;
  SELECT * FROM Table2a;

CREATE TABLE Table2b (Col0  NOT NULL  DEFAULT (CURRENT_TIME  IS NOT FALSE)) ;
  INSERT OR REPLACE INTO Table2b DEFAULT VALUES ;
  SELECT * FROM Table2b;

CREATE TABLE Table3 (Col0 DEFAULT (CURRENT_TIMESTAMP BETWEEN 1 AND 1));
  INSERT INTO Table3 DEFAULT VALUES;
  SELECT * FROM Table3;

CREATE TABLE Table4 (Col0 DEFAULT (1 BETWEEN CURRENT_TIMESTAMP AND 1));
  INSERT INTO Table4 DEFAULT VALUES;
  SELECT * FROM Table4;

CREATE TABLE Table5 (Col0 DEFAULT (1 BETWEEN 1 AND CURRENT_TIMESTAMP));
  INSERT INTO Table5 DEFAULT VALUES;
  SELECT * FROM Table5;

CREATE TEMPORARY TABLE Table6(
    Col0 DEFAULT (CASE x'5d' WHEN 1 THEN
        CASE CURRENT_TIMESTAMP WHEN 1 THEN 1 ELSE 1 END
        ELSE CASE WHEN 1 THEN FALSE END  END )
  );
  INSERT INTO temp.Table6 DEFAULT VALUES ;
  SELECT * FROM Table6;

WITH TableX AS (SELECT DISTINCT * ORDER BY 1  , 1 COLLATE RTRIM)
      DELETE FROM Table6  WHERE Col0 || +8388608  ;
  SELECT * FROM Table6;

