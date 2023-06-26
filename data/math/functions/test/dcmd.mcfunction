#math:test/dcmd
function dcmd:_reset
function dcmd:_setas
data modify storage dcmd:io input.strings set value ['["scoreboard players set test int ",{"score":{"name":"test","objective":"int"}}]']
data modify storage dcmd:io input.return set value "tellraw @a 123"
function dcmd:_interpret
function dcmd:_new

#循环
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:test/dcmd