#math:cbox/sector/arc
scoreboard players operation stempd int = stempx2 int
scoreboard players operation stempd int *= stempf0 int
scoreboard players operation stemp0 int = stempz2 int
scoreboard players operation stemp0 int *= stempf2 int
scoreboard players operation stempd int += stemp0 int
scoreboard players operation stempd int *= -1 int

scoreboard players operation sqrt int = stempd int
scoreboard players operation stemp0 int = sqrt int
scoreboard players operation sqrt int /= 10000 int
scoreboard players operation stemp0 int %= 10000 int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int *= sqrt int
scoreboard players operation stemp0 int *= 2 int
scoreboard players operation sqrt int *= sqrt int
scoreboard players operation sqrt int *= 10000 int
scoreboard players operation sqrt int += stemp0 int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation sqrt int += stemp1 int

scoreboard players operation sqrt int += stemp_r2 int

scoreboard players operation stempr int = stempx2 int
scoreboard players operation stemp0 int = stempr int
scoreboard players operation stempr int /= 10000 int
scoreboard players operation stemp0 int %= 10000 int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int *= stempr int
scoreboard players operation stemp0 int *= 2 int
scoreboard players operation stempr int *= stempr int
scoreboard players operation stempr int *= 10000 int
scoreboard players operation stempr int += stemp0 int
scoreboard players operation sqrt int -= stempr int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation sqrt int -= stemp1 int

scoreboard players operation stempr int = stempz2 int
scoreboard players operation stemp0 int = stempr int
scoreboard players operation stempr int /= 10000 int
scoreboard players operation stemp0 int %= 10000 int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int *= stempr int
scoreboard players operation stemp0 int *= 2 int
scoreboard players operation stempr int *= stempr int
scoreboard players operation stempr int *= 10000 int
scoreboard players operation stempr int += stemp0 int
scoreboard players operation sqrt int -= stempr int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation sqrt int -= stemp1 int

execute if score sqrt int matches 0.. run function math:cbox/sector/arc_next