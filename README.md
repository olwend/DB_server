# DB_server
Tech test Monday
Aim
---
To fulfill requirement with a clean well tested solution.

Approach
---------
My starting point is to understand and breakdown the required request-response cycle.

The user flow through the app is to return a value passed in as a key-value pair with http requests.

1. Server receives a request on ```http://localhost:4000/set?somekey=somevalue```
    ```get``` response will be ```statuscode 200 OK``` confirming /set exists
     ```post  somekey=somevalue``` to ```set```
2. Store the passed key and value in memory
    route to and set method will store
    ```set somekey=somevalue``` in a hash
3. Receives a request on ```http://localhost:4000/get?key=somekey```
    ```get value stored at somekey in hash```
4. Looks up via method get and returns value stored at ```somekey```
    response body contains value stored at ```somekey```
5. You will later need to add a database to this code
    use data mapper to create a table

Diagram to represent
--------------------
![request-response](https://github.com/olwend/DB_server/blob/master/request_response.jpg)

Choice of Technology
--------------------
ruby 2.3.3
httpie - spike and manual test e.g. check params.
Sinatra - receive and respond to HTTP requests.
DataMapper - database would use model 'datastore' as table

Installation
------------
```$ git clone https://github.com/olwend/DB_server
$ cd DB_server
$ rvm 2.3.3
$ bundle
$ ruby app.rb
```
Go to http://localhost:4000/
Amend URL string to set key and value http://localhost:4000/set?somekey=asomevalue=1
Return value with http://localhost:4000/get?somekey

Run tests with ```$rspec```
I used a TDD approach so have maintained 100% coverage.
After the test I decided I should try again using httpie, curl and output a file as database input.
