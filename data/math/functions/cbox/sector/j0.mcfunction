#math:cbox/sector/j0
scoreboard players set stemp2 int 0
execute if score stemp_min int matches ..0 if score stemp_max int matches 0.. run scoreboard players set stemp2 int 1
scoreboard players set stemp_min int 2147483647
scoreboard players set stemp_max int -2147483648
execute if score stemp2 int matches 1 run scoreboard players operation stemp_min int >< stemp_max int