tag @a[distance=..100] add check_p_these
tag @a[tag=check_p_these] remove check_p
tag @a[tag=check_p_these,limit=1,sort=random] add check_p

execute as @a[tag=check_p_these,tag=check_p] run function wpangels:entites/get_position
execute as @a[tag=check_p_these,tag=check_p] run function wpangels:entites/get_rotation

execute if score @s stat.posX < @a[tag=check_p_these,tag=check_p,limit=1] stat.posX if score @s stat.posZ < @a[tag=check_p_these,tag=check_p,limit=1] stat.posZ if score @a[tag=check_p_these,tag=check_p,limit=1] stat.yaw matches 0..180 run data merge entity @s {Glowing:1b}

tag @a[tag=check_p_these,tag=check_p] add checked_p
tag @a[tag=check_p_these,tag=check_p] remove check_p
execute if entity @a[tag=check_p_these,tag=!checked_p] run function wpangels:entites/weeping_angel/check_players
execute unless entity @a[tag=check_p_these,tag=!checked_p] run tag @a[tag=check_p_these,tag=checked_p] remove checked_p