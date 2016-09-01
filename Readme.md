# Substrings

Implement a method #substrings that takes a word as the first argument and then
an array of valid substrings (your dictionary) as the second argument. It should
return a hash listing each substring (case insensitive) that was found in the
original string and how many times it was found.

After thinking about this project, I decided to create a hash with the
dictionary. This will allow me to store a value for the number of times each
word appears and increment it easily. The word that is provided can be parsed
into it's constituent fragments and searched for using the hash. If found, the
value associated with the matching key is incremented by one. If not, we move on
to the next word fragment. When a sentence is provided, it is broken into it's
constituent words and placed into an array which can be interated upon.

This project is an [assignment for the Ruby Programming section](http://www.theodinproject.com/ruby-programming/building-blocks) of [The Odin Project](http://www.theodinproject.com)