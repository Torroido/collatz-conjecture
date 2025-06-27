# frozen_string_literal: true

require_relative "collatz_conjecture/version"

module CollatzConjecture
  class Error < StandardError; end

  class Solver
    def self.solve(input)
      raise ArgumentError, "Input must be a positive integer" unless input.is_a?(Integer) && input > 0
      
      sequence = [input]
      while input != 1
        input = input.even? ? input / 2 : input * 3 + 1
        sequence << input
      end
      sequence
    end

    def self.plot(n, height: 20, symbol: "*")
      sequence = solve(n)
      max_value = sequence.max
      scaled = sequence.map { |v| (v.to_f / max_value * (height - 1)).round }

      grid = Array.new(height) { Array.new(sequence.size, " ") }
      scaled.each_with_index do |y, x|
        grid[height - 1 - y][x] = symbol
      end

      grid.each_with_index do |row, idx|
        y_label = ((height - 1 - idx) * max_value / (height - 1)).round.to_s.rjust(4)
        puts "#{y_label} | #{row.join}"
      end

      puts "     +" + "-" * sequence.size
      puts "      " + (0...sequence.size).map { |i| (i % 10).to_s }.join
    end
  end
end
