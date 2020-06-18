import Benchmark
import Foundation

let string = String(repeating: " ", count: 10_000_000)

benchmark("String.removeFirst()") {
  var s = string
  s.removeFirst()
}
benchmark("String.removeFirst(1)") {
  var s = string
  s.removeFirst(1)
}
benchmark("Substring.removeFirst()") {
  var s = string[...]
  s.removeFirst()
}
benchmark("Substring.removeFirst(1)") {
  var s = string[...]
  s.removeFirst(1)
}
benchmark("Substring.UnicodeScalarView.removeFirst()") {
  var s = string[...]
  s.unicodeScalars.removeFirst()
}
benchmark("Substring.UnicodeScalarView.removeFirst(1)") {
  var s = string[...]
  s.unicodeScalars.removeFirst(1)
}
benchmark("Substring.UTF8View.removeFirst()") {
  var s = string[...]
  s.utf8.removeFirst()
}
benchmark("Substring.UTF8View.removeFirst(1)") {
  var s = string[...]
  s.utf8.removeFirst(1)
}
benchmark("Substring.UTF16View.removeFirst()") {
  var s = string[...]
  s.utf16.removeFirst()
}
benchmark("Substring.UTF16View.removeFirst(1)") {
  var s = string[...]
  s.utf16.removeFirst(1)
}

Benchmark.main()
