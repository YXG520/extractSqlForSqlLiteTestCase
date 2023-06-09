

  SELECT typeof( unhex(' ', ' -') ), length( unhex('-', ' -') );


 SELECT typeof(unhex(NULL)) 
null

 SELECT typeof(unhex(NULL, ' ')) 
null

 SELECT typeof(unhex('1234', NULL)) 
null
