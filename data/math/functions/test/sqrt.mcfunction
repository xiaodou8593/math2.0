#math:test/sqrt
scoreboard players set sqrt int 2661
function math:sqrt/_3self
#tellraw @a {"score":{"name":"sqrt","objective":"int"}}

scoreboard players set inp int 2661
function math:sqrt/_3sqrt
#tellraw @a {"score":{"name":"res","objective":"int"}}