### - Mobs

function weapon:mob_tag
tag @a[tag=dead] remove dead
tag @a[tag=head] remove head
tag @e[tag=body] remove body
tag @e[type=!#weapon:non-use,tag=hit] remove hit
