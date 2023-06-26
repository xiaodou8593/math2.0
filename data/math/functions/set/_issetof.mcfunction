#math:set/_issetof
#集合转移到临时数据
data modify storage math:io stemp set from storage math:io set
#获得长度
execute store result score stemp1 int if data storage math:io stemp[]
execute store result score stemp0 int run data modify storage math:io stemp[] set from storage math:io input
#比较长度返回结果
execute store result score res int unless score stemp0 int = stemp1 int