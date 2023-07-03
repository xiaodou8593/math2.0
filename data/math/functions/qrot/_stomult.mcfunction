#math:qrot/_stomult
#(xi,yj,zk,w)×(_xi,_yj,_zk,_w) =
# +x*_wi +y*_zi -z*_yi +w*_xi
# -x*_zj +y*_wj +z*_xj +w*_yj
# +x*_yk -y*_xk +z*_wk +w*_zk
# +w*_w -x*_x -y*_y -z*_z

scoreboard players operation sstempx int = qrot_x int
scoreboard players operation sstempy int = qrot_y int
scoreboard players operation sstempz int = qrot_z int
scoreboard players operation sstempw int = qrot_w int


scoreboard players operation qrot_x int *= @s qrot_w int
scoreboard players operation sstemp0 int = sstempy int
scoreboard players operation sstemp0 int *= @s qtot_z
scoreboard players operation qrot_x int += sstemp0 int
scoreboard players operation sstemp0 int = sstempz int
scoreboard players operation sstemp0 int *= @s qrot_y
scoreboard players operation qrot_x int -= sstemp0 int
scoreboard players operation sstemp0 int = sstempw int
scoreboard players operation sstemp0 int *= @s qrot_x
execute store result storage math:io xyzw[0] float 0.00000001 run scoreboard players operation qrot_x int += sstemp0 int
scoreboard players operation qrot_x int /= 10000 int

scoreboard players operation qrot_y int *= @s qrot_w
scoreboard players operation sstemp0 int = sstempx int
scoreboard players operation sstemp0 int *= @s qrot_z
scoreboard players operation qrot_y int -= sstemp0 int
scoreboard players operation sstemp0 int = sstempz int
scoreboard players operation sstemp0 int *= @s qrot_x
scoreboard players operation qrot_y int += sstemp0 int
scoreboard players operation sstemp0 int = sstempw int
scoreboard players operation sstemp0 int *= @s qrot_y
execute store result storage math:io xyzw[1] float 0.00000001 run scoreboard players operation qrot_y int += sstemp0 int
scoreboard players operation qrot_y int /= 10000 int

scoreboard players operation qrot_z int *= @s qrot_w
scoreboard players operation sstemp0 int = sstempx int
scoreboard players operation sstemp0 int *= @s qrot_y
scoreboard players operation qrot_z int += sstemp0 int
scoreboard players operation sstemp0 int = sstempy int
scoreboard players operation sstemp0 int *= @s qrot_x
scoreboard players operation qrot_z int -= sstemp0 int
scoreboard players operation sstemp0 int = sstempw int
scoreboard players operation sstemp0 int *= @s qrot_z
execute store result storage math:io xyzw[2] float 0.00000001 run scoreboard players operation qrot_z int += sstemp0 int
scoreboard players operation qrot_z int /= 10000 int

scoreboard players operation qrot_w int *= @s qrot_w
scoreboard players operation sstemp0 int = sstempx int
scoreboard players operation sstemp0 int *= @s qrot_x
scoreboard players operation qrot_w int -= sstemp0 int
scoreboard players operation sstemp0 int = sstempy int
scoreboard players operation sstemp0 int *= @s qrot_y
scoreboard players operation qrot_w int -= sstemp0 int
scoreboard players operation sstemp0 int = sstempz int
scoreboard players operation sstemp0 int *= @s qrot_z
execute store result storage math:io xyzw[3] float 0.00000001 run scoreboard players operation qrot_w int -= sstemp0 int
scoreboard players operation qrot_w int /= 10000 int