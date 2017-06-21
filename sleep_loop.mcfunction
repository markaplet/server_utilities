# ----------------------------------------------------------------------
# 1 PLAYER SLEEP
# Allows night to pass if 1 player sleeps
# ----------------------------------------------------------------------

## TAG ALL PLAYERS SLEEPING
scoreboard players tag @a add isSleeping {Sleeping:1b}
execute @a[tag=isSleeping] ~ ~ ~ scoreboard players enable @a cancel_sleep
scoreboard players add @e[tag=isSleeping] in_bed 1

## TELL CHAT WHO IS SLEEPING AND ALLOW THEM TO CANCEL
execute @e[tag=isSleeping,score_in_bed=1] ~ ~ ~ tellraw @a ["",{"selector":"@s"},{"text":" is now sleeping","color":"gold"},{"text":" "},{"text":"Cancel","color":"red","clickEvent":{"action":"run_command","value":"/trigger cancel_sleep set 1"},"hoverEvent":{"action":"show_text","value":"Stop players from passing the night"}}]

## SPEEDS TIME TO PASS THE NIGHT
execute @a[score_in_bed_min=110] ~ ~ ~ time add 100

## CLEARS WEATHER
execute @a[score_in_bed_min=300,score_in_bed=301] ~ ~ ~ weather clear

## CANCEL PLAYER SLEEPING IF REQUESTED
function server_utilities:sleep_cancel if @a[score_cancel_sleep_min=1]

## RESET ISSLEEPING TAG AND SCORE
scoreboard players tag @a[tag=isSleeping] remove isSleeping {Sleeping:0b}
scoreboard players set @a[tag=!isSleeping,score_in_bed_min=1] in_bed 0
