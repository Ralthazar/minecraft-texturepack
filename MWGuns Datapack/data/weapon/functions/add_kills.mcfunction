##################### Add kills #####################

scoreboard players add @a[tag=shooter] kills 1
execute if entity @s[tag=head] run scoreboard players add @a[tag=shooter] headshots 1
kill @s
