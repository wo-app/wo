# wo

CLI and Ruby client for [wo server](https://github.com/wo-app/wo-server)

Instration
----------

Add this line to your application's Gemfile:

    gem 'wo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wo

Also, copy following

#### case of zsh

```
eval "$(wo hook zsh)"
```

#### case of bash

TODO

Usage
-----

```sh
# Create a .wo file in current repository
wo init

# Print doings in organization
wo doings
```

Screen shot
-----------

![1__tmux](https://cloud.githubusercontent.com/assets/189824/8511157/c318f19c-2345-11e5-9c10-6dfceeeffd62.png)

Test
----

```
bundle exec rspec
```
