## Page-flow

* Default → …/views/recommendations/summary.html.haml
  * No user → /auth/github
  * No team → …/views/teams/change.html.haml

#### …/views/recommendations/summary.html.haml
* Shows:
  * User info
  * Team info
  * Recommendation info
  * Links to examples
* Actions
  * Change team → teams/change → …/views/teams/change.html.haml
  * Logout

#### …/views/teams/change.html.haml
* Shows
  * Username, etc.
  * Table of existing teams
* Actions
  * Select your team
  * Modify a team → teams/edit → …/views/teams/edit.html.haml
  * Create a team → teams/new → …/views/teams/new.html.haml


## OAuth

OmniAuth for GitHub: [github.com/intridea/omniauth-github](https://github.com/intridea/omniauth-github)

**Basic Usage** (adapted from [README](https://github.com/intridea/omniauth-github/blob/master/README.md))

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: ""
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
