##################### Check Helath #####################

execute if entity @s[type=player,tag=!shooter,tag=dead,tag=head] run tellraw @a ["",{"selector":"@a[tag=shooter]"},{"text":" headshoted ☠ ","color":"white"},{"selector":"@a[tag=head]"},{"text":" (","color":"white"},{"score":{"name":"@a[tag=selected]","objective":"e_distance"}},{"text":"m)","color":"white"}]
execute if entity @s[type=player,tag=!shooter,tag=dead,tag=body] run tellraw @a ["",{"selector":"@a[tag=shooter]"},{"text":" killed ","color":"white"},{"selector":"@a[tag=head]"},{"text":" (","color":"white"},{"score":{"name":"@a[tag=selected]","objective":"e_distance"}},{"text":"m)","color":"white"}]

execute if score mob_tag hitpoints matches 1.. if entity @s[type=!player,tag=body,tag=dead] run tellraw @a ["",{"selector":"@a[tag=shooter]"},{"text":" killed a ","color":"white"},{"selector":"@s[type=!player,type=!#weapon:non-use]","color":"white"},{"text":" (","color":"white"},{"score":{"name":"@e[type=!#weapon:non-use,tag=selected,limit=1]","objective":"e_distance"}},{"text":"m)","color":"white"}]
