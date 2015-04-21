## OAuth

OmniAuth for GitHub: [github.com/intridea/omniauth-github](https://github.com/intridea/omniauth-github)

**Basic Usage** (from [README](https://github.com/intridea/omniauth-github/blob/master/README.md))

```ruby
use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end
```

Add to Gemfile:
```ruby
gem 'omniauth'
gem 'omniauth-github'
```

----

Other possibly useful pages:

* [Rails and OmniAuth](https://github.com/RailsApps/rails-omniauth/blob/master/README.textile)
* [OmniAuth: Standardized Multi-Provider Authentication](https://github.com/intridea/omniauth/blob/master/README.md)
* [OmniAuth Wiki](https://github.com/intridea/omniauth/wiki)
* [Rails: An Omniauth Github Tutorial](http://natashatherobot.com/rails-omniauth-github-tutorial/)
* [How to Use Omniauth to Authenticate your Users](http://code.tutsplus.com/articles/how-to-use-omniauth-to-authenticate-your-users--net-22094)
