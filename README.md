# Junglist

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

Added features:

- Admin namespaced dashboard allowing for creation and destruction of products, categories and sales from within the application
  -Secure authenticated login for users
- Emailed order receipts when user logged in
- Rspec automated testing
-

# Stack:

- [Ruby on Rails](https://rubyonrails.org/)

## Testing

- [rspec](https://rspec.info/)
- [Capybara](https://github.com/teamcapybara/capybara)

# Screenshots

### Main Page

![Main Page](url)

### Main Page

(w/ [Dark Reader](url))

![Main Page](url)

### Order Placed Page

![Order Placed](url)

_### Emailed Receipt (Stretch)_

![Emailed Receipt Placed](url)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
