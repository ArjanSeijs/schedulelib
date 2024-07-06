#> schedulelib:lib/onschedule.exec.loop
# Set the loop for the current game tick
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

$data modify storage schedulelib:schedulelib onschedule.loop set from storage schedulelib:schedulelib schedules.$(tick)
$function schedulelib:lib/onschedule.exec.loop.iter {tick:$(tick)}
$data remove storage schedulelib:schedulelib schedules.$(tick)