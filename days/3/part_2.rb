#!/usr/bin/env ruby

require_relative './tree_map.rb'
require_relative './traversal.rb'

INPUT_FILE_PATH = File.join(File.dirname(__FILE__), "input")
input = IO.readlines(INPUT_FILE_PATH, chomp: true)
tree_map = TreeMap.new(input)

traversals = [
  [1,1],
  [3,1],
  [5,1],
  [7,1],
  [1,2]
]

puts traversals.map { |traversal| Traversal.new(tree_map, *traversal).tree_count }.reduce(:*)