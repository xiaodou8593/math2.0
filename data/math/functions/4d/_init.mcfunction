#初始化
data modify storage math:io 4d.charts set value [{},{},{}]
data modify storage math:io 4d.charts[0] set value {id:"w-xyz",char0:'{"text":"xyz"}',char1:'{"text":"w"}',angle:0.0f}
data modify storage math:io 4d.charts[1] set value {id:"z-xy",char0:'{"text":"xy"}',char1:'{"text":"z"}',angle:0.0f}
data modify storage math:io 4d.charts[2] set value {id:"y-x",char0:'{"text":"x"}',char1:'{"text":"y"}',angle:0.0f}

data modify storage math:io 4d.points set value []

scoreboard players set 4d_running int 0

function math:4d/ui_items

scoreboard players set x int 8000
scoreboard players set y int -48000
scoreboard players set z int 8000

function math:4d/buttons/upd

data modify storage math:io 4d.titles set value []
data modify storage math:io 4d.titles append value '{"text":"懒人专用字幕_(:з」∠)_"}'
data modify storage math:io 4d.titles append value '{"text":"我们来观察四维物体的三维投影"}'
data modify storage math:io 4d.titles append value '{"text":"这里投影使用的是点光源"}'
data modify storage math:io 4d.titles append value '{"text":"摄像机是我们所在的三维空间"}'
data modify storage math:io 4d.titles append value '{"text":"也即四维空间中的一个超平面"}'
data modify storage math:io 4d.titles append value '{"text":"摄像机与点光源固定在超球的直径两端"}'
data modify storage math:io 4d.titles append value '{"text":"摄像机的法向沿着直径"}'
data modify storage math:io 4d.titles append value '{"text":"这是用23w06a版本display实体做的GUI"}'
data modify storage math:io 4d.titles append value '{"text":"调整它的箭头可以调整摄像机在超球面的相位"}'
data modify storage math:io 4d.titles append value '{"text":"先生成一个超立方体投影看看"}'
data modify storage math:io 4d.titles append value '{"text":"调整投影方向"}'
data modify storage math:io 4d.titles append value '{"text":"方向旋转90°后得到的投影是不变的"}'
data modify storage math:io 4d.titles append value '{"text":"调整绘制速率可以观察扫描过程"}'
data modify storage math:io 4d.titles append value '{"text":"然后是四维的正五胞体"}'
data modify storage math:io 4d.titles append value '{"text":"投影方向旋转90°可以得到正四面体"}'
data modify storage math:io 4d.titles append value '{"text":"最后看看超球球面的投影"}'
data modify storage math:io 4d.titles append value '{"text":"旋转投影方向"}'
data modify storage math:io 4d.titles append value '{"text":"还可以控制四维物体的平移"}'
data modify storage math:io 4d.titles append value '{"text":"例如离摄像机更近后投影会变大"}'
data modify storage math:io 4d.titles append value '{"text":"Thanks for watching！","color":"green"}'