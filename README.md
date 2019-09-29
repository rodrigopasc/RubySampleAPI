# Ruby Sample API

Boilerplate for a Ruby API.
> This is just a concept.

<p align="center">
  <img src="https://dab1nmslvvntp.cloudfront.net/wp-content/uploads/2014/07/1406392741200px-Ruby_logo.svg.png" width="15%" alt="Microservices" />
</p>

## Briefing
Assuming the goal is to build a robust and reliable API that meets the standards of [REST](https://restfulapi.net), this project is a boilerplate for your project.

The project was made with _MySQL_ for the database, _Sidekiq_ with _Redis_ for running processes on background and a [Error Logger Microservice] to store all the errors into an instance of _MongoDB_.

## Architecture
* **Main API**
  * It all starts here where in this example you are able to create, read, find, update and delete products.
* [Error Logger Microservice](https://github.com/rodrigopasc/LoggerMicroservice)
  * Receive error log and then persists on [MongoDB](http://mongodb.com).

## Requirements
- Ruby >= 2.6.3
- MySQL >= 8
- Redis >= 5.0.5

## Setup
* Copy `.env.sample`, update with your information and rename it to `.env`.
* Copy `config/database.yml.sample`, update with your information and rename it to `database.yml`.
* Install the dependencies by running: `$ bundle`.
* Setup the database by runnying: `$ rails db:create && rails db:migrate`
* Seed the development database. Run: `$ rails db:seed`
* Start the server with `$ rails s` and make sure _Redis_ is running.

## Gems
* [attr_extras](https://rubygems.org/gems/attr_extras)
* [bcrypt](https://rubygems.org/gems/bcrypt)
* [dotenv-rails](https://rubygems.org/gems/dotenv-rails)
* [ffaker](https://rubygems.org/gems/ffaker)
* [factory_bot_rails](https://rubygems.org/gems/factory_bot_rails)
* [jwt](https://rubygems.org/gems/jwt)
* [mysql2](https://rubygems.org/gems/mysql2)
* [redis](https://rubygems.org/gems/redis)
* [rspec-rails](https://rubygems.org/gems/rspec-rails)
* [rubycritic](https://rubygems.org/gems/rubycritic)
* [sidekiq](https://rubygems.org/gems/sidekiq)
* [sidekiq-cron](https://rubygems.org/gems/sidekiq-cron)
* [shoulda-matchers](https://rubygems.org/gems/shoulda-matchers)
