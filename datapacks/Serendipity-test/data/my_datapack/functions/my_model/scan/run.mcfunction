summon marker ~-3.5 ~1.5 ~1.5 {Tags:[my_model-scan]}
summon marker ~0.05 ~1 ~0.05 {Tags:[my_model-print]}

execute as @e[tag=my_model-scan,limit=1] at @s run function my_datapack:my_model/scan/first
execute as @e[tag=my_model-scan,limit=1] at @s run function my_datapack:my_model/scan/first
execute as @e[tag=my_model-scan,limit=1] at @s run function my_datapack:my_model/scan/first
execute as @e[tag=my_model-scan,limit=1] at @s run function my_datapack:my_model/scan/first
execute as @e[tag=my_model-scan,limit=1] at @s run function my_datapack:my_model/scan/first
execute as @e[tag=my_model-scan,limit=1] at @s run function my_datapack:my_model/scan/first
execute as @e[tag=my_model-scan,limit=1] at @s run function my_datapack:my_model/scan/first
execute as @e[tag=my_model-scan,limit=1] at @s run function my_datapack:my_model/scan/first
execute as @e[tag=my_model-scan,limit=1] at @s run function my_datapack:my_model/scan/first

kill @e[tag=my_model-scan]
kill @e[tag=my_model-print]
# kill @e[tag=my_model-block]

# say 1