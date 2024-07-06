#> schedulelib:lib/command
# Function to schedule command directly. 
# Example: 
#   function schedulelib:schedule {function: 'schedulelib:lib/command', time: '5s', args: {command: 'execute as @a at @s run playsound minecraft:block.note_block.imitate.ender_dragon master @s ~ ~ ~'}}
# @input
#   command : string
#       The command to execute
# @public
# @context any
$$(command)