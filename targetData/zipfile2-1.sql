

  CREATE VIRTUAL TABLE aaa USING zipfile('testzip');
  CREATE VIRTUAL TABLE bbb USING zipfile("testzip");
  CREATE VIRTUAL TABLE ccc USING zipfile(`testzip`);
  CREATE VIRTUAL TABLE ddd USING zipfile([testzip]);
  CREATE VIRTUAL TABLE eee USING zipfile(testzip);
  CREATE VIRTUAL TABLE fff USING zipfile('test''zip');

