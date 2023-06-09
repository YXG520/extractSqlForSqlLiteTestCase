

  SELECT json_array(1,2.5,null,'hello');



  SELECT json_array(1,'{"abc":2.5,"def":null,"ghi":hello


  SELECT json_array(1,json('{"abc":2.5,"def":null,"ghi":"hello"


  SELECT json_array(1,json_object('abc',2.5,'def',null,'ghi','hello'),99);
  -- the second term goes in as JSON



  SELECT hex(json_array('String "\ Test'));



  SELECT json_array(1,printf('%.1000c','x'),x'abcd',3);



  SELECT json_array(-9223372036854775808,9223372036854775807,0,1,-1,
                    0.0, 1.0, -1.0, -1e99, +2e100,
                    'one','two','three',
                    4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
                    19, NULL, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
                    'abcdefghijklmnopqrstuvwyxzABCDEFGHIJKLMNOPQRSTUVWXYZ',
                    'abcdefghijklmnopqrstuvwyxzABCDEFGHIJKLMNOPQRSTUVWXYZ',
                    'abcdefghijklmnopqrstuvwyxzABCDEFGHIJKLMNOPQRSTUVWXYZ',
                    99);

