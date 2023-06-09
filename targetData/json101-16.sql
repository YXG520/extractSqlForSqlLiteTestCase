

  SELECT length(json_extract('"abc\uD834\uDD1Exyz"','$'));



  SELECT length(json_extract('"\uD834\uDD1E"','$'));



  SELECT unicode(json_extract('"\uD834\uDD1E"','$'));

