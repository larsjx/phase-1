# Ruby Drill Accessor Methods

##Learning Competencies

* Use instance variables and accessor methods effectively
* Work with objects in Ruby

##Summary

 Ruby provides a handy shortcut for creating *accessor methods*.  Read [this Stack Overflow answer](http://stackoverflow.com/questions/5046831/why-use-rubys-attr-accessor-attr-reader-and-attr-writer) on how they work.

##Releases

###Release 0
Read over the Ruby program provided until you understand the basic structure. You can load it into IRB or [PRY](http://pryrepl.org/) and play around with it if you'd like.

Do not change the code, just write tests for each of the methods in Company and Employee. We'll use these tests as _regression tests_ in Release 1. They'll ensure that our refactor doesn't change the behavior of our classes.

###Release 1 : Replace with attr_helpers
Identify which methods could be replaced with an `attr_reader`, `attr_writer`, or `attr_accessor` helper and do it.

This is a refactor that doesn't change behavior, so you shouldn't need to change your tests in this release. In fact, they'll alert you to any mistakes you make in the refactor.

##Resources

* [Ruby Accessor Methods](http://stackoverflow.com/questions/5046831/why-use-rubys-attr-accessor-attr-reader-and-attr-writer)
