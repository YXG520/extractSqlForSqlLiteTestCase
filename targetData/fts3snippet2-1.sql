

  CREATE VIRTUAL TABLE f USING fts3(b);
  INSERT INTO f VALUES ( x'746e6e6d64612e082a011065616e656d655a616c702a2f65732e0f42014001380230018218');



  SELECT  length(snippet(f))>0  FROM f WHERE b MATCH x'1065616e656d655a616c702a2f65732e0f42014001380230018218021001081e0a3d746e6e6d64612e082a010f42014001380230018218021001081e0a3d746e6e6d64612e082a011065616e656d655a616c702a2f65732e0f42014001380230018218021001081e0a3d746e6e6d64612e082a011065616e656d655a616c702a2f65732e0f42014001380230018218021001081e0a3d746e6e6d64612e082a011065616e656d655a616c702a2f0a3d746e6e6d64612e082a011065616e656d655a616c702a2f65732e0f42014001018218021001081e0a3d746e6e6d64612e082a011065616e656d655a616c702a018218021001081e0a3d746e6e6d64612e082a011065616e656d655a616c2a2f65732e0f42014001380230018218021001081e0a3d746e6e6d64612e082a011065616e656d655a616c702a2f65732e0f42014001380230018218021001081e0a3d746e6e6d64612e082a011065616e656d655a616c702a2f65732e0f42014001380230018218021001081e0a3d746e6e6d64612e082a011065616e656d655a616c702a2f65732e0f42014001380230018218021001081e0a3d746e6e6d64612e0f42';

