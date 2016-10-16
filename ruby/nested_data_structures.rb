new_hit_movie = {
  actors: {
    main: ["Morgan Freeman", "Brad Pitt", "Scarlett Johansson", "Leonardo DiCaprio"],
    side: ["Seth Rogen", "Will Smith", "Dave Chapelle", "Ken Jeong"],
    extras: "Too many to list. Sorry"
    },
  producers: ["J.J. Abrams", "Jerry Bruckheimer", "Tim Burton", "Vin Diesel"],
  director: "Stan Lee",
  fx_team: {
    cgi: ["Marvel Studios", "Legendary Pictures"],
    stunts: "Stunts Unlimited"
    }
}

puts "#{new_hit_movie[:director]} and #{new_hit_movie[:actors][:main][2]} have worked together before in many Avengers movies."
puts new_hit_movie[:actors]
puts new_hit_movie[:fx_team][:stunts].downcase
make_switch_a = new_hit_movie[:actors][:main][1]
make_switch_b = new_hit_movie[:actors][:side][3]
new_hit_movie[:actors][:main].delete(make_switch_a)
new_hit_movie[:actors][:main].push(make_switch_b)
new_hit_movie[:actors][:side].delete(make_switch_b)
new_hit_movie[:actors][:side].push(make_switch_a)
puts new_hit_movie[:actors]