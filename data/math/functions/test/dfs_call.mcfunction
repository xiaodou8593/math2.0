#math:test/dfs_call
scoreboard players remove explode int 1

execute positioned ~1 ~ ~ unless block ~ ~ ~ glass unless block ~ ~ ~ command_block run function math:test/dfs
execute positioned ~ ~1 ~ unless block ~ ~ ~ glass unless block ~ ~ ~ command_block run function math:test/dfs
execute positioned ~ ~ ~1 unless block ~ ~ ~ glass unless block ~ ~ ~ command_block run function math:test/dfs
execute positioned ~-1 ~ ~ unless block ~ ~ ~ glass unless block ~ ~ ~ command_block run function math:test/dfs
execute positioned ~ ~-1 ~ unless block ~ ~ ~ glass unless block ~ ~ ~ command_block run function math:test/dfs
execute positioned ~ ~ ~-1 unless block ~ ~ ~ glass unless block ~ ~ ~ command_block run function math:test/dfs

scoreboard players add explode int 1