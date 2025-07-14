# README
#---------------------------------------------------------------------------------------------------

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby 3.1.2p20
rails 7.1.5

* System dependencies
Sidekiq 7.3.9

* Configuration

* Database used - postgres

* Database creation
rails db:create

* Database initialization
rails db:migrate

#---------------------------------------------------------------------------------------------------

Assumption - All pets are vaccinated by default on creation, we can expire vaccination with API

#---------------------------------------------------------------------------------------------------
API -

Petwatch

#---------------------------------------------------------------------------------------------------

Petwatch List API -
GET
http://localhost:3000/pets

#---------------------------------------------------------------------------------------------------

Petwatch CREATE API
POST
http://localhost:3000/pets

Request Headers
Content-Type - application/json

Body - raw (json)
{
  "pet": {
    "name": "Tommy",
    "breed": "Bulldog",
    "age": 5
  }
}

#---------------------------------------------------------------------------------------------------

Petwatch expire_vaccination API
PATCH
http://localhost:3000/pets/1/expire_vaccination

Request Headers
Content-Type - application/json

#---------------------------------------------------------------------------------------------------

Petwatch DELETE API
DELETE
http://localhost:3000/pets/2

#---------------------------------------------------------------------------------------------------

Petwatch Update API
PATCH
http://localhost:3000/pets/3/

Body -raw (json)
{
  "pet": {
    "name": "My Tommy",
    "breed": "Bulldog",
    "age": 5
  }
}

#---------------------------------------------------------------------------------------------------

Specific Pet details API

GET
http://localhost:3000/pets/3/

#---------------------------------------------------------------------------------------------------

Sidekiq output -

2025-07-14T08:35:09.479Z pid=7276 tid=9zs class=VaccinationMailerJob jid=a31f21c8e88f2f3e184d94bc INFO: Simulated email: Vaccination for Puppy has expired.
2025-07-14T08:35:09.479Z pid=7276 tid=9zs class=VaccinationMailerJob jid=a31f21c8e88f2f3e184d94bc elapsed=0.145 INFO: done

#---------------------------------------------------------------------------------------------------
