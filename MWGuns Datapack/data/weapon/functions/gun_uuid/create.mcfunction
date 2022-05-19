### - Create UUID

function weapon:gun_uuid/stats

tp @s 0 0 0
scoreboard players operation @s WUID = max_id WUID
scoreboard players add max_id WUID 1
