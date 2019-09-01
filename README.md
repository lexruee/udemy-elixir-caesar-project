# Caesar

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `caesar` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:caesar, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/caesar](https://hexdocs.pm/caesar).

## Running from the shell

```
mix run -e 'Caesar.main(["encrypt", "abc", "--shift", "1"])'
```


## Running from iex

```
iex -S mix
Caesar.main(["encrypt", "abc", "--shift", "1"])
Caesar.Cipher.encrypt("abc", "1")
```

## Running the escript app

```
./caesar encrypt abc --shift 1
```

## Running tests

```
mix test
```

## Generate Doc

```
mix docs
```
