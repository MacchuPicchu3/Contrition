#allows this function to be called again when appropriate
advancement revoke @s only mp.cntr:craft_lifeshare_potion

#cancels craft if Lifeshare is disabled
execute if score $mp.cntr.fakeplayer mp.cntr.share matches 0 run function mp.cntr:modes/deny_item {item_1:"give @s minecraft:apple 1", item_2:"give @s minecraft:ghast_tear 1", item_3:"give @s minecraft:fermented_spider_eye 1", item_4:"give @s minecraft:glass_bottle 1", output:"minecraft:potion[minecraft:custom_data={mp.cntr.recipe:1b,mp.cntr.kill:1b}]", confirm:"This recipe has not been enabled!"}

#continues craft if Lifeshare is enabled
execute if score $mp.cntr.fakeplayer mp.cntr.share matches 1 run function mp.cntr:modes/lifeshare_execute

#initiates drop-crafting check
schedule function mp.cntr:modes/dropcheck_execute 2t