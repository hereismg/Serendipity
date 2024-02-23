execute if block ~ ~ ~ #sdpt:propertiy/up[up=true] run return run data merge entity @s {data:{current_block_state:{Properties:{up:"true"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/up[up=false] run return run data merge entity @s {data:{current_block_state:{Properties:{up:"false"}}}}
