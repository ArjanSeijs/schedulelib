#> schedulelib:api/clear_all
# Cancel all scheduled functions
# @writes storage schedulelib:schedulelib
#                   current : the new function to schedule
#                   schedules : the scheduled functions
#                   onschedule : current tick parameters
#                   loop : current tick schedule copy
# @public
# @context any

data remove storage schedulelib:schedulelib current
data remove storage schedulelib:schedulelib schedules
data remove storage schedulelib:schedulelib onschedule
schedule clear schedulelib:lib/onschedule