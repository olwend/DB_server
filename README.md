# DB_server
Tech test Monday
Aim
---
To fulfill requirement with a clean well tested solution.

Approach
---------
My starting point is to understand and breakdown the required request-response cycle.

The user flow through the app is defined:

1. Server receives a request on ```http://localhost:4000/set?somekey=somevalue```
2. Store the passed key and value in memory
3. Receives a request on ```http://localhost:4000/get?key=somekey```
4. Returns value stored at ```somekey```
5. You will later need to add a database to this code

Diagram to represent
--------------------

Choice of Technology
--------------------


Installation
------------
Tests
-----
By trying ```http://localhost:3000/set?``` on a localhost server I made earlier
I understand I need to define a route /set. This will be my first test.
