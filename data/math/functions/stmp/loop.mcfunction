summon marker 0 11 0 {Tags:["stmp","stmp_kill"]}

scoreboard players add ssloop int 1
execute if score ssloop int < sinp int run function math:stmp/loop