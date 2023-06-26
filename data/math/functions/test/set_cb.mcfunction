#math:test/set_cb
scoreboard players remove cnt int 1
execute if score cnt int matches 1.. run setblock ~1 ~ ~ command_block{UpdateLastExecution:false,Command:"function math:test/set_cb",auto:1b}