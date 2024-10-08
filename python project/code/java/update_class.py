from os import remove

from code.Util import toCamelString, toJavaTypeMapping
"""
VO
  private BigInteger id;

  private BigInteger imageId;
  private Boolean isImageIdDirty;

  private String title;
  private Boolean isTitleDirty;

  private String link;
  private Boolean isLinkDirty;

  private Integer x;
  private Boolean isXDirty;

  private Integer y;
  private Boolean isYDirty;

  private Integer width;
  private Boolean isWidthDirty;

  private Integer height;
  private Boolean isHeightDirty;

  private Timestamp startDatetime;
  private Boolean isStartDatetimeDirty;

  private Timestamp endDatetime;
  private Boolean isEndDatetimeDirty;

  private Integer order;
  private Boolean isOrderDirty;
  
  private String useYn;
  private Boolean isUseYnDirty;

  public Boolean queryable() {
    return false;
  }
  
"""
table_columns = [
 "title            varchar(250)"
,"tag              varchar(100)"
,"chrome_link_url  varchar(1000)"
,"edge_link_url    varchar(1000)"
,"thumbnail_image  bigint unsigned"
,"content_image_id bigint unsigned"
]


java_code =""
for table_column in table_columns:
  tableName, tableType, camelString = toJavaTypeMapping(table_column)
  dirtyName = toCamelString("is_" + tableName + "_dirty")
  java_code += "  private {0} {1};\n".format(tableType, camelString)
  java_code += "  private Boolean {};\n\n".format(toCamelString("is_" + tableName +"_Dirty"))

print(java_code)
with open("update_java_variable.txt", "w", encoding="utf8") as f:
  f.write(java_code)
