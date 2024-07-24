#adjusts queue
scoreboard players remove $mp.cntr.fakeplayer mp.cntr.queue 1

#grants temporary tag
tag @s add mp.cntr.resurrect

#resurrects player
execute as @s[tag=mp.cntr.resurrect] run function mp.attr:options/reset_player

#plays sounds
execute at @a[tag=mp.cntr.resurrect,tag=!mp.attr.sounds_off] run playsound minecraft:entity.evoker.prepare_attack neutral @s ~ ~ ~ 1 0.5
execute at @a[tag=mp.cntr.resurrect,tag=!mp.attr.sounds_off] run playsound minecraft:entity.evoker.prepare_summon neutral @s ~ ~ ~ 1 0.5

#initiates fixed text display
execute as @s run tellraw @a[tag=!mp.attr.fixed_off] [{"selector":"@s"},{"text":" is raised from the dead!"}]

#initiates flavor text display
execute as @a[tag=mp.cntr.resurrect] run function mp.attr:internals/flavor_text {range:"1..3",color:"#D4AF37",text_1:"The gods are pleased by your friends' contrition. You have been ushered back into the realm of the living. . .",text_2:"This guy? Again?!",text_3:"It is impossible to suffer without making someone pay for it; every complaint already contains revenge. - Friedrich Nietzsche",text_4:"null",text_5:"null"}

#clears temporary tag
tag @s[tag=mp.cntr.resurrect] remove mp.cntr.resurrect