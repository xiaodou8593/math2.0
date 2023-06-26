#tick
#维护uuid_marker
execute store result score temp int if entity @e[tag=uuid_marker]
execute unless score temp int matches 1 run function #uuid_marker
#更新药水云
scoreboard players add upd_aec int 1
execute as @e[tag=upd_aec] store result entity @s Air short 1 run scoreboard players operation upd_aec int %= 10 int
#玩家刻
execute as @a if data entity @s SelectedItem.tag{mew:"greatsword"} run function #greatsword/main