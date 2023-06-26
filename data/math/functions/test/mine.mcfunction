setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~ if block ~ ~ ~ diamond_ore run function math:test/mine
execute positioned ~-1 ~ ~ if block ~ ~ ~ diamond_ore run function math:test/mine
execute positioned ~ ~1 ~ if block ~ ~ ~ diamond_ore run function math:test/mine
execute positioned ~ ~-1 ~ if block ~ ~ ~ diamond_ore run function math:test/mine
execute positioned ~ ~ ~1 if block ~ ~ ~ diamond_ore run function math:test/mine
execute positioned ~ ~ ~-1 if block ~ ~ ~ diamond_ore run function math:test/mine