def genre_count genres # Takes in an array of genres
  # Create a variable to store Hash
  count = {}
  genres.each do |genre|
    # This does not work without parentheses around the parameter.
    count.key?(genre) ? count[genre] += 1 : count[genre] = 1
  end
  # Return accumulated Hash
  count
end
# puts genre_count ["rap", "rap", "pop"]
# puts "This should equal {'pop' => 1, 'rap' => 2}: #{genre_count ["rap", "rap", "pop"]}"
