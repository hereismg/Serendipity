# ================================
# @brief        生成执行者的视角，最后生成的方向向量存储在计分板中，并且放大 1000 倍
# @position     interaction
# @executor     interaction
# @facing       interaction
# ================================
execute at @s run summon minecraft:interaction ^ ^ ^-1 {width:0.1f, height:0.1f, Tags:["basic-eye_direction-dir"]}

execute as @e[limit=1,distance=..2,tag=basic-eye_direction-dir] at @s store result score @s basic-eye_direction-motion_x run data get entity @s Pos[0] 1000
execute as @e[limit=1,distance=..2,tag=basic-eye_direction-dir] at @s store result score @s basic-eye_direction-motion_y run data get entity @s Pos[1] 1000
execute as @e[limit=1,distance=..2,tag=basic-eye_direction-dir] at @s store result score @s basic-eye_direction-motion_z run data get entity @s Pos[2] 1000
execute store result score @s basic-eye_direction-motion_x run data get entity @s Pos[0] 1000
execute store result score @s basic-eye_direction-motion_y run data get entity @s Pos[1] 1000
execute store result score @s basic-eye_direction-motion_z run data get entity @s Pos[2] 1000

scoreboard players operation @s basic-eye_direction-motion_x -= @e[limit=1,distance=..2,tag=basic-eye_direction-dir] basic-eye_direction-motion_x 
scoreboard players operation @s basic-eye_direction-motion_y -= @e[limit=1,distance=..2,tag=basic-eye_direction-dir] basic-eye_direction-motion_y 
scoreboard players operation @s basic-eye_direction-motion_z -= @e[limit=1,distance=..2,tag=basic-eye_direction-dir] basic-eye_direction-motion_z

kill @e[limit=1,distance=..2,tag=basic-eye_direction-dir]
