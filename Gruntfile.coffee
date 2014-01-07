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
        "src/files/vendor/bootstrap/docs-assets"
        "src/files/vendor/bootstrap/examples"
        "src/files/vendor/bootstrap/_includes"
        "src/files/vendor/bootstrap/js"
        "src/files/vendor/bootstrap/_layouts"
        "src/files/vendor/bootstrap/less"
        "src/files/vendor/bootstrap/.bower.bower.json"
        "src/files/vendor/bootstrap/about.html"
        "src/files/vendor/bootstrap/bower.json"
        "src/files/vendor/bootstrap/browserstack.json"
        "src/files/vendor/bootstrap/CNAME"
        "src/files/vendor/bootstrap/components.html"
        "src/files/vendor/bootstrap/composer.json"
        "src/files/vendor/bootstrap/_config.yml"
        "src/files/vendor/bootstrap/CONTRIBUTING.md"
        "src/files/vendor/bootstrap/css.html"
        "src/files/vendor/bootstrap/customize.html"
        "src/files/vendor/bootstrap/DOCS-LICENSE"
        "src/files/vendor/bootstrap/getting-started.html"
        "src/files/vendor/bootstrap/Gruntfile.js"
        "src/files/vendor/bootstrap/index.html"
        "src/files/vendor/bootstrap/javascript.html"
        "src/files/vendor/bootstrap/LICENSE"
        "src/files/vendor/bootstrap/LICENSE-MIT"
        "src/files/vendor/bootstrap/package.json"
        "src/files/vendor/bootstrap/README.md"
        "src/files/fonts"
        "src/files/img"
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
          },
          {
            src: [
              "src/files/vendor/bootstrap/dist/fonts/*"
            ],
            dest: "src/files/vendor/bootswatch/fonts/"
            expand: true
            flatten: true
          },
          {
            src: "src/files/vendor/vegas/dist/images/loading.gif"
            dest: "src/files/vendor/images/loading.gif"
          },
          {
            src: [
              "src/files/vendor/font-awesome/fonts/*"
            ],
            dest: "src/files/fonts/"
            expand: true
            flatten: true
          },
          {
            src: [
              "src/files/vendor/blueimp-gallery/img/*"
            ],
            dest: "src/files/img"
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
            "src/files/vendor/blueimp-gallery/js/blueimp-gallery.js"
            "src/files/vendor/blueimp-gallery/js/jquery.blueimp-gallery.js"
            "src/files/vendor/blueimp-bootstrap-image-gallery/js/bootstrap-image-gallery.js"
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
            "src/files/vendor/blueimp-gallery/css/blueimp-gallery.min.css"
            "src/files/vendor/blueimp-bootstrap-image-gallery/css/bootstrap-image-gallery.min.css"
            "src/files/vendor/font-awesome/css/font-awesome.min.css"
            "src/files/vendor/vegas/dist/jquery.vegas.min.css"
            "src/files/app.css"
          ]

  grunt.loadNpmTasks "grunt-contrib-clean"
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-contrib-cssmin"

  grunt.registerTask "static", ["clean", "copy", "uglify", "cssmin"]
  grunt.registerTask "production", ["clean", "copy", "uglify", "cssmin"]
  grunt.registerTask "development", ["clean", "copy", "uglify", "cssmin"]

  grunt.registerTask "default", ["static"]
