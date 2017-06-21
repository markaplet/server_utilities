# ----------------------------------------------------------------------
# ANTI-GRIEFING: CREEPERS
# Sets mobGriefing to false at point that creeper explodes
# ----------------------------------------------------------------------

gamerule mobGriefing true
execute @a ~ ~ ~ /execute @e[type=Creeper,r=8] ~ ~ ~ /gamerule mobGriefing false
