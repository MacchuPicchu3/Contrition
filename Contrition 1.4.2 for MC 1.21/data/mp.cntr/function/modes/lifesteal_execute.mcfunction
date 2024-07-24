#prevents changing the health gain chance
execute unless score $mp.attr.fakeplayer mp.attr.gain_int matches 0 run scoreboard players set $mp.attr.fakeplayer mp.attr.gain_int 50

#prevents normal health gain flavor text from displaying
tag @s add mp.cntr.custom_text

#triggers health gain
execute as @s run function mp.attr:health_gain/central_b

#initiates flavor text display
execute as @s[tag=mp.cntr.custom_text] if score @s mp.attr.score matches 2..12 run function mp.attr:internals/flavor_text {range:"1..4",color:"#3F5A36",text_1:"The gods see in you a soul blackened by cunning and deceit; but you got the kill, and so the heart is yours.",text_2:"Violence is always the answer when you're this low on maximum health!",text_3:"Now's no time for restraint - go back for seconds, you need it!",text_4:"As the gods smile upon your courageous exploits, you feel revitalized.",text_5:"null"}
execute as @s[tag=mp.cntr.custom_text] if score @s mp.attr.score matches 13..30 run function mp.attr:internals/flavor_text {range:"1..4",color:"#30A02D",text_1:"An indescribable surge of life force courses through your body.",text_2:"Your psyche hears an unmistakeable crinkling noise, as if the gods are collectively reaching for their microwaveable popcorn.",text_3:"As they say, all's fair in love and life stealing!",text_4:"As the gods smile upon your courageous exploits, you feel revitalized.",text_5:"null"}
execute as @s[tag=mp.cntr.custom_text] if score @s mp.attr.score matches 31.. run function mp.attr:internals/flavor_text {range:"1..4",color:"#22E524",text_1:"There's honorable and valorous combat, and then there's. . . whatever the hell that was",text_2:"You've captured the attention of the blood god, who rewards your conquest.",text_3:"Achievement Unlocked: Unlicensed Hematologist",text_4:"As the gods smile upon your courageous exploits, you feel revitalized.",text_5:"null"}