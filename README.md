# chardet

Crystal bindings for freedesktop.org's [uchardet](https://www.freedesktop.org/wiki/Software/uchardet/).

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     chardet:
       github: elebow/chardet.cr
   ```

1. Run `shards install`

## Usage

```crystal
require "chardet"

# ...

Chardet.detect(unknown_bytes)
# {encoding: "UTF-8"}
```

The only public interface is `Chardet.detect(Bytes)`. It will return a hash with
a single element:

- `encoding` (`String`) – The detected encoding of the byte stream

Future versions of uchardet are likely to provide additional fields (see <https://gitlab.freedesktop.org/uchardet/uchardet/-/issues/5#note_474963>).

## Contributing

1. Fork it (<https://github.com/elebow/chardet.cr/fork>)
1. Create your feature branch (`git checkout -b my-new-feature`)
1. Commit your changes (`git commit -am 'Add some feature'`)
1. Push to the branch (`git push origin my-new-feature`)
1. Create a new Pull Request

## Contributors

- [Eddie Lebow](https://github.com/elebow) - creator and maintainer
