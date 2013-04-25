#Remote Table
###Installing

Project dependencies:

* Ruby 1.9+
* Node.js and [Node packaged modules](https://npmjs.org/)
* Coffeelint: `npm install -g coffeelint`
* JSHint: `npm install -g jshint`

Installing the code quality pre-commit hook:

    ln -s ../../script/pre-commit .git/hooks/pre-commit

Run individual tests with:

    rake coffeelint
    rake jshint
    cane
    rspec spec

Or run them all with
    Rake
