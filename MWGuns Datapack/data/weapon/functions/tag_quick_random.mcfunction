##################### Random #####################

setblock ~ 255 ~ chest

loot insert ~ 255 ~ loot weapon:entities/quick_random

execute if block ~ 255 ~ chest{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b}]} run tellraw @a ["",{"selector":"@a[tag=shooter]"},{"text":" clocked ","color":"white"},{"selector":"@a[tag=hit,tag=!head]"},{"text":" (","color":"white"},{"score":{"name":"@a[tag=selected]","objective":"e_distance"}},{"text":"m)","color":"white"}]
execute if block ~ 255 ~ chest{Items:[{Slot:0b,id:"minecraft:iron_ingot",Count:1b}]} run tellraw @a ["",{"selector":"@a[tag=shooter]"},{"text":" killed ","color":"white"},{"selector":"@a[tag=hit,tag=!head]"},{"text":" (","color":"white"},{"score":{"name":"@a[tag=selected]","objective":"e_distance"}},{"text":"m)","color":"white"}]
execute if block ~ 255 ~ chest{Items:[{Slot:0b,id:"minecraft:gold_ingot",Count:1b}]} run tellraw @a ["",{"selector":"@a[tag=shooter]"},{"text":" obliterated ","color":"white"},{"selector":"@a[tag=hit,tag=!head]"},{"text":" (","color":"white"},{"score":{"name":"@a[tag=selected]","objective":"e_distance"}},{"text":"m)","color":"white"}]
execute if block ~ 255 ~ chest{Items:[{Slot:0b,id:"minecraft:emerald",Count:1b}]} run tellraw @a ["",{"selector":"@a[tag=shooter]"},{"text":" clocked ","color":"white"},{"selector":"@a[tag=hit,tag=!head]"},{"text":" (","color":"white"},{"score":{"name":"@a[tag=selected]","objective":"e_distance"}},{"text":"m)","color":"white"}]

setblock ~ 255 ~ air replace
