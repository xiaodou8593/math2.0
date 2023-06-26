#math:test/aecbox
tellraw @a "---"
tellraw @a {"nbt":"Radius","entity":"@s"}
execute rotated 0.0 -90.0 run function math:cbox/vanilla/_detect