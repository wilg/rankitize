# Rankitize

A quick and easy plugin to allow models to find their rank for a particular attribute.

For example, if you want to find the ranking of a particular user based on their score. ("You are #22 on the high score list!")

## Installation

Add to your Gemfile and run the `bundle` command to install it.

 ```ruby
 gem "rankitize"
 ```

**Requires Ruby 1.9.2 or later.**

## Usage

In your model, call rank_by and pass in a column name.

 ```ruby
 class User < ActiveRecord::Base
	rank_by :score
 end
 ```
You can then find the rank by calling {column name}_ranking.

 ```ruby
 @user.score_ranking
 ```
 
This gem is made to work with MySQL, which does not have a built in ranking function. It uses the technique mentioned here: http://arjen-lentz.livejournal.com/56292.html

## Development

Questions or problems? Please post them on the [issue tracker](https://github.com/supapuerco/rankitize/issues). You can contribute changes by forking the project and submitting a pull request. You can ensure the tests passing by running `bundle` and `rake`.

This gem is created by Wil Gieseler and is under the MIT License.