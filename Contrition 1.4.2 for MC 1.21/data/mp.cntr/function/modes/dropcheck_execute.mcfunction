#deletes item
execute at @a[tag=mp.cntr.dropped] run kill @e[type=item,sort=nearest,limit=1,predicate=mp.cntr:dropcheck_kill]

execute at @a[tag=mp.cntr.dropped] run tag @a remove mp.cntr.dropped