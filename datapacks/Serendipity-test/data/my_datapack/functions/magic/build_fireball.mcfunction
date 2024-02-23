# 该函数的执行者应该是发射火球的玩家
# 该函数会在执行者的朝向上生成一个运动的小火球

function my_datapack:basic/eye_direction/get_eye_direction
execute at @s anchored eyes run summon minecraft:fireball ^ ^ ^0.5 {Tags:["fireball"], NoGravity:1b}

execute at @s store result entity @e[tag=fireball,distance=..2,limit=1] Motion[0] double 0.005 run scoreboard players get @s basic-eye_direction-motion_x 
execute at @s store result entity @e[tag=fireball,distance=..2,limit=1] Motion[1] double 0.005 run scoreboard players get @s basic-eye_direction-motion_y
execute at @s store result entity @e[tag=fireball,distance=..2,limit=1] Motion[2] double 0.005 run scoreboard players get @s basic-eye_direction-motion_z

