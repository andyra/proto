module.exports = (grunt) ->

  # Project configuration
  grunt.initConfig
    notify:
      sass:
        options:
          title: "Task Complete"
          message: "SASS finished compiling!"
    sass:
      dist:
        files:
          'assets/stylesheets/styles.min.css': 'assets/stylesheets/source/styles.scss'
        options:
          style: 'compressed'
          sourceMap: false
    watch:
      sass:
        files: [
          'assets/stylesheets/source/**/*.scss'
        ]
        tasks: ['sass']
        options:
          livereload: true

  # Load all Grunt tasks automatically
  require('load-grunt-tasks') grunt

  # Register tasks
  grunt.registerTask 'default', ['sass'];

  return
