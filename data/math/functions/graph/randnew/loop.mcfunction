#math:graph/randnew/loop
data modify storage math:io temp.to set value []
#名字
function math:randstring/_pull
data modify block 0 11 0 Text1 set value '{"nbt":"result","storage":"math:io","interpret":true}'
data modify storage math:io temp.name set from block 0 11 0 Text1

#连接
function math:list/shuffle/_next
scoreboard players set min int -30
scoreboard players operation max int = tempn int
function math:_random
execute if score random int matches -30..-25 run scoreboard players set random int 0
execute if score random int matches -24..-10 run scoreboard players set random int 1
execute if score random int matches -9..-1 run scoreboard players set random int 2
scoreboard players operation sloop int = random int
execute if score sloop int matches 1.. run function math:graph/randnew/sloop

#物品
scoreboard players set min int 0
scoreboard players set max int 2
function math:_random
execute if score random int matches 0 run data modify storage math:io temp.display.item set from storage math:class items[0]
execute if score random int matches 1 run data modify storage math:io temp.display.item set from storage math:class items[1]
execute if score random int matches 2 run data modify storage math:io temp.display.item set from storage math:class items[2]

#坐标
scoreboard players set min int -25000
scoreboard players set max int 25000
function math:_random
execute store result storage math:io temp.display.uvw[0] double 0.0001 run scoreboard players get random int
function math:_random
execute store result storage math:io temp.display.uvw[1] double 0.0001 run scoreboard players get random int
function math:_random
execute store result storage math:io temp.display.uvw[2] double 0.0001 run scoreboard players get random int

data modify storage math:io sstemp.nodes append from storage math:io temp

#循环迭代
scoreboard players add loop int 1
execute if score loop int < tempn int run function math:graph/randnew/loop