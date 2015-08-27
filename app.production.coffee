css_pipeline = require 'css-pipeline'
roots_yaml = require('roots-yaml')

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    css_pipeline(files: 'assets/css/*.scss', out: 'css/build.css', minify: true, hash: true)
    roots_yaml
      source: 'data'
  ]
