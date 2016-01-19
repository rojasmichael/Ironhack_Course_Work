require_relative("lib/task.rb")

task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Wash the car")
puts task2.id
# 2

task.completed?
# false
task.complete!
task.completed?