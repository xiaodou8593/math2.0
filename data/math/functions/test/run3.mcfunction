#math:test/run3
data modify storage math:io list set value []
function math:list/_shuffle
tellraw @a {"nbt":"list","storage":"math:io"}