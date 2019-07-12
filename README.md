# W7D5 - Lecture

- Nested Resources

# typical show page for a movie

`/movies/4`

# a typical list of comments

`/reviews`

However, a review cannot exist without a movie. So we need a nested routes like the following.

# reviews of movie with id 4

`/movies/4/reviews/`

# add reviews to movie app

- create a Review model with a migration
- run the migration
- set the routes (new, create)
- Create a reviews controller
- Modify the show view of movie

# routes for reviews

- Create the nested route in `routes.rb`

```ruby
  resources :movies do
    resource :reviews
  end
```

- `/movies/:movie_id/reviews/new` Display the new review form
- `/movies/:movie_id/reviews` Post to create a new review in the database
- `/movies/:movie_id/reviews/:id/` Show page of a review

* Delete a review

`DELETE /movies/:movie_id/reviews/:id`

## Running the app

- clone the repo
- bundle install
- `rake db:reset`
- `rails s -b 0.0.0.0`
