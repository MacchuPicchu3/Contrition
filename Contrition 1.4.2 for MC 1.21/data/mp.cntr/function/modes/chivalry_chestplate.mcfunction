#allows this function to be called again when appropriate
advancement revoke @s only mp.cntr:craft_chivalry_chestplate

#denies item, if appropriate
execute if score $mp.cntr.fakeplayer mp.cntr.chiv matches 0 run function mp.cntr:modes/deny_item {item_1:"give @s minecraft:netherite_scrap 1", item_2:"give @s minecraft:netherite_upgrade_smithing_template 1", item_3:"give @s minecraft:chainmail_chestplate 1", item_4:"give @s minecraft:air 1", output:"minecraft:chainmail_chestplate[minecraft:custom_data={mp.cntr.recipe:4b,mp.cntr.kill:1b}]", confirm:"This recipe has not been enabled!"}

#grants item, if appropriate
execute if score $mp.cntr.fakeplayer mp.cntr.chiv matches 1 run function mp.cntr:modes/grant_armor

#initiates drop-crafting check
schedule function mp.cntr:modes/dropcheck_execute 2t