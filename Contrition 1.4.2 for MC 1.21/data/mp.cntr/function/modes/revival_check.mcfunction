#checks if player is ready to be resurrected
execute as @s unless score @s mp.attr.death matches ..150 run function mp.cntr:modes/revival_resurrect