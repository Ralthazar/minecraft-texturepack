### Thanks to Cloud Wolf for hitbox!

# Common - Hitbox Directory
execute if entity @s[type=!player,type=!#weapon:non-use,tag=!hit] run function weapon:hitbox/types/default
execute if score player.fire mwguns.config matches 1 if score hs mwguns.config matches 0 if entity @s[type=player,tag=!hit,gamemode=!creative,gamemode=!spectator] run function weapon:hitbox/types/default
execute if score player.fire mwguns.config matches 1 if score hs mwguns.config matches 1 if entity @s[type=player,tag=!hit,gamemode=!creative,gamemode=!spectator] run function weapon:hitbox/types/hs
playsound guns:common.bullet_fly_by master @a[tag=!shooter,distance=..2.5]
scoreboard players set @p[tag=shooter] range 200
