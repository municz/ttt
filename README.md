ttt
===
[![Build Status](https://travis-ci.org/municz/ttt.png?branch=master)](https://travis-ci.org/municz/ttt)
[![Coverage Status](https://coveralls.io/repos/municz/ttt/badge.png)](https://coveralls.io/r/municz/ttt)

Simple repo for testing testing

Usage
-----

```ruby
# gem install bundler
# bundle install
# irb -I lib

ttt = TicTacToe.new([["X", "X", "X"],
                     ["O", "O", "_"],
                     ["O", "_","_"]])

ttt.winner # => "X"
```

To run tests:

```
rake test
```

