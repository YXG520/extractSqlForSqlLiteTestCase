

    CREATE VIRTUAL TABLE vars USING tclvar;
    SELECT name, arrayname, value FROM vars WHERE name='abc';
  


    SELECT name, arrayname, value FROM vars WHERE name='A';
  


    SELECT name, value FROM vars
      WHERE name MATCH 'tcl_*' AND arrayname = '' 
      ORDER BY name;
  
