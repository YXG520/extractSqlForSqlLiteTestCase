error "out of memory"
  
DROP TABLE IF EXISTS t1;
  CREATE TABLE IF NOT EXISTS t1(
     a int, b float, c double, d text, e varchar(20),
     primary key(a,b,c)
  );
  CREATE TABLE IF NOT EXISTS t1(
     a int, b float, c double, d text, e varchar(20),
     primary key(a,b,c)
  );
  DROP TABLE IF EXISTS t1;

