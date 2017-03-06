## Database server tech test
This is a practice a tech test given to me by Makers Academy to demonstrate my understanding of web technologies. It an actual tech test that was given to one of the coaches when they applied for a dev role.

### The brief

You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code."

Create a new git repository and write code to fulfill the brief to the best of your ability. We will be looking for clean, well tested code in your choice of technology. In addition, the last sentence of the brief implies that you should consider how the code could easily be extended to add an as-yet-unknown data store.

### Usage

```
$ git clone
$ cd database_server_tech_test
$ bundle
$ rackup
$ curl "http://localhost:4000/set?somekey=somevalue"
$ curl "http://localhost:4000/get?key=somekey"
```
