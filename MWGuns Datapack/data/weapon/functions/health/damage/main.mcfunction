execute store result score v4 V run data get entity @s Health
execute store result score v3 V run data get entity @s AbsorptionAmount
scoreboard players operation v3 V -= v4 V

execute store result score v0 V run attribute @s minecraft:generic.max_health get
execute if score v0 V matches 1024 run tellraw @a {"text":"MGS [Warn]: max_health >= 1024 are not supported!","color":"yellow"}
scoreboard players operation v2 V = v0 V
scoreboard players operation v0 V += v3 V
scoreboard players operation v0 V += @s damage
scoreboard players remove v2 V 2
scoreboard players set v3 V 0
execute if score v0 V <= v2 V run scoreboard players set v3 V 1
execute if score v3 V matches 1 run scoreboard players remove v0 V 1
execute if score v0 V matches 1024.. run scoreboard players set v0 V 1023
scoreboard players operation v1 V = v0 V
scoreboard players operation v1 V %= 2 C
execute if score v1 V matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-0 d0 -1 add
scoreboard players operation v0 V /= 2 C

scoreboard players operation v1 V = v0 V
scoreboard players operation v1 V %= 2 C
execute if score v1 V matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-1 d1 -2 add
scoreboard players operation v0 V /= 2 C

scoreboard players operation v1 V = v0 V
scoreboard players operation v1 V %= 2 C
execute if score v1 V matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-2 d2 -4 add
scoreboard players operation v0 V /= 2 C

scoreboard players operation v1 V = v0 V
scoreboard players operation v1 V %= 2 C
execute if score v1 V matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-3 d3 -8 add
scoreboard players operation v0 V /= 2 C

scoreboard players operation v1 V = v0 V
scoreboard players operation v1 V %= 2 C
execute if score v1 V matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-4 d4 -16 add
scoreboard players operation v0 V /= 2 C

scoreboard players operation v1 V = v0 V
scoreboard players operation v1 V %= 2 C
execute if score v1 V matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-5 d5 -32 add
scoreboard players operation v0 V /= 2 C

scoreboard players operation v1 V = v0 V
scoreboard players operation v1 V %= 2 C
execute if score v1 V matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-6 d6 -64 add
scoreboard players operation v0 V /= 2 C

scoreboard players operation v1 V = v0 V
scoreboard players operation v1 V %= 2 C
execute if score v1 V matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-7 d7 -128 add
scoreboard players operation v0 V /= 2 C

scoreboard players operation v1 V = v0 V
scoreboard players operation v1 V %= 2 C
execute if score v1 V matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-8 d8 -256 add
scoreboard players operation v0 V /= 2 C

scoreboard players operation v1 V = v0 V
scoreboard players operation v1 V %= 2 C
execute if score v1 V matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-9 d9 -512 add

execute at @s run playsound minecraft:entity.player.hurt player @a[distance=..16]
effect give @s minecraft:health_boost 1 255 true
effect clear @s minecraft:health_boost
execute if score v3 V matches 1 run attribute @s minecraft:generic.max_health modifier add 420-69-42-1337-10 d0 -1 add
execute if score v3 V matches 1 run effect give @s minecraft:instant_health 1 0 true
execute if score v3 V matches 1 run tag @s add damaged
execute if score v3 V matches 0 run function weapon:health/post
execute if score v4 V matches ..2 run kill @s
