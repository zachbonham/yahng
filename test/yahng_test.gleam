import gleam/string
import gleeunit
import gleeunit/should
import yahng

pub fn main() {
  gleeunit.main()
}

pub fn yahng_test() {
  let has_name =
    yahng.get_haiku_name()
    |> string.length
    > 1

  has_name |> should.be_true
}

pub fn has_separator_test() {
  yahng.get_haiku_name()
  |> string.contains("-")
  |> should.be_true
}
