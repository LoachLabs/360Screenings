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

    clean:
      dev: [
        "src/files/vendor/bootswatch/2"
        "src/files/vendor/bootswatch/amelia"
        "src/files/vendor/bootswatch/api"
        "src/files/vendor/bootswatch/assets"
        "src/files/vendor/bootswatch/bower_components"
        "src/files/vendor/bootswatch/cerulean"
        "src/files/vendor/bootswatch/cosmo"
        "src/files/vendor/bootswatch/custom"
        "src/files/vendor/bootswatch/default"
        "src/files/vendor/bootswatch/flatly"
        "src/files/vendor/bootswatch/global"
        "src/files/vendor/bootswatch/help"
        "src/files/vendor/bootswatch/journal"
        "src/files/vendor/bootswatch/readable"
        "src/files/vendor/bootswatch/simplex"
        "src/files/vendor/bootswatch/slate"
        "src/files/vendor/bootswatch/spacelab"
        "src/files/vendor/bootswatch/tests"
        "src/files/vendor/bootswatch/united"
        "src/files/vendor/bootswatch/.bower.json"
        "src/files/vendor/bootswatch/.gitignore"
        "src/files/vendor/bootswatch/.travis.yml"
        "src/files/vendor/bootswatch/bower.json"
        "src/files/vendor/bootswatch/CNAME"
        "src/files/vendor/bootswatch/composer.json"
        "src/files/vendor/bootswatch/favicon.ico"
        "src/files/vendor/bootswatch/Gruntfile.js"
        "src/files/vendor/bootswatch/index.html"
        "src/files/vendor/bootswatch/package.json"
        "src/files/vendor/bootswatch/README.md"
        "src/files/vendor/font-awesome/src"
        "src/vendor/bootstrap/docs-assets"
        "src/vendor/bootstrap/examples"
        "src/vendor/bootstrap/fonts"
        "src/vendor/bootstrap/_includes"
        "src/vendor/bootstrap/js"
        "src/vendor/bootstrap/_layouts"
        "src/vendor/bootstrap/less"
        "src/vendor/bootstrap/.bower.bower.json"
        "src/vendor/bootstrap/about.html"
        "src/vendor/bootstrap/bower.json"
        "src/vendor/bootstrap/browserstack.json"
        "src/vendor/bootstrap/CNAME"
        "src/vendor/bootstrap/components.html"
        "src/vendor/bootstrap/composer.json"
        "src/vendor/bootstrap/_config.yml"
        "src/vendor/bootstrap/CONTRIBUTING.md"
        "src/vendor/bootstrap/css.html"
        "src/vendor/bootstrap/customize.html"
        "src/vendor/bootstrap/DOCS-LICENSE"
        "src/vendor/bootstrap/getting-started.html"
        "src/vendor/bootstrap/Gruntfile.js"
        "src/vendor/bootstrap/index.html"
        "src/vendor/bootstrap/javascript.html"
        "src/vendor/bootstrap/LICENSE"
        "src/vendor/bootstrap/LICENSE-MIT"
        "src/vendor/bootstrap/package.json"
        "src/vendor/bootstrap/README.md"
      ]

    copy:
      dev:
        files: [
          {
            src: [
              "src/files/vendor/bootstrap/dist/fonts/*"
            ],
            dest: "src/files/fonts/"
            expand: true
            flatten: true
          }
        ]

    uglify:
      options:
        banner: banner
      dev:
        files:
          "src/files/vendor/build.min.js": [
            "src/files/vendor/jquery/jquery.min.js"
            "src/files/vendor/bootstrap/dist/js/bootstrap.min.js"
            "src/files/vendor/vegas/dist/jquery.vegas.min.js"
            "src/files/app.js"
          ]

    cssmin:
      options:
        banner: banner
      dev:
        files:
          "src/files/vendor/build.min.css": [
            "src/files/vendor/bootswatch/cyborg/bootstrap.min.css"
            "src/files/vendor/font-awesome/css/font-awesome.min.css"
            "src/files/vendor/vegas/dist/jquery.vegas.min.css"
            "src/files/app.css"
          ]

  grunt.loadNpmTasks "grunt-contrib-clean"
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-contrib-cssmin"

  grunt.registerTask "default", ["clean", "copy", "uglify", "cssmin"]
