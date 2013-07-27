# OmniAuth 23AndMe

Unofficial OmniAuth strategy for [23andMe](https://www.23andme.com/).

## Usage

In your initializer:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twenty_three_and_me, ENV['23ANDME_KEY'], ENV['23ANDME_SECRET'], scope: 'basic genomes'
end
```

Or, if you're using Devise, in your `Devise.setup`:

```ruby
config.omniauth :twenty_three_and_me, ENV['23ANDME_KEY'], ENV['23ANDME_SECRET'], :scope => 'basic genomes'
```

The 23andMe API requires setting scopes for accessing different sorts of data. The "basic" one doesn't get you very far, "genomes" gets you the whole thing. More on scopes [here](https://api.23andme.com/docs/authentication/#scopes).

## Credits

Based on the exampe of [Intridea](https://github.com/intridea)'s [omniauth-github](https://github.com/intridea/omniauth-github).

## License

Copyright (c) 2013 Daniel Luxemburg

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
