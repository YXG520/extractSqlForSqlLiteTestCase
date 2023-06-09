

  CREATE VIRTUAL TABLE vars USING tclvar;
  SELECT name, arrayname, value FROM vars WHERE name = 'xyz';


SELECT name, value FROM vars WHERE name MATCH 'x*' AND $expr

