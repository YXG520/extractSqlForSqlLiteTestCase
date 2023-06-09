

  SELECT json_object('ex','[52,3.14159]');



  SELECT json_object('ex',json('[52,3.14159]'));



  SELECT json_object('ex',json_array(52,3.14159));



  SELECT json(' { "this" : "is", "a": [ "test" ] 


  SELECT json_array(1,2,'3',4);



  SELECT json_array('[1,2]');



  SELECT json_array(json_array(1,2));



  SELECT json_array(1,null,'3','[4,5]','{"six":7.7


  SELECT json_array(1,null,'3',json('[4,5]'),json('{"six":7.7


  SELECT json_array_length('[1,2,3,4]');



  CREATE TABLE user(name,phone);
  INSERT INTO user(name,phone) VALUES
     ('Alice','["919-555-2345","804-555-3621"]'),
     ('Bob','["201-555-8872"]'),
     ('Cindy','["704-555-9983"]'),
     ('Dave','["336-555-8421","704-555-4321","803-911-4421"]');
  SELECT DISTINCT user.name
    FROM user, json_each(user.phone)
   WHERE json_each.value LIKE '704-%'
   ORDER BY 1;



  UPDATE user
     SET phone=json_extract(phone,'$[0]')
   WHERE json_array_length(phone)<2;
  SELECT name, substr(phone,1,5) FROM user ORDER BY name;



  SELECT name FROM user WHERE phone LIKE '704-%'
  UNION
  SELECT user.name
    FROM user, json_each(user.phone)
   WHERE json_valid(user.phone)
     AND json_each.value LIKE '704-%';



  CREATE TABLE big(json JSON);
  INSERT INTO big(json) VALUES('{
    "id":123,
    "stuff":[1,2,3,4],
    "partlist":[
       {"uuid":"bb108722-572e-11e5-9320-7f3b63a4ca74"


  SELECT big.rowid, fullkey, value
    FROM big, json_tree(big.json)
   WHERE json_tree.type NOT IN ('object','array')
   ORDER BY +big.rowid, +json_tree.id



  SELECT big.rowid, fullkey, atom
    FROM big, json_tree(big.json)
   WHERE atom IS NOT NULL
   ORDER BY +big.rowid, +json_tree.id



  SELECT DISTINCT json_extract(big.json,'$.id')
    FROM big, json_tree(big.json,'$.partlist')
   WHERE json_tree.key='uuid'
     AND json_tree.value='6fa5181e-5721-11e5-a04e-57f3d7b32808';



  SELECT DISTINCT json_extract(big.json,'$.id')
    FROM big, json_tree(big.json,'$')
   WHERE json_tree.key='uuid'
     AND json_tree.value='6fa5181e-5721-11e5-a04e-57f3d7b32808';



  SELECT DISTINCT json_extract(big.json,'$.id')
    FROM big, json_tree(big.json)
   WHERE json_tree.key='uuid'
     AND json_tree.value='6fa5181e-5721-11e5-a04e-57f3d7b32808';


 SELECT json_valid(char(32)  || '"xyz"') 

 SELECT json_valid(char(200) || '"xyz"') 
