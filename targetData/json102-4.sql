

  SELECT json_set('{"a":2,"c":4


  SELECT json_object('a',2,'c',4);



  SELECT json_object('a',2,'c','{e:5


  SELECT json_object('a',2,'c',json_object('e',5));



  SELECT json_remove('[0,1,2,3,4]','$[2]');



  SELECT json_remove('[0,1,2,3,4]','$[2]','$[0]');



  SELECT json_remove('[0,1,2,3,4]','$[0]','$[2]');



  SELECT json_remove('{"x":25,"y":42


  SELECT json_remove('{"x":25,"y":42


  SELECT json_remove('{"x":25,"y":42
