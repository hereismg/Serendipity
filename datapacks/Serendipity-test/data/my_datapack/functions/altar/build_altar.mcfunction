# 该函数需要由一个实体执行

# 下面开始检测多方块结构是否完善
execute unless block ~ ~ ~ minecraft:enchanting_table run return fail
execute unless block ~ ~ ~2 minecraft:end_portal_frame run return fail
execute unless block ~ ~ ~-2 minecraft:end_portal_frame run return fail
execute unless block ~2 ~ ~ minecraft:end_portal_frame run return fail
execute unless block ~-2 ~ ~ minecraft:end_portal_frame run return fail

execute align xyz run summon interaction ~0.5 ~ ~-1.5 {Tags:["altar_item_inter"], response: true}
execute align xyz run summon interaction ~0.5 ~ ~2.5 {Tags:["altar_item_inter"], response: true}
execute align xyz run summon interaction ~2.5 ~ ~0.5 {Tags:["altar_item_inter"], response: true} 
execute align xyz run summon interaction ~-1.5 ~ ~0.5 {Tags:["altar_item_inter"], response: true}
execute align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["altar_center_inter"], response: true}

execute as @e[tag=altar_item_inter] store result score @s interaction_timestamp_current run data get entity @s interaction.timestamp 1
execute as @e[tag=altar_item_inter] store result score @s interaction_timestamp_last run data get entity @s interaction.timestamp 1
