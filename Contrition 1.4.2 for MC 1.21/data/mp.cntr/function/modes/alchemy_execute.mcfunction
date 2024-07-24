#checks and stores current experience level
execute store result score @s mp.cntr.alch run xp query @s levels

#cancels craft if level too low
execute unless score @s mp.cntr.alch matches 30.. run function mp.cntr:modes/deny_item {item_1:"give @s minecraft:apple 1", item_2:"give @s minecraft:ghast_tear 1", item_3:"give @s minecraft:spider_eye 1", item_4:"give @s minecraft:glass_bottle 1", output:"minecraft:potion[minecraft:custom_data={mp.cntr.recipe:1b,mp.cntr.kill:1b}]", confirm:"You need more experience to craft this item!"}

#grants potion if level high enough
execute if score @s mp.cntr.alch matches 30.. run function mp.cntr:modes/grant_potion {price:"xp add @s -30 levels"}