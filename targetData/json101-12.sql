

  CREATE TABLE t12(x);
  INSERT INTO t12(x) VALUES(
    '{"settings":
        {"layer2":
           {"hapax.legomenon":
              {"forceDisplay":true,
               "transliterate":true,
               "add.footnote":true,
               "summary.report":true


  SELECT json_remove(x, '$.settings.layer2."dis.legomenon".forceDisplay')
    FROM t12;



  SELECT json_extract(x, '$.settings.layer2."tris.legomenon"."summary.report"')
    FROM t12;

