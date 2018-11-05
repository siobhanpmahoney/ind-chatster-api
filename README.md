## *Note*: This project houses the backend code for [Chatster](https://chatster-app.herokuapp.com/login). Please refer to this [repo](https://github.com/siobhanpmahoney/heroku-chatster-frontend) for the project's frontend code and installation instructions.

# Chatster.

Desktop chat application featuring real-time message delivery and search and filtering tools that optimize accessibility to chats, message history, and friends.

## Demo

A video demo of Chatster is available on [YouTube](https://www.youtube.com/watch?v=EXL_lkLJs6M).

Interested in giving Chatster a try? Great! Try out the [live app](https://chatster-app.herokuapp.com/login)!

## Usage and Features

Chatster is desktop instant messaging app with messages are delivered in real-time and multiple tools for the user to access chats, friends, message history.

## Backend Prerequisites

* Ruby on Rails 5
* PostgreSQL
* [Action Cable](https://github.com/rails/rails/tree/master/actioncable)

## Backend Installation Instructions

After cloning this repo, first run the Rails server:

1.

```
cd chatster-app-api
bundle install
```

2. Database installation:

```
rake db:create
rake db:migrate
rake db:seed
```

3. Run Rails server:

```
rails s
```

## License


The MIT License (MIT)

Copyright (c) 2018 Siobhan Mahoney

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
