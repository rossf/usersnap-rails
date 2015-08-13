# UsersnapRails

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'usersnap_rails'
```

And then execute:

    $ bundle install

## Usage
Add to your app/assets/javascripts/application.js
```
//= require usersnap_rails
```

Add to your app/assets/stylesheets/application.css
```
*= require usersnap_rails
```

Or if your css manifest file is .scss
```
@import "usersnap_rails";
```

On the pages where the Usersnap-widget should appear, add an element with the ID "include-usersnap-widget".
```
<div id="include-usersnap-widget"></div>
```
If you want it to appear an all pages, add it to app/views/layouts/application.html.erb.
If you want to make the Usersnap widget available only to specific users, you can write something like this:
```
<% if current_user.is_allowed_to_report_bug? %>
<% end %>
```

The positioning of the element doesn't influence where the Usersnap-widget will appear.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/usersnap_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
