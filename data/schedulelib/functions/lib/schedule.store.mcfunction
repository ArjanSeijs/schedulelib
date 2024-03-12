#> schedulelib:lib/schedule.store
# Schedule the function
# @within schedulelib:lib/**
# @input 
#   function : string
#       name of the function to call
#   tick : string
#       the tick at it which needs to be schedule
#   args : object
#       The macro arguments to the function
# @writes 
#   storage scheduelib:scheduelib
#       schedules : Map of the scheduled functions

$data modify storage schedulelib:schedulelib schedules.$(tick) append value {args:$(args), function:'$(function)', tick:'$(tick)', ctx:$(ctx)}