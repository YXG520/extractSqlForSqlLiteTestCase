

  SELECT json_valid(NULL);



  SELECT json_error_position(NULL);



  SELECT json(NULL);



  SELECT json_array(NULL);



  SELECT json_extract(NULL);



  SELECT json_insert(NULL,'$',123);



  SELECT NULL->0;



  SELECT NULL->>0;



  SELECT '{a:5


  SELECT '{a:5


  SELECT json_object(NULL,5);



  SELECT json_patch(NULL,'{a:5


  SELECT json_patch('{a:5


  SELECT json_patch(NULL,NULL);



  SELECT json_remove(NULL,'$');



  SELECT json_remove('{a:5,b:7


  SELECT json_replace(NULL,'$.a',123);



  SELECT json_replace('{a:5,b:7


  SELECT json_set(NULL,'$.a',123);



  SELECT json_set('{a:5,b:7


  SELECT json_type(NULL);



  SELECT json_type('{a:5,b:7


  SELECT json_quote(NULL);



  SELECT count(*) FROM json_each(NULL);



  SELECT count(*) FROM json_tree(NULL);



  WITH c(x) AS (VALUES(1),(2.0),(NULL),('three'))
  SELECT json_group_array(x) FROM c;



  WITH c(x,y) AS (VALUES('a',1),('b',2.0),('c',NULL),(NULL,'three'),('e','four'))
  SELECT json_group_object(x,y) FROM c;

