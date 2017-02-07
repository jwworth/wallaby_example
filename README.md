# WallabyExample

This is a sample app for a
[talk](https://www.meetup.com/ChicagoElixir/events/237255274) I'm giving at the
[Chicago Elixir Meetup](https://www.meetup.com/ChicagoElixir).

The goal of this application is to demonstrate an integration test with Phoenix and Wallaby.
The test:

- Visits users index page
- Asserts we are on the users index page
- Clicks a link to create a new user
- Asserts we are on the user form
- Fills in the form
- Submits the form
- Asserts we are on the users index page
- Asserts our new user is there

### Slides

The slides for this talk are available [here](https://github.com/jwworth/talks/tree/master/integration-testing-phoenix-with-wallaby).

### Setup

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

### Contributing

1. [Fork](https://help.github.com/articles/fork-a-repo/) it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Bug reports and pull requests are welcome on GitHub at
https://github.com/jwworth/wallaby_example.

### License

This application is released under the [MIT License](http://www.opensource.org/licenses/MIT).
