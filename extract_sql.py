import regex
import os


def extract_sql_statements(file_path):
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
    p9 = r'\b\w*sql\w*\b.*\{\s*([\s\S]*?)\}'

    sql_statements = regex.findall(p9, file_content, regex.IGNORECASE)
    SQLs = []
    index = 1
    for sql in sql_statements:
        # if sql == '\n':
        #     continue
        # print("该行sql是："+sql)
        # print(f"第 {index} 个sql语句是："+sql)
        index += 1
        SQLs.append(sql)

    # return [sql.strip() for sql in sql_statements]
    # return "1"
    return SQLs

def write_to_txt(sql_statements, output_file):
    # 写入到txt文件
    with open(output_file, 'w', encoding='utf-8') as file:
        for match in sql_statements:
            file.write(match + '\n')

# 指定目录
def read_from_directory(directory):
    # 遍历目录下的文件
    for filename in os.listdir(directory):
        # 检查文件是否以 .test 结尾
        if filename.endswith(".test"):
            # 构造完整的文件路径
            filepath = os.path.join(directory, filename)

            # 读取并打印文件内容
            SQLs = extract_sql_statements(filepath)
            target_file_path = "targetData/"+filename.replace(".test", ".sql")
            # 写入sql文件
            write_to_txt(SQLs, target_file_path)

if __name__ == '__main__':

    directory = "C:/Users/yxg/Desktop/科研/sqlite/test"
    # directory = "source_data/"
    read_from_directory(directory)

    print(f'SQL statements have been successfully extracted and saved to the specific directory ...')
