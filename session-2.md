# TRY RAILS
- https://dog.ceo/dog-api/

## Before we start
- Install sqlite3
- Install nodejs
- Install rails
- In the terminal:
```
rails new --skip-test --database=sqlite3 dog
cd dog
bundle exec rails db:create db:migrate
bundle exec rails server
```
- Goto http://localhost:3000 on your browser

## Let's change the homepage of your webapp
### Bootstraping
- Create a controller
```
❯ bundle exec rails generate controller pages
Running via Spring preloader in process 86204
      create  app/controllers/pages_controller.rb
      invoke  erb
      create    app/views/pages
      invoke  helper
      create    app/helpers/pages_helper.rb
      invoke  assets
      invoke    scss
      create      app/assets/stylesheets/pages.scss
```
- Create a HTML (app/views/pages/index.html.erb)
- Update your routes
- In routes.rb
```ruby
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
end
```
- Goto http://localhost:3000 on your browser again
- What is it showing?
- Why?

### Fun part
- Open the new HTML file (app/views/pages/index.html.erb) in the editor
- Add an image tag
	- Hint: src="https://static.spin.com/files/140819-taylor-swift-earl-sweatshirt-shake-it-off-640x423.png"
- Add a button that reload the page (and fetch a new image)

## List all the breeds

## Fetch an image for all the breeds
