
 
  SELECT length(zeroblob(-1444444444444444));


 
  SELECT zeroblob(5000 * 1024 * 1024);


 
  SELECT quote(zeroblob(5000 * 1024 * 1024));


 
  SELECT quote(zeroblob(-1444444444444444));



  SELECT quote(test_zeroblob(-1));

SELECT length(?)
