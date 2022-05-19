##################### Add kills #####################

# - Headshots
execute if entity @s[tag=headshot,scores={e_distance=30..}] run advancement grant @s only game:headshots/sharpshooter
execute if entity @s[tag=headshot,scores={e_distance=75..}] run advancement grant @s only game:headshots/bullseye

# - Kill Streak
execute if score @s kill_streak matches 3.. run advancement grant @s only game:killstreak/root
execute if score @s kill_streak matches 10.. run advancement grant @s only game:killstreak/10
execute if score @s kill_streak matches 25.. run advancement grant @s only game:killstreak/25

tag @a[tag=headshot] remove headshot
