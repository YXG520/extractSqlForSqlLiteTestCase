

  SELECT (char(0x09,0x0a,0x0b,0x0c,0x0d,0x20,0xa0,0x2028,0x2029)
          || '{a: "xyz"


  SELECT ('{a:' || char(0x09,0x0a,0x0b,0x0c,0x0d,0x20,0xa0,0x2028,0x2029)
          || '"xyz"


  SELECT (char(0x1680,0x2000,0x2001,0x2002,0x2003,0x2004,0x2005,
               0x2006,0x2007,0x2008,0x2009,0x200a,0x3000,0xfeff)
          || '{a: "xyz"


  SELECT ('{a: ' ||char(0x1680,0x2000,0x2001,0x2002,0x2003,0x2004,0x2005,
                        0x2006,0x2007,0x2008,0x2009,0x200a,0x3000,0xfeff)
          || ' "xyz"
