#> schedulelib:tests/say
# @within schedulelibs:tests/**

function schedulelib:api/clear_all
function schedulelib:api/schedule_function {function : 'schedulelib:tests/say', time: "3s", args: {arg1:"Yay1",arg2:1}}
function schedulelib:api/schedule_function {function : 'schedulelib:tests/say', time: "3s", args: {arg1:"Yay2",arg2:2}}