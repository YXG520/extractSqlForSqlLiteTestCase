

  PRAGMA table_info(pragma_function_list)



  SELECT DISTINCT name, builtin
    FROM pragma_function_list WHERE name='upper' AND builtin



  SELECT DISTINCT name, builtin
    FROM pragma_function_list WHERE name LIKE 'exter%';

