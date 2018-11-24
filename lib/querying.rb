def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
  WHERE books.series_id = 1
  ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters
  GROUP BY characters.motto
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT MAX(species), COUNT(species) FROM characters;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors
  JOIN subgenres ON subgenres.id = authors.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  JOIN characters ON characters.series_id = series.id
  GROUP BY characters.species
  HAVING MAX(characters.species) = 'human';"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) FROM character_books
  JOIN characters ON character_books.character_id = characters.id
  ORDER BY character_books.id DESC;"
end
