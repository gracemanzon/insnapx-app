# InSnapx

A portfolio app for retro camera lovers developed with full-stack Rails. Using the Nylas gem visitors can schedule consultations with artists and artists can connect their Google calendars to let their patrons know what upcoming events and conventions they will be attending.

- Full-stack Ruby on Rails RESTful API with MVC architecture
- User authentication using bcrypt gem
- Index and show views utilizing the jbuilder gem and Bootstrap framework
- Google calendar based scheduling and agenda component from Nylas gem

![screenshot](/assets/insnapx-preview2.png)

## Installation

- ruby 3.1.2
- rails 7.0.4
- gem "jbuilder"
- gem "bcrypt", "~> 3.1.7"
- gem "nylas"

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

## Roadmap

- Change calendar integration
- Comment model belonging to each post
- Photographer/Model account types
