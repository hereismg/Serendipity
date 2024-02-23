# 如果玩家使用了胡萝卜钓竿，则运行相关标签的函数

execute as @a[nbt={SelectedItem:{tag:{Tags:["get_selected_block"]}}}] at @s if score @s right_click matches 1.. run function my_datapack:basic/selected_block/get_selected_block
