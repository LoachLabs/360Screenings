###
# This file is part of 360 Screenings.
#
# (c) Rob Loach (http://robloach.net)
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
###

# Expose `Gruntfile`.


module.exports = (grunt) ->

  # Create the banner for the stylesheet and JavaScript files.
  banner = "/*! <%= pkg.description %> v<%= pkg.version %> | <%= pkg.license %> License | <%= pkg.author %> */\n"

  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    uglify:
      options:
        banner: banner
      min:
        src: "src/files/components/build.js"
        dest: "src/files/components/build.min.js"

    cssmin:
      options:
        banner: banner
      min:
        files:
          "src/files/components/build.min.css": ["src/files/components/build.css"]

  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-contrib-cssmin"

  grunt.registerTask "default", ["uglify", "cssmin"]
