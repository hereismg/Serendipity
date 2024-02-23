# ==================================
# @brief        获得@position位置的方块状态，并讲其存储在@executor中的current_block_state标签中
# @executor     minecraft:marker
# @position     @executor
# ==================================


function sdpt:information/get_current_block_state/properties/facing
function sdpt:information/get_current_block_state/properties/half
function sdpt:information/get_current_block_state/properties/shape
function sdpt:information/get_current_block_state/properties/up
function sdpt:information/get_current_block_state/properties/east
function sdpt:information/get_current_block_state/properties/south
function sdpt:information/get_current_block_state/properties/west
function sdpt:information/get_current_block_state/properties/north
function sdpt:information/get_current_block_state/properties/axis


execute if block ~ ~ ~ minecraft:air run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:air"}}}
execute if block ~ ~ ~ minecraft:stone run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:stone"}}}
execute if block ~ ~ ~ minecraft:cobblestone run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:cobblestone"}}}
execute if block ~ ~ ~ minecraft:cobblestone_wall run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:cobblestone_wall"}}}
execute if block ~ ~ ~ minecraft:glass run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:glass"}}}
execute if block ~ ~ ~ minecraft:grass_block run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:grass_block"}}}

execute if block ~ ~ ~ minecraft:glass_pane run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:glass_pane"}}}
execute if block ~ ~ ~ minecraft:iron_bars run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:iron_bars"}}}
execute if block ~ ~ ~ minecraft:torch run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:torch"}}}
execute if block ~ ~ ~ minecraft:wall_torch run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:wall_torch"}}}


execute if block ~ ~ ~ minecraft:oak_log run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:oak_log"}}}
execute if block ~ ~ ~ minecraft:oak_planks run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:oak_planks"}}}
execute if block ~ ~ ~ minecraft:oak_fence run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:oak_fence"}}}


execute if block ~ ~ ~ minecraft:oak_door run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:oak_door"}}}
execute if block ~ ~ ~ minecraft:oak_slab[type=bottom] run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:oak_slab", Properties:{type:"bottom"}}}}
execute if block ~ ~ ~ minecraft:oak_slab[type=top] run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:oak_slab", Properties:{type:"top"}}}}
execute if block ~ ~ ~ minecraft:oak_slab[type=double] run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:oak_slab", Properties:{type:"double"}}}}
execute if block ~ ~ ~ minecraft:oak_stairs run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:oak_stairs"}}}


execute if block ~ ~ ~ minecraft:birch_button run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:birch_button"}}}

execute if block ~ ~ ~ minecraft:rail run return run data merge entity @s {data:{current_block_state:{Name:"minecraft:rail"}}}
