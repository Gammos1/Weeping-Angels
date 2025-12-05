execute as @e[type=silverfish,tag=wpangel] at @s if entity @a[distance=..100,gamemode=!spectator] run tag @s add check_s_these
tag @e[tag=check_s_these,tag=check_seen] remove check_seen
tag @e[tag=check_s_these,limit=1,sort=random,tag=!checked_seen] add check_seen

execute as @e[tag=check_s_these,tag=check_seen] run function wpangels:entites/get_position
execute as @e[tag=check_s_these,tag=check_seen] run function wpangels:entites/get_rotation
execute as @e[tag=check_s_these,tag=check_seen] at @s run function wpangels:entites/weeping_angel/check_players

tag @e[tag=check_s_these,tag=check_seen] add checked_seen
tag @e[tag=check_s_these,tag=check_seen] remove check_seen
execute if entity @e[tag=check_s_these,tag=!checked_seen] run function wpangels:entites/weeping_angel/check_seen
execute unless entity @e[tag=check_s_these,tag=!checked_seen] run tag @e[tag=check_s_these,tag=checked_seen] remove checked_seen