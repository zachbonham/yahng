# yahng - Yet Another Heroku Name Generator

My goto "hello world" level introduction to a new programming language, this time in [gleam](https://gleam.run).

[![Package Version](https://img.shields.io/hexpm/v/yahng)](https://hex.pm/packages/yahng)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/yahng/)

```sh
gleam add yahng
```
```gleam
import yahng

pub fn main() {
  let name = yahng.get_haiku_name()
  io.debug(name)

  // ie. witty-djinn
}
```

Further documentation can be found at <https://hexdocs.pm/yahng>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
```
