# - Load
scoreboard objectives add load dummy
scoreboard players set loaded load 1

# - Main
scoreboard objectives add reloading dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add drop minecraft.custom:minecraft.drop
scoreboard objectives add full_auto dummy
scoreboard objectives add drop_timer dummy
scoreboard objectives add smoke_g dummy
scoreboard objectives add shoot_delay dummy
scoreboard objectives add bomb_timer dummy
scoreboard objectives add bomb_temp dummy
scoreboard objectives add health_temp dummy
scoreboard objectives add cooldown dummy
scoreboard objectives add magazine dummy
scoreboard objectives add magazine_cap dummy

scoreboard objectives add hitpoints dummy
scoreboard objectives add mob_tag dummy
scoreboard players set mob_tag hitpoints 1

scoreboard objectives add sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Health health
scoreboard objectives add recoil dummy
scoreboard objectives add weapon_blocks dummy
scoreboard objectives add custommodeldata dummy
forceload add 0 0 0 0

# - Mob Tags and Health
scoreboard objectives add e_distance dummy
scoreboard players set /2 e_distance 2
scoreboard objectives add health_atr dummy
scoreboard objectives add damage dummy

# - WUID (Weapon ID System)
scoreboard objectives add WUID dummy
scoreboard players set 1 WUID 1
scoreboard players set 2 WUID 2
execute unless score max WUID matches 1.. run scoreboard players set max WUID 1

# - Players Stats

scoreboard objectives add kills dummy
scoreboard objectives add headshots dummy
scoreboard objectives add range dummy
scoreboard objectives add V dummy
scoreboard objectives add C dummy
scoreboard players set 2 C 2
scoreboard players set 100 C 100
scoreboard players set v0 V 0

# - Config

scoreboard objectives add mwguns.config dummy
scoreboard objectives add G-Config trigger

scoreboard players set hs mwguns.config 0
scoreboard players set player.fire mwguns.config 1
