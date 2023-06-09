

  CREATE TABLE peoplew(
    name TEXT PRIMARY KEY,
    role TEXT NOT NULL,
    height INT NOT NULL, -- in cm
    CHECK( role IN ('student','teacher') )
  ) WITHOUT ROWID;
  CREATE INDEX peoplew_idx1 ON peoplew(role, height);
  INSERT INTO peoplew(name,role,height)
     SELECT name, role, height FROM  people;
  SELECT name FROM peoplew WHERE height>=180 ORDER BY +name;



  SELECT name FROM peoplew
   WHERE role IN (SELECT DISTINCT role FROM peoplew)
     AND height>=180 ORDER BY +name;



  SELECT name FROM peoplew WHERE role='teacher' AND height>=180
  UNION ALL
  SELECT name FROM peoplew WHERE role='student' AND height>=180
  ORDER BY 1;



  ANALYZE;



  SELECT name FROM peoplew WHERE height>=180 ORDER BY +name;



  EXPLAIN QUERY PLAN
  SELECT name FROM peoplew WHERE height>=180 ORDER BY +name;

