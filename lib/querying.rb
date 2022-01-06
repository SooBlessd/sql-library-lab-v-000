def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY id  "
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC limit 1 "
end


def select_value_and_count_of_most_prolific_species
  "SELECT species,COUNT(*) FROM characters GROUP BY species ORDER BY COUNT(*) DESC limit 1"
  # Find species in characters, then pull out text and count of the species with the most
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series ON author_id = authors.id INNER JOIN subgenres ON subgenre_id = subgenres.id  "
  # find authors name and subgenres from series and join with author and join with subgenre when the ids match and select name
  # find authors name and inner join on series with id, inner join new table with subgenres inner table
end


def select_character_names_and_number_of_books_they_are_in
   "SELECT name, COUNT(character_books.character_id) FROM characters JOIN character_books ON characters.id = character_books.character_id GROUP BY (characters.name) ORDER BY COUNT(character_books.book_id) DESC;"
end
