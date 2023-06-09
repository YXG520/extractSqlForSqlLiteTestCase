

    SELECT fullname, value FROM tclvar WHERE name='vtabJ' ORDER BY fullname;
  


  INSERT INTO tclvar(fullname, value)
    VALUES('vtabJ(4)',4),('vtabJ(five)',555);
  SELECT fullname, value FROM tclvar WHERE name='vtabJ' ORDER BY fullname;




    INSERT INTO tclvar(fullname, value) VALUES('vtabJ(4)',444);
  


    INSERT INTO tclvar(fullname, value) VALUES('vtabJ(4)',NULL);
  


    UPDATE tclvar SET value=55 WHERE fullname='vtabJ(five)';
  


    UPDATE tclvar SET fullname='vtabJ(5)' WHERE fullname='vtabJ(five)';
  




  SELECT fullname FROM tclvar WHERE arrayname='two'



  DELETE FROM tclvar WHERE arrayname='two';
  SELECT fullname, value FROM tclvar WHERE name='vtabJ' ORDER BY fullname;




  INSERT INTO tclvar(fullname, value) VALUES('xx', 'a');
  SELECT name, value FROM tclvar where name = 'xx';



  UPDATE tclvar SET value = value || 't' 
  WHERE name = 'xx' OR name = 'x'||'x';
  SELECT name, value FROM tclvar where name = 'xx';



  UPDATE tclvar SET value = value || 't' 
  WHERE name = 'xx' OR name BETWEEN 'xx' AND 'xx';
  SELECT name, value FROM tclvar where name = 'xx';



  DELETE FROM tclvar WHERE name BETWEEN 'xx' AND 'xx' OR name='xx';
  SELECT name, value FROM tclvar where name = 'xx';

