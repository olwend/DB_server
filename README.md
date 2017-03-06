# DB_server
Tech test Monday
Aim
---
To fulfill requirement with a clean well tested solution.

Approach
---------
My starting point is to understand and breakdown the required request-response cycle.

The user flow through the app is to return a value passed in as URL parameters

1. Server receives a request on ```http://localhost:4000/set?somekey=somevalue```
    ```get``` ```post  somekey=somevalue ``` to ```set``
2. Store the passed key and value in memory
    ```set somekey=somevalue``` in a hash
3. Receives a request on ```http://localhost:4000/get?key=somekey```
    ```get value stored at somekey in hash```
4. Returns value stored at ```somekey```
    response body contains value stored at ```somekey```
5. You will later need to add a database to this code
    use data mapper to create a table

Diagram to represent
--------------------
![request-response](https://github.com/olwend/DB_server/blob/master/request_response.jpg)

Choice of Technology
--------------------
I am using httpie to spike and understand the challenge more. 


Installation
------------
Tests
-----
By trying ```http://localhost:3000/set?``` on a localhost server I made earlier
I understand I need to define a route /set. This will be my first test.
