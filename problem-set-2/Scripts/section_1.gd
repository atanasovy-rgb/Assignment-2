extends Node

#region Instructions
'''
Instructions: Assume all code runs inside a Godot Node script unless stated otherwise. 
Use correct GDScript syntax (indentation matters — GDScript uses tabs/spaces).

Quick Reference
Variable:
var health = 100
var speed: float = 250.0

Function:
func take_damage(amount):
health -= amount
return health

For loop
for i in range(5):
print(i)
for enemy in enemies:
enemy.speed += 10
'''
#endregion

#Declare a variable named player_name and assign it a name of your choice as value
var player_name = "Yordan";
#Declare a variable max_health with an explicit type annotation of int, set to 100.
var max_help = 100;
#Declare a variable is_alive as a boolean, set to true.
var is_alive = true;
#What is the difference between var speed = 5 and const SPEED = 5? When would you use each in a game? Answer as a comment
# The differences between var speed and const SPEED is that const in un changable for example later down in the code I cannot do speed = 20 instead while var makes it able for the variable to be more flexible
