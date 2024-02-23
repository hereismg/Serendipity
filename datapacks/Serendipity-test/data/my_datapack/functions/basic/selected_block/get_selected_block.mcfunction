# ==========================
# @brief        获取执行者所指的方块坐标
# @executor     exe
# ==========================

summon interaction ~ ~1.6 ~ {Tags:["basic-selected_block-judge"], width:0.01f, height:0.01f}
tag @s add basic-selected_block-player

# 调整探测实体的朝向
execute store result entity @e[limit=1,tag=basic-selected_block-judge,distance=..2] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute store result entity @e[limit=1,tag=basic-selected_block-judge,distance=..2] Rotation[1] float 0.0001 run data get entity @s Rotation[1] 10000
execute as @e[limit=1,tag=basic-selected_block-judge,distance=..2] at @s run function my_datapack:basic/selected_block/recursion

# execute at @e[tag=basic-selected_block-judge] align xyz run summon minecraft:block_display ~ ~ ~ {Glowing:1b, block_state:{Name:"minecraft:stone"}}

execute store result score @s basic-selected_block-x run data get entity @e[limit=1,tag=basic-selected_block-judge] Pos[0] 1000
execute store result score @s basic-selected_block-y run data get entity @e[limit=1,tag=basic-selected_block-judge] Pos[1] 1000
execute store result score @s basic-selected_block-z run data get entity @e[limit=1,tag=basic-selected_block-judge] Pos[2] 1000

say 3

tag @s remove basic-selected_block-player
kill @e[tag=basic-selected_block-judge]