scoreboard players set temp int 1

execute unless data entity @s Inventory[{Slot:3b}].tag{4d_item:"switch"} run function math:4d/buttons/switch0

execute if data entity @s Inventory[{Slot:-106b}].tag{4d_item:"eye"} run function math:4d/buttons/switch1
execute unless data entity @s Inventory[].tag{4d_item:"eye"} run function math:4d/buttons/reset

execute if score temp int matches 0 run function math:4d/ui_items