##################### Explode #####################

summon armor_stand ~ ~1 ~ {Tags:["flashbang"],Invisible:1,Invulnerable:1}
execute as @a[distance=..25] at @s anchored eyes run function weapon:flashbang/ray


playsound minecraft:entity.generic.explode master @a ~ ~ ~ 5

# 0..5
title @a[tag=can_see,distance=..5] times 3 100 25
title @a[tag=can_see,distance=..5] title ["",{"text":"\uE000"}]
# 5..10
title @a[tag=can_see,distance=5..10] times 3 70 25
title @a[tag=can_see,distance=5..10] title ["",{"text":"\uE000"}]
# 10..15
title @a[tag=can_see,distance=10..15] times 3 40 25
title @a[tag=can_see,distance=10..15] title ["",{"text":"\uE000"}]
# 15..20
title @a[tag=can_see,distance=15..20] times 3 40 15
title @a[tag=can_see,distance=15..20] title ["",{"text":"\uE000"}]
# 20..25
title @a[tag=can_see,distance=20..25] times 3 30 10
title @a[tag=can_see,distance=20..25] title ["",{"text":"\uE000"}]



tag @a remove can_see
kill @e[type=armor_stand,tag=flashbang,sort=nearest,limit=1]
kill @s
