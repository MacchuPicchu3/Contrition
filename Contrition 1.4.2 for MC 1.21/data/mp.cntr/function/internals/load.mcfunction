#adds the scoreboards that are the foundation for the data pack
scoreboard objectives add mp.cntr.steal dummy "Lifesteal"
scoreboard objectives add mp.cntr.share dummy "Lifeshare"

scoreboard objectives add mp.cntr.alch dummy "Alchemy"
scoreboard objectives add mp.cntr.chiv dummy "Chivalry"

scoreboard objectives add mp.cntr.reviv dummy "Revival"
scoreboard objectives add mp.cntr.queue dummy "Resurrection queue"

scoreboard objectives add mp.cntr.toggle dummy "Toggle"
scoreboard objectives add mp.cntr.recipe trigger "Recipe Guide"

#sets up initial settings for the data pack's fake player
execute unless score $mp.cntr.fakeplayer mp.cntr.recipe matches 1 run function mp.cntr:internals/default_settings

#starts the schedule loop that resets dropped item checks
schedule function mp.cntr:modes/dropcheck_reset 2t replace

#starts the schedule loop that checks for recipe queries
schedule function mp.cntr:internals/loop 20t replace

#starts the schedule loop that checks for recipe visibility changes
schedule function mp.cntr:internals/recipe_check 80t replace