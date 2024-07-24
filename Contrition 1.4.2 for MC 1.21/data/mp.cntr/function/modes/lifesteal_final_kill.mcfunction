#allows this function to be called again when appropriate
advancement revoke @s only mp.cntr:get_lifesteal_final_kill

#if permadeath is on, allows lifesteal
execute unless score $mp.cntr.fakeplayer mp.cntr.steal matches 0 if score $mp.attr.fakeplayer mp.attr.perma matches 1 run function mp.cntr:modes/lifesteal_execute

#if permadeath is off, initiates fixed text display
execute if score $mp.attr.fakeplayer mp.attr.perma matches 0 run tellraw @s[tag=!mp.attr.fixed_off] [{"selector":"@s"},{"text":", you cannot steal maximum health from this player!"}]

#if permadeath is off, initiates flavor text display
execute if score $mp.attr.fakeplayer mp.attr.perma matches 0 run function mp.attr:internals/flavor_text {range:"1..3",color:"#FAD25A",text_1:"The gods, committed as they are to protecting the weak, are wondering why you even bothered",text_2:"Some bravery that was! How about you go pick on someone your own size for a change?",text_3:"You can't steal a life if there's no life left to steal!",text_4:"null",text_5:"null"}