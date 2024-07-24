#exacts cost
$$(price)

#plays sounds
execute at @s[tag=!mp.attr.sounds_off] run playsound minecraft:item.bottle.fill_dragonbreath neutral @s ~ ~ ~ 1 0.5
execute at @s[tag=!mp.attr.sounds_off] run playsound minecraft:entity.player.swim neutral @s ~ ~ ~ 0.5 0.5
execute at @s[tag=!mp.attr.sounds_off] run playsound minecraft:entity.illusioner.prepare_mirror neutral @s ~ ~ ~ 0.5 1