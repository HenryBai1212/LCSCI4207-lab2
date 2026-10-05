use context starter2024
fun is-leap-year(year :: Number) -> Boolean:
  doc: "When you input a year, returns true if it is a leap year, otherwise false."
  if (num-remainder(year, 4) == 0) and (num-remainder(year, 100) <> 0):
    true
  else if num-remainder(year, 400) == 0:
    true
  else:
    false
  end
where:
  is-leap-year(1900) is false
  is-leap-year(2024) is true
  is-leap-year(2000) is true
  is-leap-year(2026) is false
end

fun tick(time :: Number) -> Number:
  doc: "Give the number of next second"
  if  (time == 59):
    0
  else:
    time + 1
  end
where:
  tick(59) is 0
  tick(1) is 2
  tick(29) is 30
end




fun rock-paper-scissors(choice-play1 :: String, choice-play2 :: String ) -> String:
  doc: "two player play rock paper scissors each player should input one of these three choice like rock, paper or scissors.  if scissors meet rock, rock win. if scissors meet paper, scissors win and if paper meet rock, paper win"
  if not((choice-play1 == "rock") or (choice-play1 == "paper") or (choice-play1 == "scissors")) or
     not((choice-play2 == "rock") or (choice-play2 == "paper") or (choice-play2 == "scissors")):
    "Not Valid"
  else if (choice-play1 == choice-play2):
      "tie"
  else if ((choice-play1 == "rock") and (choice-play2 == "scissors")) or ((choice-play1 == "scissors") and (choice-play2 == "paper")) or ((choice-play1 == "paper") and (choice-play2 == "rock")):
    "player1"
    else:
      "player2"
  end
where:
  rock-paper-scissors("rock" , "rock") is "tie"
  rock-paper-scissors("rock" , "scissors") is "player1"
  rock-paper-scissors("rock" , "paper") is "player2"
  rock-paper-scissors("rock" , "ook") is "Not Valid"
   

end

planet = table: Planet , Distance
  row:"Mercury",	0.39
  row:"Venus",	0.72
  row:"Earth",	1
  row:"Mars", 	1.52
  row:"Jupiter", 	5.2
  row:"Saturn", 	9.54
  row:"Uranus",	 19.2
  row:"Neptune", 	30.06
end

  