#> schedulelib:lib/onschedule.exec.loop.iter
# Call the function to execute with the arguments, step to next function
# @within schedulelib:lib/**
# @input
#   tick : long
#       The current game tick
# @writes 
#   storage schedulelib:schedulelib
#       loop : functions and args for current tick
# @reads 
#   storage schedulelib:schedulelib
#       loop : functions and args for current tick

function schedulelib:lib/onschedule.exec.func with storage schedulelib:schedulelib onschedule.loop[0]
data remove storage schedulelib:schedulelib onschedule.loop[0]
$execute if data storage schedulelib:schedulelib onschedule.loop[0] run function schedulelib:lib/onschedule.exec.loop.iter {tick:$(tick)}
