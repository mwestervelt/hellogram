# Hellogram

## About
Inspired by Instagram, Hellogram was a chance to get comfortable with building a fully functional social media site using Ruby on Rails. I was also able to add a local file upload from the web app, which *the real Instagram doesn't have*. 

## Features
- Users can sign up or login from the homepage and have a user profile page
- Users can edit their user details and upload a profile image from their profile page
- Users can upload photos directly from their device to the photo feed
- Posts have descriptions, which can include hashtags, as well as comments
- Hashtags are searchable from the searchbar
- Users can comment on any post as long as they are logged in, and delete their own comments

## Made With
- Ruby on Rails (Rails 5.2.2)
- Postgres database
- Custom CSS and Bootstrap
- ActiveStorage for file upload
- Devise gem for authentication/authorization

## Screenshots
![homepage](/hellogram/public/screenshots/home.png "Homepage")
![search page](/hellogram/public/screenshots/search.png "Search")
![one post](/hellogram/public/screenshots/one-post.png "One Photo")

## Installation
```
bundle install
rails db:migrate
rails s
```
open localhost://3000

## To do
- Add likes to posts
- Add followers/followees to user model (currently hardcoded)
- Add photo URL option for posts in addition to file upload
