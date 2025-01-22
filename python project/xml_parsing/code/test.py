from openpyxl import load_workbook
import xml.etree.ElementTree as ET
import pandas as pd
import datetime as dt

df = pd.read_excel('다국어 정리.xlsx', header=0)
print(df.query('code == "PMPV.coui.text01"')['code'].count())

#text
with open('ko_js.txt', "r", encoding='UTF8') as file:
    strings = file.readlines()
    for string in strings:
        string = string.replace("\n", "")
        #3개이상 나올때
        if len(string.split(":")) > 2:
            code = string.split(":")[0]
            value = ''.join(string.split(":")[1:])
        else:
            code, value = string.split(":")
        code = code.strip(); value = value.strip()
        if df.query('code == {}'.format(code))['code'].count() < 1:
            code = code.replace("\"", "");  value = value.replace("\"", "")
            data = {
                'code' : [code],
                'ko': [value]
            }
            new_data = pd.DataFrame(data)
            df = pd.concat([df, new_data])

#xml
with open('ko_xml.xml', encoding='UTF8') as xml:
    tree =  ET.parse(xml)
    root = tree.getroot()
    for child in root:
        code , value = child.get('key'), child.text
        code = code.strip(); value = value.strip()
        code =  "\"" + code + "\""
        print(code, value)
        if df.query('code == {}'.format(code))['code'].count() < 1:
            code = code.replace("\"", "")
            data = {
                'code' : [code],
                'ko': [value]
            }
            new_data = pd.DataFrame(data)
            df = pd.concat([df, new_data])


df['code'].sort_values()
date_string = dt.datetime.now()
with pd.ExcelWriter('{} 다국어정리.xlsx'.format(date_string.strftime('%Y-%m-%d'))) as write: 
    df.to_excel(write, sheet_name='locale', index=False)