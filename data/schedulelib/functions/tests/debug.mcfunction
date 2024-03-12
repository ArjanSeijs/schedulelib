#> schedulelib:tests/debug
# @within schedulelibs:tests/**

function schedulelib:api/clear_all
function schedulelib:api/schedule_function {function : 'schedulelib:tests/say', time: "1t", args: {arg1:"1t",arg2:1}}
function schedulelib:api/schedule_function {function : 'schedulelib:tests/say', time: "1s", args: {arg1:"1s",arg2:2}}
function schedulelib:api/schedule_function {function : 'schedulelib:tests/say', time: "2s", args: {arg1:"2s",arg2:3}}
function schedulelib:api/schedule_command {command : 'say 4 Sec', time: "4s"}
function schedulelib:api/schedule_function {function : 'schedulelib:api/schedule_command', time: "1s", args: {command : 'say 3 Sec', time: "2s"}}
schedule clear schedulelib:lib/onschedule