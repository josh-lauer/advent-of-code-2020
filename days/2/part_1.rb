#!/usr/bin/env ruby

INPUT_FILE_PATH = File.join(File.dirname(__FILE__), "input")

input = IO.readlines(INPUT_FILE_PATH).map(&:chomp)

valid_passwords = input.map { |i| i.split(' ') }.select do |policy_range, policy_char, password|
  Range.new(*policy_range.split('-').map(&:to_i)).include?(password.split('').count(policy_char[0]))
end

puts valid_passwords.size
