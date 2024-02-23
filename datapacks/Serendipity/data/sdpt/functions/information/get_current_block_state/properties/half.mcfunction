execute if block ~ ~ ~ #sdpt:propertiy/half[half=top] run return run data merge entity @s {data:{current_block_state:{Properties:{half:"top"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/half[half=bottom] run return run data merge entity @s {data:{current_block_state:{Properties:{half:"bottom"}}}}

execute if block ~ ~ ~ #sdpt:propertiy/half[half=upper] run return run data merge entity @s {data:{current_block_state:{Properties:{half:"upper"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/half[half=lower] run return run data merge entity @s {data:{current_block_state:{Properties:{half:"lower"}}}}

execute if block ~ ~ ~ #sdpt:propertiy/half[half=head] run return run data merge entity @s {data:{current_block_state:{Properties:{half:"head"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/half[half=foot] run return run data merge entity @s {data:{current_block_state:{Properties:{half:"foot"}}}}
