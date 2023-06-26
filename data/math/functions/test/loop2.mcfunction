#math:test/loop2
particle end_rod ^ ^ ^5.0 0.0 0.0 0.0 0.0 1 force @a
scoreboard players remove loop int 1
execute if score loop int matches 1.. facing ^0.1 ^ ^10.0 run function math:test/loop2