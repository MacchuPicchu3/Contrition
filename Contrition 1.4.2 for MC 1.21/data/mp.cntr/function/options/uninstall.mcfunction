#removes all scoreboards
scoreboard objectives remove mp.cntr.steal
scoreboard objectives remove mp.cntr.share

scoreboard objectives remove mp.cntr.alch
scoreboard objectives remove mp.cntr.chiv

scoreboard objectives remove mp.cntr.reviv
scoreboard objectives remove mp.cntr.queue

scoreboard objectives remove mp.cntr.toggle
scoreboard objectives remove mp.cntr.recipe

tag @a remove mp.cntr.alch_craft
tag @a remove mp.cntr.share_craft
tag @a remove mp.cntr.reviv_craft

#disables the data pack
datapack disable "file/Contrition 1.4.2 for MC 1.21"
datapack disable "file/contrition-1-4-2-for-mc-1-21"

#displays confirmation message
execute as @s run tellraw @a {"text":"The Contrition data pack has been disabled, and all associated scoreboards have been removed.","color":"#D6D6D6","italic":true}