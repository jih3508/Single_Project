from Util import toCamelString

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
  "system_code"	                 
  "question_type_id"	         
  "title"	                     
  "description"	                 
  "is_guest"	                 
  "registerer_id"	             
  "registerer"	                 
  "updater_id"	                 
  "updater"	                     
  "registerer_phone_country_id"	 
  "registerer_pii_phone_number"	 
  "registerer_pii_email_address"
  "iv_data_encryption_key"       
  "encrypted_data_encryption_key"
  "center_id"	                 
  "offline_class_id"	         
  "online_course_id"	         
  "model_id"	                 
  "asset_id"	                 
  "product_id"	                 
  "end_datetime"
]
# insert
sql_insert = """
  INSERT INTO `{0}`(
   {1}\n""".format(table_name, table_columns[0])
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
