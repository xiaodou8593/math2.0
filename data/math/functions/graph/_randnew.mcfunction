#math:graph/_randnew
#需要传入世界实体为执行者
data modify storage math:io sstemp set value {nodes:[],pos:[0.0d,0.0d,0.0d],rot:[0.0f,0.0f],uvw_theta:0.0f}
data modify storage math:io temp set value {name:"",to:[],display:{hide_name:0b,item:{},uvw:[0.0d,0.0d,0.0d]}}
tp @s ~ ~ ~
data modify storage math:io sstemp.pos set from entity @s Pos

#随机生成节点数量
scoreboard players set min int 8
scoreboard players set max int 18
function math:_random
scoreboard players operation tempn int = random int

#洗牌准备
data modify storage math:io list set value []
scoreboard players set loop int 0
execute if score loop int < tempn int run function math:graph/randnew/pre_loop
function math:list/shuffle/_start

#进入循环
setblock 0 11 0 oak_sign
scoreboard players set inp int 3
scoreboard players set loop int 0
execute if score loop int < tempn int run function math:graph/randnew/loop

#洗牌结束
function math:list/shuffle/_end

data modify storage math:io result set from storage math:io sstemp