

  SELECT json_patch('{"a":"b"


  SELECT coalesce(json_patch(null,'{"a":"c"


  SELECT json_patch('{"a":"b"


  SELECT json_patch('{"a":"b"


  SELECT json_patch('{"a":"b","b":"c"


  SELECT json_patch('{"a":["b"]


  SELECT json_patch('{"a":"c"


  SELECT json_patch('{"a":{"b":"c"


  SELECT json_patch('{"a":[{"b":"c"


  SELECT json_patch('["a","b"]','["c","d"]');



  SELECT json_patch('{"a":"b"


  SELECT json_patch('{"a":"foo"


  SELECT coalesce(json_patch('{"a":"foo"


  SELECT json_patch('{"a":"foo"


  SELECT json_patch('{"e":null


  SELECT json_patch('[1,2]','{"a":"b","c":null


  SELECT json_patch('{


  SELECT json_patch('{"x":{"one":1
