# swift-remove-first-benchmark

Benchmarks `removeFirst()` against  `removeFirst(1)`:

``` sh
$ swift run -c release RemoveFirstBenchmark
name                                        time          std        iterations
-------------------------------------------------------------------------------
String.removeFirst()                        81679174.0 ns ±   1.64 %         16
String.removeFirst(1)                       81369569.0 ns ±   2.42 %         17
Substring.removeFirst()                          132.0 ns ± 274.18 %    1000000
Substring.removeFirst(1)                    93850715.0 ns ±   2.25 %         15
Substring.UnicodeScalarView.removeFirst()        109.0 ns ± 241.26 %    1000000
Substring.UnicodeScalarView.removeFirst(1)  18106959.0 ns ±   5.49 %         66
Substring.UTF8View.removeFirst()                 117.0 ns ± 313.89 %    1000000
Substring.UTF8View.removeFirst(1)                118.0 ns ± 287.76 %    1000000
Substring.UTF16View.removeFirst()                108.0 ns ± 323.84 %    1000000
Substring.UTF16View.removeFirst(1)               126.0 ns ± 330.52 %    1000000
```
