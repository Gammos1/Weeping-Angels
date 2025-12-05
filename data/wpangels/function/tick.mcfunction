# execute as @a run function wpangels:entites/get_position
# execute as @e[type=silverfish] run function wpangels:entites/get_position
# execute as @e[type=silverfish] run data merge entity @s {NoAI:0b}
# execute as @a[scores={stat.yaw=0..90}] at @s as @e[type=silverfish,distance=..20] if score @s stat.posX <= @p stat.posX if score @s stat.posZ >= @p stat.posZ run data merge entity @s {NoAI:1b}
# execute as @a[scores={stat.yaw=90..180}] at @s as @e[type=silverfish,distance=..20] if score @s stat.posX <= @p stat.posX if score @s stat.posZ <= @p stat.posZ run data merge entity @s {NoAI:1b}
# execute as @a[scores={stat.yaw=-180..-90}] at @s as @e[type=silverfish,distance=..20] if score @s stat.posX >= @p stat.posX if score @s stat.posZ <= @p stat.posZ run data merge entity @s {NoAI:1b}
# execute as @a[scores={stat.yaw=-90..0}] at @s as @e[type=silverfish,distance=..20] if score @s stat.posX >= @p stat.posX if score @s stat.posZ >= @p stat.posZ run data merge entity @s {NoAI:1b}

# execute as @a at @s anchored eyes positioned ^ ^ ^5 run particle flame ~ ~ ~ 0 0 0 0 1

execute as @e[type=silverfish,tag=wpangel] run data merge entity @s {Glowing:0b}
execute unless entity @e[tag=checked_seen] run function wpangels:entites/weeping_angel/check_seen