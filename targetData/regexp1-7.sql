

  SELECT char(0x61,0x7ff,0x62) REGEXP char(0x7ff);



  SELECT char(0x61,0x800,0x62) REGEXP char(0x800);



  SELECT char(0x61,0xabc,0x62) REGEXP char(0xabc);



  SELECT char(0x61,0xfff,0x62) REGEXP char(0xfff);



  SELECT char(0x61,0x1000,0x62) REGEXP char(0x1000);



  SELECT char(0x61,0xffff,0x62) REGEXP char(0xffff);



  SELECT char(0x61,0x10000,0x62) REGEXP char(0x10000);



  SELECT char(0x61,0x10ffff,0x62) REGEXP char(0x10ffff);

