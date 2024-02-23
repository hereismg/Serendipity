function sdpt:information/get_selected_block/run
summon block_display ~ ~ ~ {Tags:["model_area_block", "model_area_block_init"], block_state:{Name:"minecraft:scaffolding"}}
tag @s add model_area_block_executor

execute as @e[tag=model_area_block_init] store result entity @s Pos[0] double 0.001 run scoreboard players get @e[tag=model_area_block_executor,limit=1] sdpt-information-selected_block-x
execute as @e[tag=model_area_block_init] store result entity @s Pos[1] double 0.001 run scoreboard players get @e[tag=model_area_block_executor,limit=1] sdpt-information-selected_block-y
execute as @e[tag=model_area_block_init] store result entity @s Pos[2] double 0.001 run scoreboard players get @e[tag=model_area_block_executor,limit=1] sdpt-information-selected_block-z

execute as @e[tag=model_area_block_init] at @s align xyz run tp @s ~ ~ ~

execute as @e[tag=model_area_block_init] at @s run setblock ~ ~ ~ barrier replace

tag @e[tag=model_area_block_init] remove model_area_block_init
tag @p[tag=model_area_block_executor] remove model_area_block_executor
