#> schedulelib:tests/test_basic
# @within schedulelibs:tests/**

function schedulelib:api/clear_all
function schedulelib:api/schedule_function {function : 'schedulelib:tests/say', time: '1s', args: {arg1:"Yay!!",arg2:1}}