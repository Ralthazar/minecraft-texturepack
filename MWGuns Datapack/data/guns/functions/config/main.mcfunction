### - Main
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
gamerule sendCommandFeedback false
tellraw @s {"text":"> MWGuns Config Menu","color":"#4A47FF"}
tellraw @s {"text":"\n"}
tellraw @s ["",{"text":"- Enable/Disable headshots:","color":"#949494"},{"text":"\n"},{"text":"/scoreboard players set hs mwguns.config 0 or 1","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set hs mwguns.config 0"},"hoverEvent":{"action":"show_text","contents":{"text":"Copy to clipboard!","color":"gray"}}}]
tellraw @s ["",{"text":"- Enable/Disable player fire:","color":"#949494"},{"text":"\n"},{"text":"/scoreboard players set player.fire mwguns.config 0 or 1","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set player.fire mwguns.config 0"},"hoverEvent":{"action":"show_text","contents":{"text":"Copy to clipboard!","color":"gray"}}}]
scoreboard players reset @s G-Config
schedule function guns:config/gmst 1t
