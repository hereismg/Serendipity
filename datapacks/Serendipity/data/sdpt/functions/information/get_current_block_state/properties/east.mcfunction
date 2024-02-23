execute if block ~ ~ ~ #sdpt:propertiy/east[east=true] run return run data merge entity @s {data:{current_block_state:{Properties:{east:"true"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/east[east=false] run return run data merge entity @s {data:{current_block_state:{Properties:{east:"false"}}}}

execute if block ~ ~ ~ #sdpt:propertiy/east[east=none] run return run data merge entity @s {data:{current_block_state:{Properties:{east:"none"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/east[east=tall] run return run data merge entity @s {data:{current_block_state:{Properties:{east:"tall"}}}}
execute if block ~ ~ ~ #sdpt:propertiy/east[east=low] run return run data merge entity @s {data:{current_block_state:{Properties:{east:"low"}}}}
