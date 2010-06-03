require 'benchmark'
Benchmark.bm do |x|
  x.report("baseline") {}
  x.report("require rubygems") {require 'rubygems'}
  x.report("require bundler") {require 'bundler'}
  x.report("Bundler.require(:benchmark)") {Bundler.require(:benchmark)}
end
