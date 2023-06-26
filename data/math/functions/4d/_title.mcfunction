#math:4d/_title
title @s title {"text":""}
title @s subtitle {"nbt":"4d.titles[0]","storage":"math:io","interpret":true}
#列表迭代
data modify storage math:io 4d.titles append from storage math:io 4d.titles[0]
data remove storage math:io 4d.titles[0]