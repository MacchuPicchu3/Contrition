#adjust health score
execute as @s run scoreboard players operation @s mp.attr.score -= $mp.attr.fakeplayer mp.attr.loss_inc

#prevents normal health loss flavor text from displaying
tag @s add mp.cntr.custom_text

#grants potion if health is high enough
execute unless score @s mp.attr.score < $mp.attr.fakeplayer mp.attr.floor run function mp.cntr:modes/grant_potion {price:"function mp.attr:health_loss/central_c"}

#cancels craft if health is not high enough
execute if score @s mp.attr.score < $mp.attr.fakeplayer mp.attr.floor run function mp.cntr:modes/deny_item {item_1:"give @s minecraft:apple 1", item_2:"give @s minecraft:ghast_tear 1", item_3:"give @s minecraft:fermented_spider_eye 1", item_4:"give @s minecraft:glass_bottle 1", output:"minecraft:potion[minecraft:custom_data={mp.cntr.recipe:1b,mp.cntr.kill:1b}]", confirm:"You are too weak to craft this item!"}

#reverts health score if health is not high enough
execute if score @s mp.attr.score < $mp.attr.fakeplayer mp.attr.floor run scoreboard players operation @s mp.attr.score += $mp.attr.fakeplayer mp.attr.loss_inc