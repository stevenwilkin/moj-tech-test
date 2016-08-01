# The task

You need to put together a simple web application that can produce anagrams of words.

* You will be provided with a list of words to use
* Non-alphanumeric characters should be considered as part of the anagram (e.g. "he's" is not an anagram of "she")
* The application should be able to respond to a request made every second
* Assume that the application will be hosted on heroku

# Details

The application should be able to receive an HTTP GET request with the requested word as the path. It should return the results as JSON. See the example below:

	GET /crepitus
	{"crepitus":["cuprites","pictures","piecrust"]}
 
 
	GET /crepitus,paste
	{"crepitus":["cuprites","pictures","piecrust"],"paste":["pates","peats","septa","spate","tapes","tepas"]}
 
 
	GET /sdfwehrtgegfg
	{"sdfwehrtgegfg":[]}

# Prerequisites

* [Bundler]
* [Ruby 2.3.1][Ruby]

# Installation

```sh
$ bundle
```

# Usage

## Running tests

```sh
$ rspec
```

## Running application

```sh
$ rackup
```

## Example

```sh
$ curl 0.0.0.0:9292/piecrust
{"piecrust":["crepitus","cuprites","pictures"]}
```


[bundler]: http://bundler.io
[ruby]: http://www.ruby-lang.org/en
