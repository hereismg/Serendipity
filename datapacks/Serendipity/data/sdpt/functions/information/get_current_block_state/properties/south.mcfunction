execute if block ~ ~ ~ #sdpt:propertiy/south[south=true] run return run data merge entity @s {data:{current_block_state:{Properties:{south:"true"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/south[south=false] run return run data merge entity @s {data:{current_block_state:{Properties:{south:"false"}}}}

execute if block ~ ~ ~ #sdpt:propertiy/south[south=none] run return run data merge entity @s {data:{current_block_state:{Properties:{south:"none"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/south[south=tall] run return run data merge entity @s {data:{current_block_state:{Properties:{south:"tall"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/south[south=low] run return run data merge entity @s {data:{current_block_state:{Properties:{south:"low"}}}}
