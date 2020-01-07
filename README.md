# README

## Installation
- install Ruby 2.7.0 - for RBenv: `rbenv install 2.7.0` if 2.7.0 is not avalible run: `brew update && brew upgrade ruby-build`
- `gem install bundler`
- `bundle install`
- `yarn install`

#### Additional
Ruby 2.7 is throwing depreciation warnings for gems not yet updated. If you want to silence these run in console:
`export RUBYOPT='-W:no-deprecated -W:no-experimental'`
