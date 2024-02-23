execute if block ~ ~ ~ #sdpt:propertiy/west[west=true] run return run data merge entity @s {data:{current_block_state:{Properties:{west:"true"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/west[west=false] run return run data merge entity @s {data:{current_block_state:{Properties:{west:"false"}}}}

execute if block ~ ~ ~ #sdpt:propertiy/west[west=none] run return run data merge entity @s {data:{current_block_state:{Properties:{west:"none"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/west[west=tall] run return run data merge entity @s {data:{current_block_state:{Properties:{west:"tall"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/west[west=low] run return run data merge entity @s {data:{current_block_state:{Properties:{west:"low"}}}}
