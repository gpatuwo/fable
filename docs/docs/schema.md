# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique

## vegetables
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null
description | text      |
jan         | boolean   | not null
feb         | boolean   | not null
mar         | boolean   | not null
apr         | boolean   | not null
may         | boolean   | not null
jun         | boolean   | not null
jul         | boolean   | not null
aug         | boolean   | not null
sep         | boolean   | not null
oct         | boolean   | not null
nov         | boolean   | not null
dec         | boolean   | not null
image       | image     |

## recipes
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
image       | string    | not null
ingredients | text      | not null
instructions| text      | not null
author_id   | integer   | not null, foreign key (references users), indexed

## taggings (deprecated)
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
recipe_id   | integer   | not null, foreign key (references recipes), indexed
veg_id      | integer   | not null, foreign key (references vegetables), indexed
tag_name    | string    | not null

## comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
body        | text      | not null
recipe_id   | integer   | not null, foreign key (references recipes) indexed
user_id     | integer   | not null, foreign key (references users) indexed
