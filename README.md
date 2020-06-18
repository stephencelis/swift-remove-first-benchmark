# swift-remove-first-benchmark

Benchmarks `removeFirst()` against  `removeFirst(1)`:

``` sh
$ swift run -c release RemoveFirstBenchmark
name                                        time          std        iterations
-------------------------------------------------------------------------------
Substring.removeFirst()                          129.0 ns ± 265.34 %    1000000
Substring.removeFirst(1)                    96811347.0 ns ±   1.78 %         15
Substring.UnicodeScalarsView.removeFirst()       113.0 ns ± 340.45 %    1000000
Substring.UnicodeScalarsView.removeFirst(1) 22238287.0 ns ±   6.66 %         65
Substring.UTF8View.removeFirst()                 123.0 ns ± 292.96 %    1000000
Substring.UTF8View.removeFirst(1)                122.0 ns ± 344.80 %    1000000
Substring.UTF16View.removeFirst()                113.0 ns ± 297.23 %    1000000
Substring.UTF16View.removeFirst(1)               130.0 ns ± 267.82 %    1000000
```
