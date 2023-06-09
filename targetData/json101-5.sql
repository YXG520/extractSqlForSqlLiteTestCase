

  CREATE TABLE j2(id INTEGER PRIMARY KEY, json, src);
  INSERT INTO j2(id,json,src)
  VALUES(1,'{
    "firstName": "John",
    "lastName": "Smith",
    "isAlive": true,
    "age": 25,
    "address": {
      "streetAddress": "21 2nd Street",
      "city": "New York",
      "state": "NY",
      "postalCode": "10021-3100"
    


  SELECT id, json_valid(json), json_type(json), '|' FROM j2 ORDER BY id;



  SELECT j2.rowid, jx.rowid, fullkey, path, key
    FROM j2, json_tree(j2.json) AS jx
   WHERE fullkey!=(path || CASE WHEN typeof(key)=='integer' THEN '['||key||']'
                                ELSE '.'||key END);



  SELECT j2.rowid, jx.rowid, fullkey, path, key
    FROM j2, json_each(j2.json) AS jx
   WHERE fullkey!=(path || CASE WHEN typeof(key)=='integer' THEN '['||key||']'
                                ELSE '.'||key END);



  SELECT j2.rowid, jx.rowid, fullkey, path, key
    FROM j2, json_each(j2.json) AS jx
   WHERE jx.json<>j2.json;



  SELECT j2.rowid, jx.rowid, fullkey, path, key
    FROM j2, json_tree(j2.json) AS jx
   WHERE jx.json<>j2.json;



  SELECT j2.rowid, jx.rowid, fullkey, path, key
    FROM j2, json_each(j2.json) AS jx
   WHERE jx.value<>jx.atom AND type NOT IN ('array','object');



  SELECT j2.rowid, jx.rowid, fullkey, path, key
    FROM j2, json_tree(j2.json) AS jx
   WHERE jx.value<>jx.atom AND type NOT IN ('array','object');

