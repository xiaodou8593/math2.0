#hanoi/rec
#注意这里是prepend from而不是prepend value，它不仅实现了栈空间，还实现了类似于execute执行方式的继承性。
data modify storage math:io rec prepend from storage math:io rec[0]
execute store result score n int run data get storage math:io rec[1].n
execute if score n int matches 1 run tellraw @a [{"nbt":"rec[1].chars[0]","storage":"math:io"},{"text":"->"},{"nbt":"rec[1].chars[2]","storage":"math:io"}]
execute if score n int matches 2.. run function math:test/hanoi/next
data remove storage math:io rec[0]