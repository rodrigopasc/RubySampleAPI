# Ruby Sample API

[![CircleCI](https://circleci.com/gh/rodrigopasc/RubySampleAPI/tree/master.svg?style=svg&circle-token=ceaf2302411f540f3f6a9a48cf422c41c1fd7b46)](https://circleci.com/gh/rodrigopasc/RubySampleAPI/tree/master)

Boilerplate for a Ruby API.
> This is just a concept.

<p align="center">
  <img src="https://dab1nmslvvntp.cloudfront.net/wp-content/uploads/2014/07/1406392741200px-Ruby_logo.svg.png" width="15%" alt="Microservices" />
</p>

## Summary

- [Briefing](#briefing)
- [Architecture](#architecture)
  - [Main API](#main-api)
  - [GitHub](#github)
  - [CI](#ci)
  - [Logger Microservice](#logger-microservice)
- [Requirements](#requirements)
- [Setup](#setup)
- [Available Routes](#available-routes)
- [Gems](#Gems)

## Briefing
Assuming the goal is to build a robust and reliable API that meets the standards of [REST](https://restfulapi.net), this project is a boilerplate for your project.

The project was made with MySQL for the database, Sidekiq with Redis for running processes in the background and Rspec for running tests.

## Architecture
* #### Main API
  * You can create, read, find, update and delete products.
* #### GitHub
  - [auto-add-label](https://github.com/marketplace/auto-add-label)
  - [Code Dog Auto Merge](https://github.com/marketplace/auto-merge)
  - [Depfu](https://github.com/marketplace/depfu)
  - [Task List Completed](https://github.com/marketplace/task-list-completed)
* #### CI
  - [CircleCI](http://circleci.com)
* #### [Logger Microservice](https://github.com/rodrigopasc/zaptalkloggermicroservice)
  * Suggestion: Implement a serverless logger microservice to store everything on [MongoDB](http://mongodb.com) or [DynamoDB](https://aws.amazon.com/dynamodb/). Something like this [sample](https://github.com/rodrigopasc/zaptalkloggermicroservice).

## Requirements
- Ruby >= 2.6.3
- MySQL >= 8
- Redis >= 5.0.5

## Setup
* Copy `.env.sample`, update with your information and rename it to `.env`.
* Copy `config/database.yml.sample`, update with your information and rename it to `database.yml`.
* Install the dependencies by running: `$ bundle`.
* Setup the database by running: `$ rails db:create && rails db:migrate`
* Seed the development database. Run: `$ rails db:seed`
* Run _rspec_ tests: `$ rails rspec`
* Start the server with `$ rails s` and make sure _Redis_ is running.

## Available Routes

| HTTP Method | Path | Description | Params | HTTP Responses |
| --- | --- | --- | --- | --- |
| POST | `/auth` | Authentication sign in. | **username**:string *required*, **password**:string *required* | 200, 400, 401 |
| GET | `/api/products` | Returns all products. |  | 200, 401 |
| POST | `/api/products` | Creates a new product. | **name**:string *required*, **description**:string | 201, 400, 401 |
| GET | `/api/products/:id` | Returns a specific product. | | 200, 401, 404 |
| PATCH/PUT | `/api/products/:id` | Updates a specific product. | **name**:string *required*, **description**:string | 200, 401, 404, 422 |
| DELETE | `/api/products/:id` | Destroys a specific product. | | 204, 401, 404 |


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
