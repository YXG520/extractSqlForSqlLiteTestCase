

  SELECT ('{a: "abc'||char(0x5c,0x27)||'xyz"


  SELECT ('{a: "abc'||char(0x5c,0x22)||'xyz"


  SELECT ('{a: "abc'||char(0x5c,0x5c)||'xyz"


  SELECT hex(('{a: "abc\bxyz"


  SELECT hex(('{a: "abc\f\n\r\t\vxyz"


  SELECT hex(('{a: "abc\0xyz"


  SELECT '{a: "abc\x35\x4f\x6Exyz"


  SELECT '{a: "\x6a\x6A\x6b\x6B\x6c\x6C\x6d\x6D\x6e\x6E\x6f\x6F"
