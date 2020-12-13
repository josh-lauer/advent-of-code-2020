#!/usr/bin/env ruby

INPUT_FILE_PATH = File.join(File.dirname(__FILE__), "input")

input = IO.readlines(INPUT_FILE_PATH, chomp: true).map(&:chomp)

valid_passwords = input.map { |i| i.split(' ') }.select do |positions, policy_char, password|
  password.chars.values_at(*positions.split('-').map { |n| n.to_i - 1 }).count(policy_char[0]) == 1
end

puts valid_passwords.size
