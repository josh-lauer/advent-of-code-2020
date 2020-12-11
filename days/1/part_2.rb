#!/usr/bin/env ruby

INPUT_FILE_PATH = File.join(File.dirname(__FILE__), "input")

numbers = IO.readlines(INPUT_FILE_PATH).map(&:to_i)
pair = numbers.combination(3).detect { |c| c.sum == 2020 }
puts pair.inject(:*)
