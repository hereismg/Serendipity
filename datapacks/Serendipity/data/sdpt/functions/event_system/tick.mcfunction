execute as @e[tag=sdpt.event_system.used_carrot_on_a_stick,scores={sdpt.event_system.used_carrot_on_a_stick=1..}] at @s run function #minecraft:events/used_carrot_on_a_stick
execute as @e[scores={sdpt.event_system.used_carrot_on_a_stick=1..}] run scoreboard players set @s sdpt.event_system.used_carrot_on_a_stick 0

execute as @e[tag=sdpt.event_system.used_snowball,scores={sdpt.event_system.used_snowball=1..}] at @s run function #minecraft:events/used_snowball
execute as @e[scores={sdpt.event_system.used_snowball=1..}] run scoreboard players set @s sdpt.event_system.used_snowball 0

execute as @e[tag=sdpt.event_system.is_attack] at @s if function sdpt:information/is_attack/run run function #minecraft:events/is_attack
execute as @e[tag=sdpt.event_system.is_interaction] at @s if function sdpt:information/is_interaction/run run function #minecraft:events/is_interaction
