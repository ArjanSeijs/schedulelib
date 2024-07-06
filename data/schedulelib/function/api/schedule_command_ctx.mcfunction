#> schedulelib:api/schedule_command_ctx
# Function to schedule command directly preserving  
# Example: 
#   function schedulelib:schedule {function: 'schedulelib:lib/command', time: '5s', command: 'execute as @a at @s run playsound minecraft:block.note_block.imitate.ender_dragon master @s ~ ~ ~'}
# @input
#   command : string
#       The command to execute
# @public
# @context any

function schedulelib:lib/set_ctx
$function schedulelib:api/schedule_command {command: '$(command)', time: '$(time)'}