
hash = {:wat=>[0,1,{:wut=>[0,[[0,1,2,{:bbq => 1}]]]}]}

puts hash [:wat][2][:wut][1][0][3][:bbq]



arr = [[0,1,2,3,4, {:secert=>{:unlock=>[0,1]}}]]

puts arr[0][5][:secert][:unlock][1]