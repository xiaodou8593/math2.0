clear @s #all{ui:1b}

execute unless score 4d_running int matches 1 run item replace entity @s container.3 with arrow{ui:1b,4d_item:"switch",display:{Name:'{"text":"§b打开"}'}}
execute if score 4d_running int matches 1 run item replace entity @s container.3 with barrier{ui:1b,4d_item:"switch",display:{Name:'{"text":"§c关闭"}'}}
item replace entity @s container.4 with ender_eye{ui:1b,4d_item:"eye",display:{Name:'{"text":"§b四维之眼"}'}}