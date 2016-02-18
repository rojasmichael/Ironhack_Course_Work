class MatchesController < ApplicationController
	SELECT "matches".* FROM "matches"
  	INNER JOIN "players" ON "players"."id" = "matches"."winner_id"

  	def index
  		
  	end
  	

end
