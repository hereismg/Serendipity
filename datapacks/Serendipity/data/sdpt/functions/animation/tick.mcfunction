scoreboard players add @e[tag=sdpt.animation.click] sdpt.animation.timer 1

execute as @e[tag=sdpt.animation.click,scores={sdpt.animation.timer=1}] run playsound minecraft:block.amethyst_block.break block @a ~ ~ ~ 10 0.1
execute as @e[tag=sdpt.animation.click,scores={sdpt.animation.timer=1}] run data merge entity @s {transformation:{scale:[0.8f,0.8f,0.8f],translation:[-0.4f,-0.4f,-0.4f]}, start_interpolation:0, interpolation_duration:2}
execute as @e[tag=sdpt.animation.click,scores={sdpt.animation.timer=2}] run data merge entity @s {transformation:{scale:[1f,1f,1f],translation:[-0.5f,-0.5f,-0.5f]}, start_interpolation:0, interpolation_duration:1}
execute as @e[tag=sdpt.animation.click,scores={sdpt.animation.timer=5..}] run function sdpt:animation/back
