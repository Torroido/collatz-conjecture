# frozen_string_literal: true

# Add lib to load path so version file can be required
$LOAD_PATH.unshift(File.expand_path("lib", __dir__))
require "collatz_conjecture/version"

Gem::Specification.new do |spec|
  spec.name          = "collatz_conjecture"
  spec.version       = CollatzConjecture::VERSION
  spec.authors       = ["Torroido"]
  spec.email         = ["parthpatkiezio@gmail.com"]

  spec.summary       = "Collatz conjecture execution gem"
  spec.description   = "A simple gem that returns the full chain of numbers generated while executing the Collatz conjecture."
  spec.homepage      = "https://github.com/Torroido/collatz_conjecture"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  # Optional metadata
  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   = "https://github.com/Torroido/collatz_conjecture"
  spec.metadata["changelog_uri"]     = "https://github.com/Torroido/collatz_conjecture/blob/main/CHANGELOG.md"

  # Files to include in the gem
  spec.files = Dir.glob("lib/**/*") + %w[
    README.md
    LICENSE.txt
    CHANGELOG.md
  ]

  # Directory to require files from
  spec.require_paths = ["lib"]

  # Optional: if you add CLI support
  # spec.bindir = "bin"
  # spec.executables = ["collatz_conjecture"]
end
