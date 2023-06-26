#hanoi/next
data modify storage math:io temp set from storage math:io rec[0].chars[2]
data modify storage math:io rec[0].chars[2] set from storage math:io rec[0].chars[1]
data modify storage math:io rec[0].chars[1] set from storage math:io temp
execute store result storage math:io rec[0].n int 1 run scoreboard players remove n int 1
function math:test/hanoi/rec
tellraw @a [{"nbt":"rec[1].chars[0]","storage":"math:io"},{"text":"->"},{"nbt":"rec[1].chars[2]","storage":"math:io"}]
data modify storage math:io rec[0].chars set from storage math:io rec[1].chars
data modify storage math:io temp set from storage math:io rec[0].chars[1]
data modify storage math:io rec[0].chars[1] set from storage math:io rec[0].chars[0]
data modify storage math:io rec[0].chars[0] set from storage math:io temp
function math:test/hanoi/rec