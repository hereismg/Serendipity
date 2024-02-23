# 如果手上有物品，则返回 1
execute if data entity @s SelectedItem run return 0

summon armor_stand ~ ~ ~ {Invisible:1b}
data modify entity @e[type=armor_stand, distance=..1,limit=1] HandItems[0] merge from entity @e[tag=altar_item,distance=..2,limit=1] Item
item replace entity @s weapon.mainhand from entity @e[type=armor_stand, distance=..1,limit=1] weapon.mainhand
# give @s stone
# item replace entity @s weapon.mainhand with barrier 2
kill @e[type=armor_stand, distance=..1,limit=1]
kill @e[tag=altar_item, distance=..1, limit=1]

# 如果手上没有物品，则返回 0
return 1