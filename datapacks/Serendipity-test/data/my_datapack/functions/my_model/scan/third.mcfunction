function sdpt:information/get_current_block_state/run
summon minecraft:block_display ~-0.5 ~-0.5 ~-0.5 {Tags:[my_model-block, my_model-block-init]}

data modify entity @e[limit=1,tag=my_model-block-init] block_state set from entity @e[tag=my_model-scan,limit=1] data.current_block_state
data merge entity @e[tag=my_model-block-init,limit=1] {transformation:{scale:[0.1f,0.1f,0.1f]}}

tp @e[tag=my_model-block-init,limit=1] @e[tag=my_model-print,limit=1]

tag @e[tag=my_model-block-init] remove my_model-block-init

execute as @e[tag=my_model-scan] at @s run tp @s ~1 ~ ~
execute as @e[tag=my_model-print] at @s run tp @s ~0.1 ~ ~
