# Channeltest

## Brief introduction
This is a simple real-time application to showcase the power of Channels in Elixir/Phoenix. Channel applications use socket which clients connect to send and / or receive message. When you run this application and open the app in several tabs, you will notice that updating content of one tab equally updates the content of the rest tables in real-time. This is the power of Channels in Elixir/Phoenix.

## How to run the application

To start your Phoenix server:

  * Clone the application `git clone git@github.com:sylnit/channeltest.git`
  * cd channeltest
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
