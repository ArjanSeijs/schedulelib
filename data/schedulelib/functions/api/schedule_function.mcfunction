#> schedulelib:api/schedule_function
# 
# Main function used to schedule functions with macro arguments.
# Usage: function schedulelib:schedule {function:'function_name', time: 'schedule_time', args : {arg1:value1,arg2:value2...}}
# This is thus equivalent to calling "/function 'function_name' {arg1:value1,arg2:value2...}" after 'schedule_time'.
# Example: 
#    /function schedulelib:schedule {function: 'schedulelib:tests/say', time: '1s', args : {arg1:Hello!}}
# @input 
#   function : string
#       name of the function to call
#   time : string
#       the time at wich it needs to be scheduled ('2t', '3s', '4d')
#
#   args : object
#       The macro arguments to the function
# @writes storage schedulelib:schedulelib
#                   current : the new function to schedule
# @reads storage schedulelib:schedulelib
#                   current : the new function to schedule
# @public
# @context any

$data modify storage schedulelib:schedulelib current merge value {function:'$(function)', args:$(args), time:$(time)}
# If no ctx defined set to 0
execute unless data storage schedulelib:schedulelib current.ctx run data modify storage schedulelib:schedulelib current.ctx set value 0

# Schedule a onschedule command and store the tick it will run
$execute store result storage schedulelib:schedulelib current.tick long 1 run schedule function schedulelib:lib/onschedule $(time) append
# Store results
function schedulelib:lib/schedule.store with storage schedulelib:schedulelib current
# Clean up arguments
data remove storage schedulelib:schedulelib current