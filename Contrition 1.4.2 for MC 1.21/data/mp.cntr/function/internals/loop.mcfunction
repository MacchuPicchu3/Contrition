#checks for preference updates
execute as @a if score @s mp.cntr.recipe matches 1.. run function mp.cntr:options/recipes

#checks if any player needs to be resurrected
execute as @r[tag=mp.attr.spirit] if score $mp.cntr.fakeplayer mp.cntr.queue matches 1.. run function mp.cntr:modes/revival_check

#allows datapack to identify players who are not final kills for Lifesteal
execute store result score $mp.cntr.fakeplayer mp.attr.loss_inc run scoreboard players get $mp.attr.fakeplayer mp.attr.loss_inc
scoreboard players add $mp.cntr.fakeplayer mp.attr.loss_inc 1

#schedules the next check, using the fake player's scores to determine whether or not to continue 
execute if score $mp.attr.fakeplayer mp.attr.perma matches 0.. run schedule function mp.cntr:internals/loop 20t replace