#math:qrot/_unit

scoreboard players operation inp int = qrot_x int
scoreboard players operation inp int *= inp int
scoreboard players operation sstemp0 int = qrot_y int
scoreboard players operation sstemp0 int *= sstemp0 int
scoreboard players operation inp int += sstemp0 int
scoreboard players operation sstemp0 int = qrot_z int
scoreboard players operation sstemp0 int *= sstemp0 int
scoreboard players operation inp int += sstemp0 int
scoreboard players operation sstemp0 int = qrot_w int
scoreboard players operation sstemp0 int *= sstemp0 int
scoreboard players operation inp int += sstemp0 int
function math:_sqrt

scoreboard players operation qrot_x int *= 10000 int
scoreboard players operation qrot_y int *= 10000 int
scoreboard players operation qrot_z int *= 10000 int
scoreboard players operation qrot_w int *= 10000 int
scoreboard players operation qrot_x int /= res int
scoreboard players operation qrot_y int /= res int
scoreboard players operation qrot_z int /= res int
scoreboard players operation qrot_w int /= res int