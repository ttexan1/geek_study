## 第一回
* bundle gems
* explanation and set up of gems
  - jquery => application.js
  - bootstrap => application.scss
  - slim => `for i in app/views/**/*.erb; do erb2slim $i ${i%erb}slim && rm $i; done`
  - simple_form => `rails g simple_form:install`
  - devise => `rails g devise:install`
  - annotate => `rails g annotate:install`
  - kaminari => `rails g kaminari:config`
* think models
* make models(only user&owner)
* set up controller and routing
* create top page
## 第二回
* make other models
* slim and sass, flash,
* model method
* error handling
