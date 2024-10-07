from code.Util import toCamelString

"""
INSERT INTO `system__banner`(
      `image_id`
    , `title`
    , `link`
    , `is_popup`
    , `x`
    , `y`
    , `width`
    , `height`
    , `order`
    , `start_datetime`
    , `end_datetime`
    , `use_yn`
    , `created_datetime`
    )
    VALUES (
      #{fileId}
     ,#{title}
     ,#{link}
     ,true
     ,#{x}
     ,#{y}
     ,#{width}
     ,#{height}
     ,#{order}
     ,#{startDatetime}
     ,#{endDatetime}
     ,#{useYn}
     , NOW()
    )
"""

table_name = "system__banner"
table_columns = [
  "image_id"
  ,"title"
  ,"link"
  ,"x"
  ,"y"
  ,"width"
  ,"height"
  ,"start_datetime"
  ,"end_datetime"
  ,"order"
  ,"use_yn"
]
# insert
sql_insert = """
  INSERT INTO `{0}`(
   `{1}`\n""".format(table_name, table_columns[0])
sql_value = """ )
  VALUES (
   {}\n""".format("#{" + toCamelString(table_columns[0]) + "}")
for column in table_columns[1:]:
    sql_insert += "  ,`{}`\n".format(column)
    sql_value +=  "  ,{}\n".format("#{" + toCamelString(column) + "}")

sql = sql_insert + sql_value +" )"
print(sql)

with open("insert_sql.txt", "w", encoding="utf8") as f:
  f.write(sql)
