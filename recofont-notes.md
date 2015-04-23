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

----

Aha!  What you get back is from GitHub detailed on [Auth Hash Schema](https://github.com/intridea/omniauth/wiki/Auth-Hash-Schema).

**Selected summary**

* `provider` (required) - The provider with which the user authenticated (e.g. 'twitter' or 'facebook')
* `uid` (required) - An identifier unique to the given provider. Should be stored as a string.
* `info` (required) - A hash containing information about the user
  * `name` (required) - The best display name known to the strategy.
  * `email`
  * `nickname`
  * `first_name`
  * `last_name`
  * `urls` - A hash containing key value pairs of an identifier for the website and its URL. For instance, an entry could be `"Blog" => "http://intridea.com/blog"`
* `credentials`
* `extra` - Contains extra information returned from the authentication provider.
 
I dunno if we'll get and email from GitHub or not.  It's not required.  If you request `scope: "user:email"`, it gives you all the user's emails, including private ones, and I don't want the latter.

----

## Authorized users

For security, we should probably pre-define the GitHub ID's that are authorized.

uid       | login
----------|--------------
170719    | "karlstolley"
10054112  | "profstolley"
10679896  | "avelazq1"
3185208   | "huesitos"
8574294   | "jhignight"
5863302   | "mfreema5"
6386800   | "nsoparaw"
5012820   | "sicueft"
8630916   | "thedanmartin"
8679001   | "YishanHuang"

So, on click-through from landing page, not only check if `uid` exists, make sure it's in this hash:
```
{ "170719", "10054112", "10679896", "3185208", "8574294", "5863302", "6386800", "5012820", "8630916", "8679001" }
```
BTW, that list is missing four users, as far as I can tell.  Maybe check with Karl?

