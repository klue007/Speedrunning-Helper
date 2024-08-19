scoreboard objectives add snowball_throw used:snowball "snowball_throw"
scoreboard objectives add ender_pearl_throw used:ender_pearl "ender_pearl_throw"
scoreboard objectives add training_mode trigger [{"text": "Training mode","color": "aqua","bold": true}]
team add training_mode "training_mode"
team modify training_mode collisionRule never
team modify training_mode friendlyFire false
team modify training_mode color gray