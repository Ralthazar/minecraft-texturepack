##################### Smoke #####################

particle minecraft:large_smoke ~ ~1 ~ 2 2 2 0 25 force @a

particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1 1 1 0.05 25 force @a

particle minecraft:smoke ~ ~1 ~ 2 2 2 0 25 force @a

effect give @a[distance=..4] blindness 2 255 true

playsound minecraft:entity.generic.extinguish_fire master @a

scoreboard players add @s smoke_g 1
kill @s[scores={smoke_g=160..}]
