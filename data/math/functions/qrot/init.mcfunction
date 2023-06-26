#math:qrot/_init
#初始化函数，建立实体储存记分板
scoreboard objectives add qrot_v0 dummy
scoreboard objectives add qrot_v1 dummy
scoreboard objectives add qrot_v2 dummy
scoreboard objectives add qrot_beta dummy
scoreboard objectives add qrot_cbeta dummy
scoreboard objectives add qrot_sbeta dummy

scoreboard objectives add qrot_i0 dummy
scoreboard objectives add qrot_i1 dummy
scoreboard objectives add qrot_i2 dummy
scoreboard objectives add qrot_i3 dummy
scoreboard objectives add qrot_j0 dummy
scoreboard objectives add qrot_j1 dummy
scoreboard objectives add qrot_j2 dummy
scoreboard objectives add qrot_j3 dummy
scoreboard objectives add qrot_alpha dummy

scoreboard objectives add qrot_x dummy
scoreboard objectives add qrot_y dummy
scoreboard objectives add qrot_z dummy
scoreboard objectives add qrot_w dummy

scoreboard objectives add qrot_rel0 dummy
scoreboard objectives add qrot_rel1 dummy
scoreboard objectives add qrot_rel2 dummy
scoreboard objectives add qrot_theta dummy

data modify storage math:io xyzw set value [0.0f,0.0f,0.0f,0.0f]