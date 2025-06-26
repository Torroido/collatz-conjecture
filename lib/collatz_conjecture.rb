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
  end
end
