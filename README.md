# Instruction

This README would normally document whatever steps are necessary to get the
application up and running.



* Ruby '2.7.0'

* Redis, Rabbitmq

* Install and run redis, rabbitmq

* Change the database creds in config/database.yml

* rails db:create, rails db:migrate

* rails s

* Run the sneakers workers: WORKERS=PostsWorker rake sneakers:run

* Tests suit is not covered yet.

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

### The idea is to know how event driven architecture works.This application publishes the posts to Rabbitmq
### when created and upon publishing the subscriber receives the newly created posts by *Sneakers workers.
### This application works as both publisher and subscriber in real world they would be different