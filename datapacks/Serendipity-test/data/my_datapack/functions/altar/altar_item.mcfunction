# 时间戳检测，如果两个时间戳不相等，则说明该交互实体被触发了

# 存储当前的交互时间戳
execute store result score @s interaction_timestamp_current run data get entity @s interaction.timestamp 1

# 与上次交互时间戳比较, 若当前时间戳小于等于上次交互时间戳，则直接截止函数
execute if score @s interaction_timestamp_current <= @s interaction_timestamp_last run return fail

# 赋值
execute store result score @s interaction_timestamp_last run scoreboard players get @s interaction_timestamp_current

# 如果是主手空手交互
execute at @s on target if function my_datapack:altar/free_hand_inter run return fail

# 如果展示台上有物品，则停止
execute at @s if entity @e[tag=altar_item,distance=..1] run return fail

# 否则将手中的物品放入发哦展示框架中
execute at @s run kill @e[distance=..1, tag=altar_item]
execute at @s run summon item ~ ~1 ~ {Item:{id:"stone", Count:1b}, PickupDelay:32767, Tags:["altar_item"]}
execute at @s on target run data modify entity @e[tag=altar_item,distance=..2,limit=1] Item merge from entity @s SelectedItem
execute on target run item replace entity @s weapon.mainhand with minecraft:air
