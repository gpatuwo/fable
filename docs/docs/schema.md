# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
email           | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique


## vegetables
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null
description | string    |
start_date  | integer   | not null
end_date    | integer   | not null


## recipes
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
ingredients | text      | not null
instructions| text      | not null
author_id   | integer   | not null, foreign key (references users), indexed


## tags (can do without? same as vegetables)
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null

## taggings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
recipe_id   | integer   | not null, foreign key (references recipes), indexed, unique [tag_id]
veg_id      | integer   | not null, foreign key (references vegetables...maybe tags?), indexed
