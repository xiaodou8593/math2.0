#math:_rand
scoreboard players operation rand_seed int *= 1103515245 int
scoreboard players add rand_seed int 12345
scoreboard players operation random int = rand_seed int