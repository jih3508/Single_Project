from openpyxl import load_workbook
import xml.etree.ElementTree as ET
import pandas as pd
import datetime as dt

date_string = dt.datetime.now()

df = pd.read_excel('다국어 정리.xlsx', header=0)
print(df.query('code == "PMPV.coui.text01"')['code'].count())
lang = 'ko'
colMap = {
    'ko' : 'B',
    'en' : 'C',
    'zh' : 'D',
    'vi' : 'E'
}


with open(lang + '.xml', encoding='UTF8') as xml:
    tree =  ET.parse(xml)
    root = tree.getroot()
    for child in root:
        code , value = child.get('key'), child.text
        code = code.strip(); value = value.strip() if value else value
        code =  "\"" + code + "\""
        print(code, value)
        if df.query('code == {}'.format(code))['code'].count() < 1:
            code = code.replace("\"", "")
            data = {
                'code' : [code],
                lang : [value]
            }
            new_data = pd.DataFrame(data)
            df = pd.concat([df, new_data])
        else:
            code = code.replace("\"", "")
            df.loc[df[lang] == code, colMap[lang]] = value

df['code'].sort_values()
filled = df.fillna('x')
with pd.ExcelWriter('보안포탈 다국어정리.xlsx') as write: 
    filled.to_excel(write, sheet_name='locale', index=False)