#initiates double toggle prevention
$execute if score $mp.cntr.fakeplayer $(setting) matches 0 run scoreboard players set $mp.cntr.fakeplayer mp.cntr.toggle 1

#toggles setting on,  and displays confirmation message
$execute if score $mp.cntr.fakeplayer mp.cntr.toggle matches 1 run scoreboard players set $mp.cntr.fakeplayer $(setting) 1
$execute if score $mp.cntr.fakeplayer mp.cntr.toggle matches 1 run tellraw @a {"text":"$(confirm_on)","color":"#D6D6D6","italic":true}

#toggles setting off and displays confirmation message
$execute unless score $mp.cntr.fakeplayer mp.cntr.toggle matches 1 run scoreboard players set $mp.cntr.fakeplayer $(setting) 0
$execute unless score $mp.cntr.fakeplayer mp.cntr.toggle matches 1 run tellraw @a {"text":"$(confirm_off)","color":"#D6D6D6","italic":true}

#withdraws double toggle prevention
execute if score $mp.cntr.fakeplayer mp.cntr.toggle matches 1 run scoreboard players reset $mp.cntr.fakeplayer mp.cntr.toggle