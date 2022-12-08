# frozen_string_literal: true

require 'rake'
require_relative "lib/array_stack_ds/version"

Gem::Specification.new do |spec|
  spec.name = "array_stack_ds"
  spec.version = ArrayStackDS::VERSION
  spec.authors = ["Adhithya Rajasekaran"]
  spec.email = ["adhithyan15@gmail.com"]

  spec.summary = "An array based Stack data structure library"
  spec.description = "A simple array backed Stack data structure library. It is written purely in Ruby"
  spec.homepage = "https://github.com/adhithyan15/learning/tree/main/code/packages/ruby/array_stack_ds"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata = {
    "bug_tracker_uri"   => "https://github.com/adhithyan15/learning/tree/main/code/packages/ruby/array_stack_ds/issues",
    "changelog_uri"     => "https://github.com/adhithyan15/learning/tree/main/code/packages/ruby/array_stack_ds/CHANGELOG.md",
    "documentation_uri" => "https://github.com/adhithyan15/learning/tree/main/code/packages/ruby/array_stack_ds/",
    "homepage_uri"      => "https://github.com/adhithyan15/learning/tree/main/code/packages/ruby/array_stack_ds/",
    "source_code_uri"   => "https://github.com/adhithyan15/learning/tree/main/code/packages/ruby/array_stack_ds",
    "wiki_uri"          => "https://github.com/adhithyan15/learning/tree/main/code/packages/ruby/array_stack_ds/wiki"
  }

  spec.files = FileList['lib/array_stack_ds.rb', 'lib/**/*.rb']
  spec.require_paths = ["lib"]
  spec.add_development_dependency "rubocop", '~> 1.39.0'
  spec.add_development_dependency "rake", "~> 13.0"
end
