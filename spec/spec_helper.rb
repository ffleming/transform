require 'codeclimate-test-reporter'
require 'byebug'
require 'pry-byebug'

SimpleCov.start do
  formatter SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    CodeClimate::TestReporter::Formatter
  ])
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'transform_tree'
