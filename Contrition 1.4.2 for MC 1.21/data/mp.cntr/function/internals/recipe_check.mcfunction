#grants alchemy recipe and tag, if applicable
execute if score $mp.cntr.fakeplayer mp.cntr.alch matches 1 run recipe give @a[tag=!mp.cntr.alch_craft] mp.cntr:alchemy_potion
execute if score $mp.cntr.fakeplayer mp.cntr.alch matches 1 run tag @a[tag=!mp.cntr.alch_craft] add mp.cntr.alch_craft

#removes alchemy recipe and tag, if applicable
execute if score $mp.cntr.fakeplayer mp.cntr.alch matches 0 run recipe take @a[tag=mp.cntr.alch_craft] mp.cntr:alchemy_potion
execute if score $mp.cntr.fakeplayer mp.cntr.alch matches 0 run tag @a[tag=!p.cntr.alch_craft] remove mp.cntr.alch_craft

#grants lifeshare recipe and tag, if applicable
execute if score $mp.cntr.fakeplayer mp.cntr.share matches 1 run recipe give @a[tag=!mp.cntr.share_craft] mp.cntr:lifeshare_potion
execute if score $mp.cntr.fakeplayer mp.cntr.share matches 1 run tag @a[tag=!mp.cntr.share_craft] add mp.cntr.share_craft

#removes lifeshare recipe and tag, if applicable
execute if score $mp.cntr.fakeplayer mp.cntr.share matches 0 run recipe take @a[tag=mp.cntr.share_craft] mp.cntr:lifeshare_potion
execute if score $mp.cntr.fakeplayer mp.cntr.share matches 0 run tag @a[tag=!p.cntr.share_craft] remove mp.cntr.share_craft

#grants revival recipe and tag, if applicable
execute if score $mp.cntr.fakeplayer mp.cntr.reviv matches 1 run recipe give @a[tag=!mp.attr.reviv_craft] mp.cntr:revival_totem
execute if score $mp.cntr.fakeplayer mp.cntr.reviv matches 1 run tag @a[tag=!mp.attr.reviv_craft] add mp.attr.reviv_craft

#removes revival recipe and tag, if applicable
execute if score $mp.cntr.fakeplayer mp.cntr.reviv matches 0 run recipe take @a[tag=mp.attr.reviv_craft] mp.cntr:revival_totem
execute if score $mp.cntr.fakeplayer mp.cntr.reviv matches 0 run tag @a[tag=!p.attr.reviv_craft] remove mp.attr.reviv_craft

#schedules the next check, using the fake player's scores to determine whether or not to continue 
execute if score $mp.attr.fakeplayer mp.attr.perma matches 0.. run schedule function mp.cntr:internals/recipe_check 80t replace