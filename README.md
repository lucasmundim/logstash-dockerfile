# logstash-dockerfile

[Logstash][1] is a tool for managing events and logs.

## How to use this image

#### Configtest

`docker run --rm -it lucasmundim/logstash --configtest`

#### Use your own config

`docker run --rm -it -v $(pwd)/logstash.conf:/logstash.conf lucasmundim/logstash`

## Build it locally

`docker build -t lucasmundim/logstash .`

## Contributing

1. Fork it
2. Checkout the develop branch (`git checkout -b develop`)
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

## License

This application is distributed under the [MIT License][2].

[1]: https://www.elastic.co/products/logstash
[2]: https://en.wikipedia.org/wiki/MIT_License
