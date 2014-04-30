Dev Notes
==


Rails test env setup

- Guard (automation)
- Spork (speed up tests)

Gemfile setup

```
gem 'guard-rspec'
gem 'spork-rspec'

```

run

``` bundle exec guard init rspec ```

- add  ```require 'active_support/inflector' ```

- add the key-value pair ``` all_after_pass: false ```
to speed up R-G-R

Spork
==

-after install, run

```bundle exec spork --bootstrap```


Editing spec/spec_helper.rb
- add

```
require 'rubygems'
require 'spork'
```

- run
``` time bundle exec rspec spec/features/***.rb to get time for testing overhead```

- add ``` --drb   ``` to .rspec file


Now run ```guard init spork ````

tadaa!!!


Setup SublimeText for testing
==
Visit:

(sublime-text-2-ruby-tests)[https://github.com/maltize/sublime-text-2-ruby-tests]

(rails_tutorial_sublime_text)[https://github.com/mhartl/rails_tutorial_sublime_text]

(hartl)[http://www.railstutorial.org/book/static_pages#top]


