#math:test/dfs
setblock ~ ~ ~ command_block{auto:1b,Command:"setblock ~ ~ ~ air"}
execute if score explode int matches 1.. run function math:test/dfs_call