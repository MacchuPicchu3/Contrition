#allows this function to be called again when appropriate
advancement revoke @s only mp.cntr:bypass_immunity

#removes health from players who have died to another player
execute if score $mp.cntr.fakeplayer mp.attr.death matches 1 run function mp.attr:health_loss/central_b