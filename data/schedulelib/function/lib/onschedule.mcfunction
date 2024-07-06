#> schedulelib:lib/onschedule
# Get gametime and setup the loop
# @within schedulelib:lib/**
# @writes
#   storage schedulelib:schedulelib
#       onschedule.tick : The current tick time
# @reads
#   storage schedulelib:schedulelib
#       onschedule.tick : The current tick time

execute store result storage schedulelib:schedulelib onschedule.tick long 1 run time query gametime
function schedulelib:lib/onschedule.exec.loop with storage schedulelib:schedulelib onschedule