#!/usr/bin/env ruby

require_relative './tree_map.rb'
require_relative './traversal.rb'

INPUT_FILE_PATH = File.join(File.dirname(__FILE__), "input")
input = IO.readlines(INPUT_FILE_PATH, chomp: true)

tree_map = TreeMap.new(input)
traversal = Traversal.new(tree_map, 3, 1)
puts traversal.tree_count