json.teams do
	json.array! @teams do |team|
		json.name team.name
		json.manager team.manager
		json.league_id team.league_id
		json.image team.photo_url
		json.rank team.rank
		json.slug team.slug
	end
end

