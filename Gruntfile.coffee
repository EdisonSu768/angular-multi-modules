module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-shell'

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
      compile:
        options:
          data:
            debug:false
        files:
          "build/html": ["app/view/*.jade"]

  grunt.registerTask 'compile',
    ['coffee:frontend']
