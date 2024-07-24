#define indicators
data modify storage mp.cntr:dynamic indicators set value ['[{"text":"[","color":"#222222"},{"text":"●","color":"#1AAF1C"},{"text":"] ","color":"#222222"}]','[{"text":"[","color":"#222222"},{"text":"●","color":"#1AAF1C"},{"text":"] ","color":"#222222"}]','[{"text":"[","color":"#222222"},{"text":"●","color":"#1AAF1C"},{"text":"] ","color":"#222222"}]','[{"text":"[","color":"#222222"},{"text":"●","color":"#1AAF1C"},{"text":"] ","color":"#222222"}]','[{"text":"[","color":"#222222"},{"text":"●","color":"#1AAF1C"},{"text":"] ","color":"#222222"}]','[{"text":"[","color":"#222222"},{"text":"●","color":"#1AAF1C"},{"text":"] ","color":"#222222"}]']
data modify storage mp.cntr:static indicators set value '[{"text":"[","color":"#222222"},{"text":"●","color":"#D6D6D6"},{"text":"] ","color":"#222222"}]'
execute unless score $mp.cntr.fakeplayer mp.cntr.steal matches 1 run data modify storage mp.cntr:dynamic indicators[0] set value '[{"text":"[","color":"#222222"},{"text":"●","color":"#B00000"},{"text":"] ","color":"#222222"}]'
execute unless score $mp.cntr.fakeplayer mp.cntr.share matches 1 run data modify storage mp.cntr:dynamic indicators[1] set value '[{"text":"[","color":"#222222"},{"text":"●","color":"#B00000"},{"text":"] ","color":"#222222"}]'
execute unless score $mp.cntr.fakeplayer mp.cntr.reviv matches 1 run data modify storage mp.cntr:dynamic indicators[2] set value '[{"text":"[","color":"#222222"},{"text":"●","color":"#B00000"},{"text":"] ","color":"#222222"}]'
execute unless score $mp.cntr.fakeplayer mp.cntr.alch matches 1 run data modify storage mp.cntr:dynamic indicators[3] set value '[{"text":"[","color":"#222222"},{"text":"●","color":"#B00000"},{"text":"] ","color":"#222222"}]'
execute unless score $mp.cntr.fakeplayer mp.cntr.chiv matches 1 run data modify storage mp.cntr:dynamic indicators[4] set value '[{"text":"[","color":"#222222"},{"text":"●","color":"#B00000"},{"text":"] ","color":"#222222"}]'
execute unless score $mp.cntr.fakeplayer mp.attr.death matches 1 run data modify storage mp.cntr:dynamic indicators[5] set value '[{"text":"[","color":"#222222"},{"text":"●","color":"#B00000"},{"text":"] ","color":"#222222"}]'

#displays a menu for all available options and settings
tellraw @s [{"text":"--------------------------------------------","color":"#222222"}]
tellraw @s [{"text":"Contrition 1.4.2 ","color":"#87CEEB","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to visit the ","color":"#D6D6D6"},{"text":"Planet Minecraft ","color":"#48D4D4"},{"text":"page for Contrition!","color":"#D6D6D6"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/contrition/"}},{"text":"by ","color":"#D6D6D6"},{"text":"MacchuPicchu ","color":"#FA1433"},{"text":"– options menu","color":"#D6D6D6","hoverEvent":{"action":"show_text","contents":[{"text":"This menu has everything you need to customize your experience with Contrition!\n\nToggleable options are preceded by a ","color":"#D6D6D6"},{"text":"green ","color":"#1AAF1C"},{"text":"indicator when turned on and a ","color":"#D6D6D6"},{"text":"red ","color":"#B00000"},{"text":"indicator when turned off.","color":"#D6D6D6"}]}}]
tellraw @s [{"text":"--------------------------------------------","color":"#222222"}]
tellraw @s [{"storage":"mp.cntr:dynamic","nbt":"indicators[0]","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"This option is ","color":"#D6D6D6"},{"text":"toggleable ","color":"#DA70D6"},{"text":"and can be turned on or off freely.\n\nThis option is ","color":"#D6D6D6"},{"text":"global ","color":"#5555FF"},{"text":"and affects every player that joins the world.","color":"#D6D6D6"}]}},{"text":"Toggle lifesteal","color":"#71C0E0","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle lifesteal","color":"#71C0E0"},{"text":"\nToggles the ability to gain a heart of maximum health upon killing another player.\n\nBest enjoyed in a multiplayer survival environment.\n\nClick to choose this option!","color":"#D6D6D6"}]},"clickEvent":{"action":"run_command","value":"/execute as @s run function mp.cntr:options/toggle_global {setting:\"mp.cntr.steal\", confirm_on:\"Lifesteal has now been enabled. Exercise caution!\", confirm_off:\"Lifesteal is no longer enabled. Breathe easy!\"}"}}]
tellraw @s [{"storage":"mp.cntr:dynamic","nbt":"indicators[1]","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"This option is ","color":"#D6D6D6"},{"text":"toggleable ","color":"#DA70D6"},{"text":"and can be turned on or off freely.\n\nThis option is ","color":"#D6D6D6"},{"text":"global ","color":"#5555FF"},{"text":"and affects every player that joins the world.","color":"#D6D6D6"}]}},{"text":"Toggle lifeshare","color":"#5BB2D6","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle lifeshare","color":"#5BB2D6"},{"text":"\nToggles the ability to craft Potions of Accretion, which restore a heart of maximum health when consumed, but cost a heart of maximum health to make.\n\nBest enjoyed in a multiplayer survival environment.\n\nClick to choose this option!","color":"#D6D6D6"}]},"clickEvent":{"action":"run_command","value":"/execute as @s run function mp.cntr:options/toggle_global {setting:\"mp.cntr.share\", confirm_on:\"Lifeshare has now been enabled. Donate now to a friend in need!\", confirm_off:\"Lifeshare is no longer enabled. Your hearts are yours, all yours.\",recipe:\"mp.cntr.lifeshare_potion\"}"}}]
tellraw @s [{"storage":"mp.cntr:dynamic","nbt":"indicators[2]","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"This option is ","color":"#D6D6D6"},{"text":"toggleable ","color":"#DA70D6"},{"text":"and can be turned on or off freely.\n\nThis option is ","color":"#D6D6D6"},{"text":"global ","color":"#5555FF"},{"text":"and affects every player that joins the world.","color":"#D6D6D6"}]}},{"text":"Toggle revival","color":"#44A4CB","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle revival","color":"#44A4CB"},{"text":"\nToggles the ability to craft Totems of Resurrection, which bring a randomly selected player back to life when consumed.\n\nBest enjoyed in a multiplayer survival environment.\n\nClick to choose this option!","color":"#D6D6D6"}]},"clickEvent":{"action":"run_command","value":"/execute as @s run function mp.cntr:options/toggle_global {setting:\"mp.cntr.reviv\", confirm_on:\"Totems of Resurrection can now be crafted!\", confirm_off:\"Totems of Resurrection can no longer be crafted.\",recipe:\"mp.cntr.revival_totem\"}"}}]
tellraw @s [{"text":""}]
tellraw @s [{"storage":"mp.cntr:dynamic","nbt":"indicators[3]","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"This option is ","color":"#D6D6D6"},{"text":"toggleable ","color":"#DA70D6"},{"text":"and can be turned on or off freely.\n\nThis option is ","color":"#D6D6D6"},{"text":"global ","color":"#5555FF"},{"text":"and affects every player that joins the world.","color":"#D6D6D6"}]}},{"text":"Toggle alchemy","color":"#2D96C0","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle alchemy","color":"#2D96C0"},{"text":"\nToggles the ability to craft Potions of Accretion, which restore a heart of maximum health when consumed, but cost 30 experience levels to make.\n\nBest enjoyed in survival environments that limit players' access to resources, like CTMs and some adventure maps.\n\nClick to choose this option!","color":"#D6D6D6"}]},"clickEvent":{"action":"run_command","value":"/execute as @s run function mp.cntr:options/toggle_global {setting:\"mp.cntr.alch\", confirm_on:\"Potions of Accretion can now be crafted alchemically!\", confirm_off:\"Potions of Accretion can no longer be crafted alchemically.\",recipe:\"mp.cntr.alchemy_potion\"}"}}]
tellraw @s [{"storage":"mp.cntr:dynamic","nbt":"indicators[4]","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"This option is ","color":"#D6D6D6"},{"text":"toggleable ","color":"#DA70D6"},{"text":"and can be turned on or off freely.\n\nThis option is ","color":"#D6D6D6"},{"text":"global ","color":"#5555FF"},{"text":"and affects every player that joins the world.","color":"#D6D6D6"}]}},{"text":"Toggle chivalry","color":"#1788B6","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle chivalry","color":"#1788B6"},{"text":"\nToggles the ability to craft Reinforced Armor, which are pieces of chainmail armor that grant maximum health bonuses when worn.\n\nBest enjoyed in any survival environment.\n\nClick to choose this option!","color":"#D6D6D6"}]},"clickEvent":{"action":"run_command","value":"/execute as @s run function mp.cntr:options/toggle_global {setting:\"mp.cntr.chiv\", confirm_on:\"Reinforced armor can now be crafted!\", confirm_off:\"Reinforced armor can no longer be crafted.\"}"}}]
tellraw @s [{"storage":"mp.cntr:dynamic","nbt":"indicators[5]","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"This option is ","color":"#D6D6D6"},{"text":"toggleable ","color":"#DA70D6"},{"text":"and can be turned on or off freely.\n\nThis option is ","color":"#D6D6D6"},{"text":"global ","color":"#5555FF"},{"text":"and affects every player that joins the world.","color":"#D6D6D6"}]}},{"text":"Toggle immunity","color":"#007AAB","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle immunity","color":"#007AAB"},{"text":"\nToggles the ability to lose max health from environmental deaths. Deaths caused by other players will ignore this toggle.\n\nBest enjoyed in a multiplayer survival environment.\n\nClick to choose this option!","color":"#D6D6D6"}]},"clickEvent":{"action":"run_command","value":"/execute as @s run function mp.cntr:options/toggle_global {setting:\"mp.attr.death\", confirm_on:\"Environmental deaths will no longer reduce max health.\", confirm_off:\"Environmental deaths will now reduce max health.\"}"}}]
tellraw @s [{"text":""}]
tellraw @s [{"storage":"mp.cntr:static","nbt":"indicators","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"This option is ","color":"#D6D6D6"},{"text":"repeatable ","color":"#FF10F0"},{"text":"and can be requested infinitely.\n\nThis option is ","color":"#D6D6D6"},{"text":"individual ","color":"#E3BC9A"},{"text":"and can be run on other players' behalf by replacing the ","color":"#D6D6D6"},{"text":"@s ","color":"#555555"},{"text":"with their name.","color":"#D6D6D6"}]}},{"text":"Test Contrition","color":"#989898","hoverEvent":{"action":"show_text","contents":[{"text":"Test Contrition","color":"#989898"},{"text":"\nGives the player various items needed to make and test this data pack's custom recipes.\n\nClick to choose this option!","color":"#D6D6D6"}]},"clickEvent":{"action":"run_command","value":"/execute as @s run function mp.cntr:options/testing"}}]
tellraw @s [{"storage":"mp.cntr:static","nbt":"indicators","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"This option is ","color":"#D6D6D6"},{"text":"repeatable ","color":"#FF10F0"},{"text":"and can be requested infinitely.\n\nThis option is ","color":"#D6D6D6"},{"text":"individual ","color":"#E3BC9A"},{"text":"and is accessible to all players using ","color":"#D6D6D6"},{"text":"/trigger mp.cntr.recipe","color":"#555555"},{"text":".","color":"#D6D6D6"}]}},{"text":"Display recipe guide","color":"#777777","hoverEvent":{"action":"show_text","contents":[{"text":"Display recipe guide","color":"#777777"},{"text":"\nDisplays a guide for Contrition's custom recipes in chat.\n\nClick to choose this option!","color":"#D6D6D6"}]},"clickEvent":{"action":"suggest_command","value":"/execute as @s run function mp.cntr:options/recipes"}}]
tellraw @s [{"storage":"mp.cntr:static","nbt":"indicators","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"This option is ","color":"#D6D6D6"},{"text":"permanent","color":"#B00000"},{"text":"; once selected, its effects cannot be reversed. ","color":"#D6D6D6"},{"text":"Don't choose this option unless you're sure you want to!","color":"#D6D6D6","italic":true},{"text":"\n\nThis option is ","color":"#D6D6D6"},{"text":"global ","color":"#5555FF"},{"text":"and affects every player that joins the world.","color":"#D6D6D6"}]}},{"text":"Uninstall Contrition","color":"#555555","hoverEvent":{"action":"show_text","contents":[{"text":"Uninstall Contrition","color":"#555555"},{"text":"\nDeletes all of Contrition's scoreboards and tags and resets all players' base health, then disables the data pack.\n\nClick to choose this option!","color":"#D6D6D6"}]},"clickEvent":{"action":"suggest_command","value":"/function mp.cntr:options/uninstall"}}]
tellraw @s [{"text":"--------------------------------------------","color":"#222222"}]