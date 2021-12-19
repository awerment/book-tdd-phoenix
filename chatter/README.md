# Chatter

To be able to run the tests with `mix test`, you first need to configure the chrome driver for wallaby.
See `config/test.exs` file, in particular:

```elixir
config :wallaby, :chromedriver, path: "chromedriver"
```

Set the path option to where chromedriver can be found on your system and you're good to go. 

One note though: there's an issue with wallaby not being able to connect to chromedriver when too many tests are run concurrently, so you'll probably need to run the tests with `mix test --max-cases=1` or `mix test --trace`. This sadly disables concurrent test execution, but fixes the above issue.