from openpyxl import load_workbook
import xml.etree.ElementTree as ET
import pandas as pd
import datetime as dt


xmlHead = '''
<property>
'''
xmlTail = '''
</property>
'''

langs = ['ko', 'en', 'vi', 'zh']

xmlFileMap = {}

df = pd.read_excel('다국어번역.xlsx', header=0)
df = df[df['type'] == 'xml']

# Excel 데이터 읽기
for index, rowData in df.iterrows():
    for lang in langs:
        file_name = df.loc[index]['file_name'] + '_' + lang + '.xml'
        setRowData = '\t<entry key="{0}">{1}</entry>\n'.format(df.loc[index]['code'], df.loc[index][lang])
        setRowData = setRowData[:-1] + '<!-- {0} -->\n'.format(df.loc[index]['ko']) if lang != 'ko' else setRowData
        if file_name in xmlFileMap.keys():
            xmlFileMap[file_name] += setRowData
        else:
             xmlFileMap[file_name] = xmlHead + setRowData

print(xmlFileMap.keys())

# Xml 파일 쓰기
for file_name in xmlFileMap.keys():
    xmlFileMap[file_name] += xmlTail
    with open('.\\to-be\\xml\\' + file_name,'w' ,encoding='UTF8') as xml:
        xml.write(xmlFileMap[file_name])
