# ----------------------------------------------------------------------
# INSTALL
# Adds scoreboards
# ----------------------------------------------------------------------

scoreboard objectives add cancel_sleep trigger
scoreboard objectives add in_bed dummy

tellraw @a[tag=Admin] {"text":"## -------------------//-------------------##","color":"dark_gray"}
tellraw @a[tag=Admin] ["",{"text":"One Player Sleep","color":"green"},{"text":" "},{"text":"has been installed!","color":"gold"}]
tellraw @a[tag=Admin] {"text":"## -------------------//-------------------##","color":"dark_gray"}
