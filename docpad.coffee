module.exports = {
  templateData:
    site:
      url: "http://360screenings.com"
      title: "360 Screenings"
      description: """
        360 Screenings provides a cinematic experience that audiences not only watch but also become a part of through live theatre installations.
        """

      # The website keywords (for SEO) separated by commas
      keywords: """
        Toronto, 30 Screenings, film, theatre
        """

      # The website's styles
      styles: [
        'components/build.css'
      ]

      # The website's scripts
      scripts: [
        'components/build.js'
      ]


    # -----------------------------
    # Helper Functions

    # Get the prepared site/document title
    # Often we would like to specify particular formatting to our page's title
    # we can apply that formatting here
    getPreparedTitle: ->
      # if we have a document title, then we should use that and suffix the site's title onto it
      if @document.title
        "#{@document.title} | #{@site.title}"
      # if our document does not have it's own title, then we should just use the site's title
      else
        @site.title

    # Get the prepared site/document description
    getPreparedDescription: ->
      # if we have a document description, then we should use that, otherwise use the site's description
      @document.description or @site.description

    # Get the prepared site/document keywords
    getPreparedKeywords: ->
      # Merge the document keywords with the site keywords
      @site.keywords.concat(@document.keywords or []).join(', ')
}
