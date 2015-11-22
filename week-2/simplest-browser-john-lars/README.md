# World's Simplest Browser

##Learning Competencies

- Use Net::HTTP to download and read html pages
- Use the Nokogiri gem to scrape information
- Identify and implement classes based on real world requirements
- Create well-defined classes with a single responsibility

##Summary

We're going to build the simplest web browser in the world.  It will work like this:

```text
$ ruby browser.rb
url> http://www.cnn.com/2013/02/06/travel/private-jets/index.html
Fetching...
Title: 'Redneck' speed freak buys super-fast jet
Content length: 10,123 characters
Links:
  http://whatever.com/something.html
  etc..
  etc..
```

We'll be using Ruby's built-in [Net::HTTP](http://ruby-doc.org/stdlib-1.9.3//libdoc/net/http/rdoc/Net/HTTP.html) library to fetch the page and then using [Nokogiri](http://nokogiri.org/) to parse the HTML the page returns.

We want you to start getting familiar with how the web works.  Everything your program does a browser has to do too.

### Release 0: Basic Toy Browser

#### Listing the Responsibilities

Start by listing the core responsibilities of your app.  Some of these responsibilities include:

- Displaying a prompt for the user
- Parsing user input
- Fetching a web page
- Extracting the relevant information from the web page
- Displaying the relevant information in a user-friendly way
- *etc.*

There are more&mdash;make sure you list them out!  Next, group these responsibilities into "concerns".  Prompting a user for input and taking the appropriate action might be one concern, for example.  Fetching a URL and returning an easy-to-display data structure might be another.

#### Toy Code

Get familiar with the [Net::HTTP](http://ruby-doc.org/stdlib-1.9.3//libdoc/net/http/rdoc/Net/HTTP.html) module.  Here's a good [Net::HTTP cheatsheet](http://www.rubyinside.com/nethttp-cheat-sheet-2940.html) to help you.

Write some toy code and fetch some web pages. What kind of objects do `Net::HTTP` methods return? Your program shouldn't expose those objects directly, it should use them internally (in classes) to achieve your goals.

### Release 1: Object-Oriented Browser

A `Page` and `Browser` class are provided. Look at both classes, instructions are included in the comments.

You'll be writing more methods than the ones already present. Break this problem down into small pieces — what do you need to accomplish? How can you make a collection of small methods that work together to achieve your goals? Make sure you think critically about separation of concerns and responsibility — what methods belong where?

You should write tests for the Page object functionality in page_spec.rb

##Optimize Your Learning
- Read up on [Separation of Concerns](http://en.wikipedia.org/wiki/Separation_of_concerns).
- What responsibilities does your program have to fulfill?  What classes do you need to fulfill those responsibilities?
- Where are the boundaries between the classes &mdash; how do they communicate with each other?

##Resources
- [Net::HTTP](http://ruby-doc.org/stdlib-1.9.3/libdoc/net/http/rdoc/Net/HTTP.html)
- [Net::HTTP cheatsheet](http://www.rubyinside.com/nethttp-cheat-sheet-2940.html)
