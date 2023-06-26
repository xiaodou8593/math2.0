#math:cbox/sector/j1
scoreboard players set stemp2 int 0
execute if score stemp0 int matches ..0 if score stemp1 int matches 0.. run scoreboard players set stemp2 int 1
scoreboard players set stemp0 int 2147483647
scoreboard players set stemp1 int -2147483648
execute if score stemp2 int matches 1 run scoreboard players operation stemp0 int >< stemp1 int