

  /* Shallow enough to be parsed */
  SELECT json_valid(printf('%.1000c0%.1000c','[',']'));



  /* Too deep by one */
  SELECT json_valid(printf('%.1001c0%.1001c','[',']'));



  /* Shallow enough to be parsed { */
  SELECT json_valid(replace(printf('%.1000c0%.1000c','[','


  /* Too deep by one { */
  SELECT json_valid(replace(printf('%.1001c0%.1001c','[','
