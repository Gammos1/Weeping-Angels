execute as @a store result score @s stat.yaw run data get entity @s Rotation[0]
execute as @a store result score @s stat.pitch run data get entity @s Rotation[1]

execute as @a run function wpangels:entites/get_position
execute as @e[type=silverfish] run function wpangels:entites/get_position
execute as @e[type=silverfish] run data merge entity @s {NoAI:0b}
execute as @a[scores={stat.yaw=0..90}] at @s as @e[type=silverfish,distance=..20] if score @s stat.posX <= @p stat.posX if score @s stat.posZ >= @p stat.posZ run data merge entity @s {NoAI:1b}
execute as @a[scores={stat.yaw=90..180}] at @s as @e[type=silverfish,distance=..20] if score @s stat.posX <= @p stat.posX if score @s stat.posZ <= @p stat.posZ run data merge entity @s {NoAI:1b}
execute as @a[scores={stat.yaw=-180..-90}] at @s as @e[type=silverfish,distance=..20] if score @s stat.posX >= @p stat.posX if score @s stat.posZ <= @p stat.posZ run data merge entity @s {NoAI:1b}
execute as @a[scores={stat.yaw=-90..0}] at @s as @e[type=silverfish,distance=..20] if score @s stat.posX >= @p stat.posX if score @s stat.posZ >= @p stat.posZ run data merge entity @s {NoAI:1b}