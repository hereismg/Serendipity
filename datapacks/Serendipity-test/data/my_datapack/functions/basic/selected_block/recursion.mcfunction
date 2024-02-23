# ==========================
# @brief        将自己沿着某个方向传送到有方块的位置
# @executor     interaction[tag=basic-selected_block-judge]
# ==========================

tp ^ ^ ^0.1
execute if block ~ ~ ~ air as @s at @s run function my_datapack:basic/selected_block/recursion