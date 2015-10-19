jade = require 'jade'

module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-shell'
  grunt.loadNpmTasks 'grunt-contrib-jade'

  grunt.initConfig
    coffee:
      frontend:
        options:
          sourceMap: true
        files: [
          expand: true
          cwd: "./app/coffee"
          dest: "build/js"
          src: [
            "**/*.coffee"
          ]
          ext: ".js"
        ]

    jade:
      frontend:
        options:
          pretty: true
          data:
            debug: false
        files:
          "build/html/layout.html": ["app/view/*.jade"]


  grunt.registerTask 'compile',
    ['coffee:frontend','jade:frontend']
