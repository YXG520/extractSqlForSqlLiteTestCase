

  SELECT json_valid('{"a":55,"b":72,


  SELECT json_error_position('{"a":55,"b":72,


  SELECT json_valid(json('{"a":55,"b":72,


  SELECT json_valid('{"a":55,"b":72 , 


  SELECT json_error_position('{"a":55,"b":72 , 


  SELECT json_error_position('{"a":55,"b":72,,


  SELECT json_valid('{"a":55,"b":72


  SELECT json_error_position('["a",55,"b",72,]');



  SELECT json_error_position('["a",55,"b",72 , ]');



  SELECT json_error_position('["a",55,"b",72,,]');



  SELECT json_valid('["a",55,"b",72]');

