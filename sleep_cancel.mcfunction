# ----------------------------------------------------------------------
# CANCEL SLEEPING
# Cancels players from sleeping
# ----------------------------------------------------------------------

## KICKS PLAYERS FROM BED IF SLEEPING CANCELED
execute @a[score_in_bed_min=1] ~ ~ ~ summon Snowball ~ ~2 ~
tellraw @a[score_in_bed_min=1] {"text":"Sleeping has been canceled","color":"red"}

## RESET THE TRIGGER
execute @a ~ ~ ~ trigger cancel_sleep set 0

## RESET THE SLEEP SCORE
scoreboard players set @a[tag=!isSleeping,score_cancel_sleep_min=1] cancel_sleep 0
