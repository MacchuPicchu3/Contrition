#allows this function to be called again when appropriate
advancement revoke @s only mp.cntr:craft_revival_totem

#denies item, if appropriate
execute if score $mp.cntr.fakeplayer mp.cntr.reviv matches 0 run function mp.cntr:modes/deny_item {item_1:"give @s minecraft:experience_bottle 4", item_2:"give @s minecraft:netherite_ingot 4", item_3:"give @s minecraft:totem_of_undying 1", item_4:"give @s minecraft:air 1", output:"minecraft:totem_of_undying[minecraft:custom_data={mp.cntr.recipe:2b,mp.cntr.kill:1b}]", confirm:"This recipe has not been enabled!"}

#grants item, if appropriate
execute if score $mp.cntr.fakeplayer mp.cntr.reviv matches 1 run function mp.cntr:modes/grant_totem

#initiates dropcheck, if applicable
schedule function mp.cntr:modes/dropcheck_execute 4t