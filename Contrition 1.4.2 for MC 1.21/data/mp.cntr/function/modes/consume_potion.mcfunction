#allows this function to be called again when appropriate
advancement revoke @s only mp.cntr:consume_potion

#prevents changing the health gain chance
execute unless score $mp.attr.fakeplayer mp.attr.gain_int matches 0 run scoreboard players set $mp.attr.fakeplayer mp.attr.gain_int 50

#prevents normal health gain flavor text from displaying
tag @s add mp.cntr.custom_text

#triggers health gain
execute as @s run function mp.attr:health_gain/central_b

#initiates flavor text display
execute as @s[tag=mp.cntr.custom_text] if score @s mp.attr.score matches 2..12 run function mp.attr:internals/flavor_text {range:"1..4",color:"#3F5A36",text_1:"The finest of wines are worthless to you, where a nectar like this more health can imbue.",text_2:"It tastes of raspberries and death. How curious.",text_3:"The gods are hoping you have more where that came from!",text_4:"As the gods smile upon your courageous exploits, you feel revitalized.",text_5:"null"}
execute as @s[tag=mp.cntr.custom_text] if score @s mp.attr.score matches 13..30 run function mp.attr:internals/flavor_text {range:"1..4",color:"#30A02D",text_1:"The bottle's label says 'Made From Concentrate', so as an informed consumer, you. . . guzzled it down anyway. Right.",text_2:"The viscous liquid, flowing throughout your being, revivifies you with its steadfast presence.",text_3:"'Warning: May contain trace amounts of glowstone dust'",text_4:"As the gods smile upon your courageous exploits, you feel revitalized.",text_5:"null"}
execute as @s[tag=mp.cntr.custom_text] if score @s mp.attr.score matches 31.. run function mp.attr:internals/flavor_text {range:"1..4",color:"#22E524",text_1:"Have you considered trying some water for a change?",text_2:"Your thirst is quenched, your mind is at ease; what more can one desire in this world?",text_3:"Achievement Unlocked: Fruit Punch Connoisseur",text_4:"As the gods smile upon your courageous exploits, you feel revitalized.",text_5:"null"}