import regex
import os
from collections import defaultdict

# the dict mapping the filepath to the concrete error
err_filesMap = defaultdict(list)

# count the files happening errors
cnt_err_file = 0

# total files
total_file = 0

# the dict mapping filepath to the extracted SQLs
filepath2numSQLs = defaultdict(int)

# total sql files
num_sql_files = 0

def handleSingleFile(file_path):
    # 读取文件内容
    with open(file_path, 'r', encoding='utf-8') as file:
        file_content = file.read()

    # 使用正则表达式提取SQL语句
    # p1 = r'(?<=\w*sql\w*.*\s\")[\s\S]*?(?=\")|(?<=\w*sql\w*.*\s\{)[\s\S]*?(?=\})'
    # p2 = r'(?<=\w*sql\w*\s*\{)([^\}]*?)(?=\})'
    # p3 = r'(?<=\w*sql\w*.*\s\{)([\s\S]*?)(?=\})'
    # p4 = r'(\w*sql\w*.*\s\{)([\s\S]*?)(\})'
    # p5 = r'(?<=\w*sql\w*\s*\{)([^\}]*)' #提取不出 xxxsql {...}这种，但是可以提取出sqlyyy {...},除此之外一切正常
    # p6 = r'(?<=\w*sql\w*.*\s\{)([\s\S]*?)(?=\})'#提取的数据比较全，但是输出格式有问题
    # p7 = r'(?<=\w*sql\w*.*\s\{)([^\}]*)'
    # p8 = r'.*sql.*\{(([^\}]*))'
    # p9 = r'\b\w*sql\w*\b.*\{\s*([\s\S]*?)\}'
    # p9 = r'do\w*\b.*\{\s*([\s\S]*?)\}'
    p9 = r'(do\w*\b.*)\{\s*([\s\S]*?)\}'
    p10 = r'(do\w*\b.*)\{\s*([\s\S]*?)do'
    p11 = r'(do\w*\b.*)\{\s*([\s\S]*?)(?=do)'
    p12 = r'(do\w*\b.*\{\s*)([\s\S]*?)(?=\s+do|finish_test)'# 返回结果是一个三元组，第二个元素是sql数据
    p13 = r'(do\w*\b.*)\{\s*([\s\S]*?)(?=\s+do|finish_test)'# 返回的是二元组，第一个就是需要的数据

    sql_statements = regex.findall(p12, file_content, ignore_unused=True)
    sql_group_dict = defaultdict(list)
    index = 1
    try:
        for sql in sql_statements:
            # if sql == '\n':
            #     continue
            # # print("该行sql是："+sql)

            # # print(f"第 {index} 个sql语句的测试编号是{sql[0]},语句是{sql[1]}")

            # 从后往前匹配找到第一个非.也非数字的字符
            # title = sql[0]
            # pos = -1
            mark = ""
            # for i in range(len(title) - 1, -1, -1):
            #     char = title[i]
            #     if char != '.' and not char.isdigit():
            #         # pos = i + 1
            #         mark = title[i+1:]
            #         break
            id_title = sql[0].split("-")# 所属的当前文件的sql组
            if len(id_title) == 1:
                id_title = sql[0].split(" ")
            id_ = id_title[1]
            id = ""
            if "." in id_:
                id = id_.split(".")[0]
            else:
                id = id_[0]
            # # print(f"第{id}组数据")
            sql_group_dict[id].append(extract_sql_statements(sql[0]+sql[1]))
            # print(f"收集到第 {id} 组数据 {sql[0]+sql[1]}, 现在该组数据为{sql_group_dict[id]}")
            index += 1
    except Exception:
            # print(f'解析文件{file_path}的sql语句时发生异常！！！')
            global cnt_err_file
            cnt_err_file += 1
            err_filesMap[file_path].append("解析时错误")
    filepath2numSQLs[file_path] = len(sql_statements)
    global num_sql_files
    num_sql_files += len(sql_statements)
    return sql_group_dict

def extract_sql_statements(text):
    # pattern = r'\{(.+?)\}'
    # pattern = r'\s{1}eval\s{1}\{([\s\S]*?)\}'
    ''' 提取demo
        do_test alter-1.9.1 {
          execsql {
            CREATE TABLE tbl1   (a, b, c);
            INSERT INTO tbl1 VALUES(1, 2, 3);
          }
        } {}
        do_test alter-1.9.2 {
          execsql {
            SELECT * FROM tbl1;
          }
        } {1 2 3}
   do_test alter-2.9.2 {
          execsql "
            SELECT * FROM tbl1;
          "
        } {1 2 3}
    :param text:
    :return:
    '''
    p0 = r'\s{1}\w+\s{1}\{([\s\S]*?)\}|\s{1}\w+\s{1}\"([\s\S]*?)\"'
    p1 = r'\s{1}\w+\s{1}\{([\s\S]*?)\}'
    p2 = r'\s{1}\w+\s{1}\"([\s\S]*?)\"'
    p3 = r'(?<=\w*sql\w*.*\s\{)([\s\S]*?)(?=\})' # 匹配 xxxsql {SELECT * FROM...}的sql数据
    p4 = r'sql\w*.*\s"([^"]*)"' # 匹配 xxxsql "SELECT * FROM..."的sql数据
    p5 = r'(?<=\w*sql\w*.*\s\{)([\s\S]*?)(?=\})|sql\w*.*\s"([^"]*)"' #p3，p4的结合
    p6 = r'(?<=\w*sql\w*.*\s\{)([\s\S]*?)(?=\})|sql\w*.*\s"([^"]*)"|(?<=\w*eval\w*.*\s\{)([\s\S]*?)(?=\})' #p3和p4和p7的结合
    p7 = r'(?<=\w*eval\w*.*\s\{)([\s\S]*?)(?=\})'

    # 使用 regex.findall 方法查找所有匹配项
    # matches = regex.findall(pattern, text)
    pattern = regex.compile(p6)  # 编译正则表达式，匹配一个或多个数字
    matches = pattern.findall(text)  # 使用编译好的模式查找字符串

    # print(f"匹配到{len(matches)}条数据")
    res = ""
    if len(matches) != 0:
        for match in matches:
            # # print(f"搜索到的sql语句是: {match}")
            # res += '\n' + match
            if match[0] != "":
                # print(f"搜索到的sql语句是: {match[0]}")
                res += '\n' + match[0]
            elif match[1] != "":
                # print(f"搜索到的sql语句是: {match[1]}")
                res += '\n' + match[1]
            else:
                # print(f"搜索到的sql语句是: {match[2]}")
                res += '\n' + match[2]
        return res

    ''' 提取demo
    do_execsql_test alter3-9.1 {
      CREATE TABLE t1(a,b);
      INSERT INTO t1 VALUES(1, 2), ('null!',NULL), (3,4);
    } 
    do_catchsql_test alter3-9.2 {
      ALTER TABLE t1 ADD COLUMN c CHECK(a!=1);
    } {1 {CHECK constraint failed}}
    '''
    p = r'\s{1}\{\s+([A-Z]+[\s\S]*?)\}'
    pattern = regex.compile(p)  # 编译正则表达式，匹配一个或多个数字
    matches = pattern.findall(text)  # 使用编译好的模式查找字符串
    for match in matches:
        if match != "":
            # print(f"搜索到的sql语句是: {match[0]}")
            res += '\n' + match[0]

    return res

def write_to_txt(sql_statements, output_file):
    # 写入到txt文件
    for k, sql_list in sql_statements.items():
        # 为每一个键值对写一个.sql文件
        with open(output_file+"-"+k+".sql", 'w', encoding='utf-8') as file:
            for sql in sql_list:
                file.write(sql + '\n')

# 指定目录
def read_from_directory(directory):
    # 遍历目录下的文件
    file_list = os.listdir(directory)
    global total_file
    total_file = len(file_list)

    for filename in file_list:
        # 检查文件是否以 .test 结尾
        if filename.endswith(".test"):
            # # print(f'正在解析文件{filename}')
            # 构造完整的文件路径
            filepath = os.path.join(directory, filename)

            # 读取并打印文件内容
            SQLs = handleSingleFile(filepath)
            target_file_path = "targetData/"+filename.replace(".test", "")
            # 写入sql文件
            try:
                write_to_txt(SQLs, target_file_path)
            except Exception:
                err_filesMap[filepath].append("写入时发生错误！")
        # break

if __name__ == '__main__':

    # directory = "C:/Users/yxg/Desktop/科研/sqlite/test"
    # directory = "source_data"
    directory = "source_data/test_data"
    # directory = "source_data/"
    read_from_directory(directory)
    print(f'the total files are {total_file}...\n')
    print(f'the total sql files are {num_sql_files}...\n ')
    print(f'the dict showing the sql file number corresponding to each file are as follow...')
    print(f'the files encountering errors are {len(err_filesMap)}, and now printing the err list files:\n')
    print(err_filesMap)
    print(f'SQL statements have been successfully extracted and saved to the specific directory ...')
