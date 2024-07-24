#allows this function to be called again when appropriate
advancement revoke @s only mp.cntr:consume_totem

#queues one player for Resurrection
execute if score $mp.cntr.fakeplayer mp.cntr.reviv matches 1 run scoreboard players add $mp.cntr.fakeplayer mp.cntr.queue 1

#initiates flavor text display
execute as @s if score $mp.cntr.fakeplayer mp.cntr.reviv matches 1 run function mp.attr:internals/flavor_text {range:"1..3",color:"#D4AF37",text_1:"In recognition of your sacrifice, the gods will allow the next available spirit to return from the dead.",text_2:"The idol you once treasured, now shattered beyond recognition! - good thing too, the British Museum was this close to swiping it",text_3:"As the totem disintegrates, it radiates an unmistakeably divine power, suffusing the atmosphere with an air of rejuvenation. The effect is similar to that of a triple shot of espresso.",text_4:"null",text_5:"null"}