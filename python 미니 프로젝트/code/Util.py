def toCamelString(snakeString):
  wordTokens = snakeString.split("_")
  toCamelString = wordTokens[0] + "".join(
    map(lambda word: word[0].upper() + word[1:], wordTokens[1:]))
  return toCamelString

def toSnakeString(camelString):
  wordTokens = []

  s = 0
  for i in range(len(camelString)):
    if camelString[i].isupper():
      wordTokens.append(camelString[s:i])
      s = i
  if len(camelString[s:]) > 0:
    wordTokens.append(camelString[s:])
  return "_".join(wordTokens).lower()


sqlToJavaTypeMapping = {
  "VARCHAR" : "String",
  "BIGINT" : "BigInteger",
  "MEDIUMTEXT" : "String",
  "TIMESTAMP" : "Timestamp",
  "SMALLINT" : "Integer",
}

def toJavaTypeMapping(colunmString):
  stingTokens = colunmString.split(" ")
  while '' in stingTokens:
    stingTokens.remove('')
  table_name, sql_type = stingTokens[0], stingTokens[1]
  sql_type = sql_type.upper()
  sql_type = "VARCHAR" if sql_type[:7] == "VARCHAR" else sql_type
  sql_type = "VARCHAR" if sql_type in sqlToJavaTypeMapping.keys() else sql_type

  return (table_name, sqlToJavaTypeMapping[sql_type], toCamelString(table_name))