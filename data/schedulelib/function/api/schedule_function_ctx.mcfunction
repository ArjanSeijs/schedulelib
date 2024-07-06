#> schedulelib:api/schedule_function_ctx
# Schedule function preserving the executor context
# SEE schedulelib:api/schedule_function 
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

function schedulelib:lib/set_ctx
$function schedulelib:api/schedule_function {function: '$(function)', time: '$(time)', args: $(args)}