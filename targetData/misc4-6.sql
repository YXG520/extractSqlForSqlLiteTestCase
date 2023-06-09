

    CREATE TABLE abc(a);
    INSERT INTO abc VALUES(1);
    CREATE TABLE def(d, e, f, PRIMARY KEY(d, e));
  


    SELECT a FROM abc LEFT JOIN def ON (abc.a=def.d);
  
