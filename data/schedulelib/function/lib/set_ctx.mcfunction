#> schedulelib:lib/set_ctx
# Set the execution context of the next scheduled function.
# Will only execute the function if the player is online 
# Example: execute as @e run function schedulelib:api/set_ctx
# @writes storage schedulelib:schedulelib
#                   current : the new function to schedule
# @within schedulelib:lib/**
# @context Any (online) entity
# @public

data modify storage schedulelib:schedulelib current.ctx set value -1
execute if data entity @s UUID run data modify storage schedulelib:schedulelib current.ctx set from entity @s UUID