execute if block ~ ~ ~ #sdpt:propertiy/north[north=true] run return run data merge entity @s {data:{current_block_state:{Properties:{north:"true"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/north[north=false] run return run data merge entity @s {data:{current_block_state:{Properties:{north:"false"}}}}

execute if block ~ ~ ~ #sdpt:propertiy/north[north=none] run return run data merge entity @s {data:{current_block_state:{Properties:{north:"none"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/north[north=tall] run return run data merge entity @s {data:{current_block_state:{Properties:{north:"tall"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/north[north=low] run return run data merge entity @s {data:{current_block_state:{Properties:{north:"low"}}}}
