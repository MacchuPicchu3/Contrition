#allows this function to be called again when appropriate
advancement revoke @s only mp.cntr:get_lifesteal_kill

#continues to lifesteal if appropriate
execute unless score $mp.cntr.fakeplayer mp.cntr.steal matches 0 run function mp.cntr:modes/lifesteal_execute