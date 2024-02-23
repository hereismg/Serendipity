execute as @a[nbt={SelectedItem:{tag:{Tags:["magic_fireball"]}}}] at @s if score @s right_click matches 1.. run function my_datapack:magic/build_fireball
execute as @a[nbt={SelectedItem:{tag:{Tags:["get_selected_block"]}}}] at @s if score @s right_click matches 1.. run function my_datapack:basic/selected_block/get_selected_block

# 添加粒子效果
execute at @e[tag=fireball] run particle minecraft:firework ~ ~ ~ 0 0 0 0.05 5