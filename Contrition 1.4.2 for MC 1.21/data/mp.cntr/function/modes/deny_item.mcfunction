#returns crafting ingredients
$$(item_1)
$$(item_2)
$$(item_3)
$$(item_4)

#removes crafted custom item
$execute store result score @s mp.cntr.queue run clear @s $(output) 1

#adds dropcheck tag
execute unless score @s mp.cntr.queue matches 1.. run tag @s add mp.cntr.dropped

#displays confirmation message
$title @s actionbar [{"text":"[Contrition] ","color":"#87CEEB"},{"text":"$(confirm)","color":"#D6D6D6"}]

#plays sounds
execute at @s[tag=!mp.attr.sounds_off] run playsound minecraft:block.fungus.break neutral @s ~ ~ ~ 1 0.5