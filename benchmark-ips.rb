require 'benchmark'
    symbol = { :foo => "value" } 
    string = { "foo" => "value" }
    integer = { 1 => "value" } 
    Benchmark.benchmark do |x|
      x.report("Symbol") { symbol[:foo] }
      x.report("String") { string["foo"] }
      x.report("Integer") { integer[1] }
    end