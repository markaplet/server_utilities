# ----------------------------------------------------------------------
# UNINSTALL
# Removes scoreboards
# ----------------------------------------------------------------------

scoreboard objectives remove cancel_sleep
scoreboard objectives remove in_bed

tellraw @a[tag=Admin] {"text":"## -------------------//-------------------##","color":"dark_gray"}
tellraw @a[tag=Admin] ["",{"text":"One Player Sleeps","color":"green"},{"text":" "},{"text":"has been removed!","color":"gold"}]
tellraw @a[tag=Admin] {"text":"## -------------------//-------------------##","color":"dark_gray"}
