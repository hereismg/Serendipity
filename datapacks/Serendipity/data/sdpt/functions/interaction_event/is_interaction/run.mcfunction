# ==========================
# @brief        右键交互
# @executor     minecraft:interaction
# @return       是否发生了交互
# ==========================

# 检测 executor 是否拥有对应的计分板，若没有，则初始化为当前时间
execute unless score @s sdpt-interaction_event-is_interaction-last matches 0.. store result score @s sdpt-interaction_event-is_interaction-last run data get entity @s interaction.timestamp 1
execute unless score @s sdpt-interaction_event-is_interaction-current matches 0.. store result score @s sdpt-interaction_event-is_interaction-current run data get entity @s interaction.timestamp 1

# 接下来是判断逻辑：
# 1. 先存储当前的时间戳
# 2. 再将当前的时间戳和之前的时间戳对比，若不相等，则说明发生了交互
# 3. 若发生了交互，则要更新时间戳
execute store result score @s sdpt-interaction_event-is_interaction-current run data get entity @s interaction.timestamp 1
execute if score @s sdpt-interaction_event-is_interaction-current = @s sdpt-interaction_event-is_interaction-last run return fail
execute store result score @s sdpt-interaction_event-is_interaction-last run scoreboard players get @s sdpt-interaction_event-is_interaction-current
return 1
