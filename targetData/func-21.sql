

    SELECT replace(1,2);
  


    SELECT replace(1,2,3,4);
  


    SELECT typeof(replace('This is the main test string', NULL, 'ALT'));
  


    SELECT typeof(replace(NULL, 'main', 'ALT'));
  


    SELECT typeof(replace('This is the main test string', 'main', NULL));
  


    SELECT replace('This is the main test string', 'main', 'ALT');
  


    SELECT replace('This is the main test string', 'main', 'larger-main');
  


    SELECT replace('aaaaaaa', 'a', '0123456789');
  


      SELECT LENGTH(REPLACE($::str, 'C', $::rep));
    
