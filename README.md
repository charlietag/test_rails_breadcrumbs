# README
* Try rails breadcrumbs

## Packages

* Ruby version
  * 2.7.0

* Rails version
  * 6.0.3.3

## Basic setup
* Gems - useful for dev
  * gem 'pry-rails', :group => :development
  * gem 'bullet', group: 'development'

* Package - usefule for html form generation
  * `gem 'simple_form'`
  * `rails generate simple_form:install --bootstrap`

* jQuery
  * yarn add jquery
    * {project_name}/app/javascript/packs/application.js

      ```bash
      import "jquery/src/jquery"
      ...
      ```

* bootstrap
  * yarn add bootstrap popper.js (don't add popper v2, bootstrap default requires v1.16) , (no need to import popper.js manually, bootstrap will do it automatically)
    * app/javascript/packs/application.js
      * `import "bootstrap/dist/js/bootstrap"`
    * app/assets/stylesheets/application.css
      * `*= require 'bootstrap/dist/css/bootstrap'`

## Rails setup

* generate scaffold
  * `bin/rails g scaffold Book name:string author:string`
  * `bin/rails g scaffold Config name:string value:string`


## config - credential

* command
  * `EDITOR=vim bundle exec rails credentials:edit`

    ```bash
    development:
      db:
        user: user
        pass: pass

    production:
      db:
        user: user
        pass: pass
    ```

* config/database.yml

  ```bash
  default: &default
    adapter: mysql2
    encoding: utf8mb4
    pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
    username: <%= Rails.application.credentials[Rails.env.to_sym][:db][:user] %>
    password: <%= Rails.application.credentials[Rails.env.to_sym][:db][:pass] %>
    socket: /var/lib/mysql/mysql.sock

  development:
    <<: *default
    database: {project_name}_development

  test:
    <<: *default
    database: {project_name}_test

  production:
    <<: *default
    database: {project_name}_production
  ```

* Create database
  * `bundle exec rails db:create`

## Changes
* https://github.com/charlietag/test_rails_breadcrumbs/compare/v0.0.0...v0.0.1
  * Basic config and setup
    * `gem 'simple_form'`

* https://github.com/charlietag/test_rails_breadcrumbs/compare/v0.0.1...v0.0.2
  * Start trying ~~breadcrumbs_on_rails~~ ***gretel (gem)***
    * Add record (new)
      ![gretel_new](/screenshots/gretel_new.png)
    * Show record (show)
      ![gretel_show](/screenshots/gretel_show.png)
    * Edit record (edit)
      ![gretel_edit](/screenshots/gretel_edit.png)
    * List records (index)
      ![gretel_index](/screenshots/gretel_index.png)

## Note
* Gem
  * https://github.com/charlietag/test_rails_breadcrumbs
