from code.Util import toCamelString

"""
UPDATE
    `{}`
    <set>
      <if test="vo.isTitleDirty">
        `title` = #{vo.title}
      </if>
    </set>
    WHERE `techlake_id` = #{techlakeId}
"""

table_name = "content__prompt_bank"
table_key = "prompt_bank_id"
table_columns = [
"title"
,"tag"
,"chrome_link_url"
,"edge_link_url"
,"thumbnail_image"
,"content_image"
]

sql = """
UPDATE
  `{}`
  <set>""".format(table_name)

for column in table_columns:
  sql += """  
    <if test="vo.{0}">
      `{1}` = {2}
    </if>""".format(toCamelString("is_" + column + "_dirty"), column , "#{vo." + toCamelString(column) + "}")

sql += """
  </set>
    , `updated_datetime` = NOW()
  WHERE `{0}` = {1}
""".format(table_key, "#{" + toCamelString(table_key) + "}")


print(sql)

with open("update_sql.txt", "w", encoding="utf8") as f:
  f.write(sql)