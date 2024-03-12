#> schedulelib:lib/onschedule.exec.func
# Execute the function with args
# @within schedulelib:lib/**


$data modify storage schedulelib:schedulelib onschedule.exec set value {function:'$(function)', ctx:$(ctx)}
# Execute without entity context
$execute if data storage schedulelib:schedulelib {onschedule:{exec:{ctx:0}}} run function $(function) $(args)
# Execute with entity context
$execute as @e[limit=1,nbt={UUID:$(ctx)}] at @s run function $(function) $(args)