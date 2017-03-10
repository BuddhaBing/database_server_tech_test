# Database Server Tech Test

[![Build Status](https://travis-ci.org/treborb/database_server_tech_test.svg?branch=master)](https://travis-ci.org/treborb/database_server_tech_test)
[![codecov](https://codecov.io/gh/treborb/database_server_tech_test/branch/master/graph/badge.svg)](https://codecov.io/gh/treborb/database_server_tech_test)

#### Ruby v2.3.3
#### Sinatra

### [Makers Academy] (http://www.makersacademy.com) - Week 10 Solo Practice Tech Test

## Index
* [Installation] (#Install)
* [Tests] (#Tests)
* [Usage] (#Usage)

### The brief

You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code."

Create a new git repository and write code to fulfill the brief to the best of your ability. We will be looking for clean, well tested code in your choice of technology. In addition, the last sentence of the brief implies that you should consider how the code could easily be extended to add an as-yet-unknown data store.

## <a id="Install">Installation</a>

```
$ git clone https://github.com/treborb/database_server_tech_test.git
$ cd database_server_tech_test
$ bundle
```
## <a id="Usage">Usage</a>
```
$ rackup
$ curl "http://localhost:4000/set?somekey=somevalue"
$ curl "http://localhost:4000/get?key=somekey"
```

## Alternate usage
```
$ rackup
$ open "http://localhost:4000/set?somekey=somevalue"
$ open "http://localhost:4000/get?key=somekey"
```

## <a id=“Tests">Running the tests</a>
```ruby
$ rspec
```
