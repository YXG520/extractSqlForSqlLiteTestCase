import re

data = """
do_execsql_test alter-19.2 {
  SELECT name FROM sqlite_schema WHERE sql LIKE '%t2%';
} {}
do_execsql_test alter-19.3 {
  SELECT name FROM sqlite_schema WHERE sql LIKE '%t3%' ORDER BY name;
} {r1 t3}

catchsql {
    CREATE TABLE t3651(a UNIQUE);
    INSERT INTO t3651 VALUES(5);
    ALTER TABLE t3651 ADD COLUMN b UNIQUE;
}

execsql {
    CREATE TABLE /* hi */ t3102a(x);
    CREATE TABLE t3102b -- comment
    (y);
    CREATE INDEX t3102c ON t3102a(x);
    SELECT name FROM sqlite_master WHERE name GLOB 't3102*' ORDER BY 1;
}
"""

# 正则表达式匹配包含'sql'作为前缀，并且包含在大括号中的文本
# pattern = re.compile(r'\w*sql\w*\s*\{([\s\S]*?)\}', re.IGNORECASE)
# pattern = re.compile(r'(\w*sql\w*.*\s*\{[\s\S]*?\})', re.IGNORECASE)
pattern = re.compile(r'\b\w*sql\w*\b.*\{\s*([\s\S]*?)\}', re.IGNORECASE)

# 找到所有匹配的文本块
matches = pattern.findall(data)

# 写入到 .sql 文件中
with open("output.sql", "w") as file:
    for match in matches:
        # 写入匹配的文本
        file.write(match.strip() + '\n\n')

# import regex
#
# # 正则表达式
# # pattern = r'(\w*sql\w*.*\s\{)([\s\S]*)(\})'
# # pattern = r'(\w*sql\w*.*\s\{)([^\}]*)'
# # pattern = r'(\w*sql\w*\s*\{)([^\}]*)'
# pattern = r'(?<=\w*sql\w*.*\s\{)([\s\S]*?)(?=\})'
# pattern = r'.*sql.*\{(([^\}]*))'
#
# # 输入文本
# text = """
# execsql {
#     CREATE TABLE t1(x);
#     CREATE TABLE t2(y);
# }
# catchsql {
#     SELECT name FROM sqlite_master WHERE name='t1';
# };
#
# catchsqlyyy {
#     SELECT name FROM sqlite_master WHERE name='t1';
# };
#
# xxxcatchsqlyyy {
#     SELECT name FROM sqlite_master WHERE name='t1';
#     SELECT name FROM sqlite_master WHERE name='t1';
#     SELECT name FROM sqlite_master WHERE name='t1';
# };
#
#
# """
#
# # 使用 re.findall() 查找所有匹配项
# matches = regex.findall(pattern, text, regex.DOTALL)
#
# # 输出匹配项中的第二个捕获组（中间的字符串）
# for match in matches:
#     # print(match.strip('\n'))  # match[1] 表示第二个捕获组的内容
#     print(match[0])  # match[1] 表示第二个捕获组的内容
#
