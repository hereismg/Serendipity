execute as @a[nbt={SelectedItem:{tag:{Tags:["model_area_block"]}}}] at @s if score @s basic-behavior_even-is_used-carrot_on_a_stick matches 1.. run function my_datapack:my_model/buid_model_area
scoreboard players set @a basic-behavior_even-is_used-carrot_on_a_stick 0
# say 1

execute as @e[tag=model_area_block] at @s unless block ~ ~ ~ barrier run kill @s

execute as @e[tag=model_area_block] at @s run function my_datapack:my_model/show_area
