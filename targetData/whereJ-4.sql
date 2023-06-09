

  CREATE TABLE le(
    le_id largeint,
    xid char(31),
    type smallint,
    name char(255) DEFAULT '',
    mtime largeint DEFAULT 0,
    muuid int DEFAULT 0
  );
  CREATE TABLE cx(
    cx_id largeint,
    code char(31),
    type smallint,
    name char(31),
    description varchar,
    role smallint,
    mtime largeint DEFAULT 0,
    muuid int DEFAULT 0,
    le_id largeint DEFAULT 0,
    imco smallint DEFAULT 0
  );
  CREATE TABLE px(
    px_id largeint,
    cx_id largeint,
    px_tid largeint,
    name char(31),
    description varchar DEFAULT '',
    ia smallint,
    sl smallint,
    le_id largeint DEFAULT 0,
    mtime largeint DEFAULT 0,
    muuid int DEFAULT 0
  );
  CREATE INDEX le_id on le (le_id);
  CREATE INDEX c_id on cx (cx_id);
  CREATE INDEX c_leid on cx (le_id);
  CREATE INDEX p_id on px (px_id);
  CREATE INDEX p_cid0 on px (cx_id);
  CREATE INDEX p_pt on px (px_tid);
  CREATE INDEX p_leid on px (le_id);



  ANALYZE sqlite_master;
  INSERT INTO sqlite_stat1 VALUES('le','le_id','1979 1');
  INSERT INTO sqlite_stat1 VALUES('cx','c_leid','852 171');
  INSERT INTO sqlite_stat1 VALUES('cx','c_id','852 1');
  INSERT INTO sqlite_stat1 VALUES('px','p_leid','114443 63');
  INSERT INTO sqlite_stat1 VALUES('px','p_pt','114443 22889');
  INSERT INTO sqlite_stat1 VALUES('px','p_cid0','114443 181');
  INSERT INTO sqlite_stat1 VALUES('px','p_id','114443 1');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','162 162','162 162',X'030202013903fb');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','208 208','208 208',X'0302020253012d');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','219 219','219 219',X'030202025e0131');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','248 248','248 248',X'030202027b014e');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','265 265','265 265',X'030202028c015f');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','358 358','358 358',X'03020202e901bc');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','439 439','439 439',X'030202033a020d');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','657 657','657 657',X'030202041402b4');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','659 659','659 659',X'030202041602b6');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','681 681','681 681',X'030202042c02cc');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','831 831','831 831',X'03020204c20482');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','852 852','852 852',X'03020204d70497');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','870 870','870 870',X'03020204e904a9');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','879 879','879 879',X'03020204f204b2');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','1099 1099','1099 1099',X'03020205ce058e');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','1273 1273','1273 1273',X'030202067c05a9');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','1319 1319','1319 1319',X'03020206e30730');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','1330 1330','1330 1330',X'0302020700035b');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','1539 1539','1539 1539',X'03020207d105d8');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','1603 1603','1603 1603',X'03020208390780');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','1759 1759','1759 1759',X'030202092f0618');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','1843 1843','1843 1843',X'03020209880650');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','1915 1915','1915 1915',X'03020209d0068b');
  INSERT INTO sqlite_stat4 VALUES('le','le_id','1 1','1927 1927','1927 1927',X'03020209dc0697');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','846 1','0 94','0 94',X'0308015f');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','846 1','0 189','0 189',X'03080200be');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','846 1','0 284','0 284',X'0308020120');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','846 1','0 379','0 379',X'030802017f');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','846 1','0 474','0 474',X'03080201de');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','846 1','0 569','0 569',X'030802023d');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','846 1','0 664','0 664',X'030802029f');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','846 1','0 759','0 759',X'03080202fe');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','3 1','846 847','1 847',X'0301024500e6');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','1 1','849 849','2 849',X'03010246027e');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','1 1','850 850','3 850',X'0301024700c9');
  INSERT INTO sqlite_stat4 VALUES('cx','c_leid','1 1','851 851','4 851',X'03010248027f');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','94 94','94 94',X'03020200b801a8');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','113 113','113 113',X'03020200d101ad');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','171 171','171 171',X'030201011d2a');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','177 177','177 177',X'030202012600f2');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','189 189','189 189',X'030202013501c8');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','206 206','206 206',X'030201014f2d');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','231 231','231 231',X'030202016d00fc');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','284 284','284 284',X'03020201b702d0');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','291 291','291 291',X'03020101c042');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','311 311','311 311',X'03020201d801e7');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','339 339','339 339',X'03020101f74b');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','347 347','347 347',X'03020202030118');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','379 379','379 379',X'030202022f01fa');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','393 393','393 393',X'030201023f55');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','407 407','407 407',X'03020202500201');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','413 413','413 413',X'03020102565a');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','468 468','468 468',X'030201029468');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','474 474','474 474',X'030202029a0211');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','517 517','517 517',X'03020102cc76');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','548 548','548 548',X'03020202f00223');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','569 569','569 569',X'03020203090087');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','664 664','664 664',X'03020203740163');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','759 759','759 759',X'03020203e800b3');
  INSERT INTO sqlite_stat4 VALUES('cx','c_id','1 1','803 803','803 803',X'030202041b026f');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','110728 1','0 12715','0 12715',X'030802345b');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','110728 1','0 25431','0 25431',X'0308026718');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','110728 1','0 38147','0 38147',X'030803009a5c');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','110728 1','0 50863','0 50863',X'03080300cdbe');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','110728 1','0 63579','0 63579',X'0308030100e8');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','110728 1','0 76295','0 76295',X'03080301351d');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','110728 1','0 89011','0 89011',X'03080301674c');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','110728 1','0 101727','0 101727',X'030803019b99');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','28 1','110824 110843','16 110843',X'0301037a0107f1');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','53 1','110873 110875','25 110875',X'0302020095275a');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','32 1','110927 110936','27 110936',X'030203009b009b4a');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','51 1','110980 111017','30 111017',X'03020300a4016c00');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','67 1','111047 111059','38 111059',X'03020200af2611');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','60 1','111136 111156','43 111156',X'03020300bc009aeb');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','42 1','111222 111239','59 111239',X'03020300d200b17b');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','36 1','111264 111266','60 111266',X'03020200d426d6');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','27 1','111733 111757','159 111757',X'030203014e017e1b');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','36 1','111760 111773','160 111773',X'030203014f00a2b9');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','29 1','111822 111833','167 111833',X'0302030176009c22');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','75 1','113031 113095','1190 113095',X'030203068501912c');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','132 1','113230 113263','1252 113263',X'0302030711009ee6');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','110 1','113851 113918','1572 113918',X'03020308e9011ca2');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','78 1','114212 114217','1791 114217',X'03020209e13b24');
  INSERT INTO sqlite_stat4 VALUES('px','p_leid','112 1','114303 114351','1799 114351',X'03020309ea0128f2');
  INSERT INTO sqlite_stat4 VALUES('px','p_pt','89824 1','0 12715','0 12715',X'030802477e');
  INSERT INTO sqlite_stat4 VALUES('px','p_pt','89824 1','0 25431','0 25431',X'0308027c20');
  INSERT INTO sqlite_stat4 VALUES('px','p_pt','89824 1','0 38147','0 38147',X'03080300c211');
  INSERT INTO sqlite_stat4 VALUES('px','p_pt','89824 1','0 50863','0 50863',X'03080300fbe5');
  INSERT INTO sqlite_stat4 VALUES('px','p_pt','89824 1','0 63579','0 63579',X'0308030140ff');
  INSERT INTO sqlite_stat4 VALUES('px','p_pt','89824 1','0 76295','0 76295',X'03080301792d');
  INSERT INTO sqlite_stat4 VALUES('px','p_pt','89824 1','0 89011','0 89011',X'03080301bb68');
  INSERT INTO sqlite_stat4 VALUES('px','p_pt','24217 1','89824 101727','1 101727',X'03090300da12');
  INSERT INTO sqlite_stat4 VALUES('px','p_pt','154 1','114041 114154','2 114154',X'0301030200e5e9');
  INSERT INTO sqlite_stat4 VALUES('px','p_pt','198 1','114195 114351','3 114351',X'03010303015cb1');
  INSERT INTO sqlite_stat4 VALUES('px','p_pt','50 1','114393 114441','4 114441',X'0301030401b2ef');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','3867 1','3 3736','2 3736',X'03010337015c6a');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','4194 1','4177 8209','5 8209',X'0301033b015075');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','4335 1','8371 11129','6 11129',X'0301033d0156fc');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','1740 1','12706 12715','7 12715',X'0301023e34b9');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','1680 1','14446 15487','8 15487',X'0301033f011694');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','7163 1','20116 25431','32 25431',X'03020300a400ed26');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','1525 1','29100 29302','42 29302',X'03020200bb00d1');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','3703 1','30655 33323','45 33323',X'03020300be013fa5');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','2612 1','37767 38147','61 38147',X'03020200e32828');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','1882 1','40545 41584','63 41584',X'03020300ea01a35a');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','6984 1','44110 50863','73 50863',X'0302030102017467');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','1728 1','51230 51680','75 51680',X'030203010400b3e0');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','2805 1','55491 57936','95 57936',X'030203014101a004');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','2837 1','58934 59506','103 59506',X'030203015900a283');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','94 1','63492 63579','137 63579',X'0302030191016319');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','3573 1','63591 64497','140 64497',X'030203019c00822e');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','5037 1','70917 73033','160 73033',X'03020301c70091d9');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','1940 1','75954 76295','161 76295',X'03020201c817f1');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','1927 1','83926 84371','209 84371',X'03020202114295');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','1522 1','86601 88117','213 88117',X'030203021b01b7b5');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','210 1','88906 89011','226 89011',X'030203022800dbbb');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','6165 1','92125 98066','258 98066',X'030203024d0189ac');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','2900 1','100721 101727','293 101727',X'030203027500cf39');
  INSERT INTO sqlite_stat4 VALUES('px','p_cid0','1501 1','110012 110154','503 110154',X'0302020380493a');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','11129 11129','11129 11129',X'03030300d84e014d51');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','12715 12715','12715 12715',X'03030200de816f51');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','13030 13030','13030 13030',X'03030200e05b6fc4');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','25431 25431','25431 25431',X'0303030123df00efb0');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','29302 29302','29302 29302',X'030302013a2812c7');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','35463 35463','35463 35463',X'03030301666e00f866');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','38147 38147','38147 38147',X'030302017a391b74');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','38525 38525','38525 38525',X'030303017c6e00fb58');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','50863 50863','50863 50863',X'03030201b68724dd');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','58461 58461','58461 58461',X'03030201d95b2e1e');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','59506 59506','59506 59506',X'03030301dd7000a0fb');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','63468 63468','63468 63468',X'03030301ecea011405');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','63579 63579','63579 63579',X'03030201ed5932d5');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','64497 64497','64497 64497',X'03030301f0ef00a680');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','73033 73033','73033 73033',X'0303030225b90190e5');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','75650 75650','75650 75650',X'030303023a19019362');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','76295 76295','76295 76295',X'030303023e9801940c');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','79152 79152','79152 79152',X'030303024be50196b9');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','83249 83249','83249 83249',X'0303030261750123b1');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','89011 89011','89011 89011',X'030303027b3900c3af');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','98066 98066','98066 98066',X'03030302a76500ce54');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','101590 101590','101590 101590',X'03030302b63d00d3b5');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','101727 101727','101727 101727',X'03030202b6f24e9b');
  INSERT INTO sqlite_stat4 VALUES('px','p_id','1 1','107960 107960','107960 107960',X'03030302d8ce0136ad');
  ANALYZE sqlite_master;



  EXPLAIN QUERY PLAN
  SELECT
     px.name,
     px.description
  FROM
     le,
     cx,
     px
  WHERE
     cx.code = '2990'
     AND cx.type=2
     AND px.cx_id = cx.cx_id
     AND px.px_tid = 0
     AND px.le_id = le.le_id;

