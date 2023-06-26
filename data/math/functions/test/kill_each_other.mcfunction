#math:test/kill_each_other
tag @e remove input
summon marker 0 11 0 {Tags:["input"],CustomName:'{"text":"A"}'}
summon marker 0 11 0 {Tags:["input"],CustomName:'{"text":"B"}'}
summon marker 0 11 0 {Tags:["input"],CustomName:'{"text":"C"}'}
summon marker 0 11 0 {Tags:["input"],CustomName:'{"text":"D"}'}
summon marker 0 11 0 {Tags:["input"],CustomName:'{"text":"E"}'}

execute as @e[tag=input,sort=random] run function math:test/kill_another

say @e[tag=input]