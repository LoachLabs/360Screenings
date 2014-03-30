---
webpack: true
---
var $ = require('script!./vendor/jquery/dist/jquery.js');
var bootstrap = require('script!./vendor/bootstrap/dist/js/bootstrap.js');
var gallery = require('script!./vendor/blueimp-gallery/js/blueimp-gallery.js');
var jquerygallery = require('script!./vendor/blueimp-gallery/js/jquery.blueimp-gallery.js');
var imageGallery = require('script!./vendor/blueimp-bootstrap-image-gallery/js/bootstrap-image-gallery.js');
var vegas = require('script!./vendor/vegas/dist/jquery.vegas.js');

$ = jQuery;
jQuery(document).ready(function() {

  /**
   * Uniiverse Integration
   */
  if ($('.unii-listing-button').length > 0) {
    $.ajaxSetup({
      cache: true
    });
    $.getScript('https://www.uniiverse.com/embed.js');
  }

  /**
   * The Slideshow.
   */
  backgroundList = [
    {
      src: "/images/background1.jpg",
      fade: 4000,
    },
    {
      src: "/images/background2.jpg",
      fade: 4000,
    },
    {
      src: "/images/background3.jpg",
      fade: 4000,
    },
    {
      src: "/images/background4.jpg",
      fade: 4000,
    },
    {
      src: "/images/background5.jpg",
      fade: 4000,
    },
    {
      src: "/images/background6.jpg",
      fade: 4000,
    },
    {
      src: "/images/background7.jpg",
      fade: 4000,
    },
    {
      src: "/images/background8.jpg",
      fade: 4000,
    },
    {
      src: "/images/background9.jpg",
      fade: 4000,
    },
    {
      src: "/images/background10.jpg",
      fade: 4000,
    }
  ];

  // Randomize the order.
  backgroundList.sort(function() {
    return Math.round(Math.random()) - 0.5;
  });

  // Display the slideshow.
  $.vegas('slideshow', {
    backgrounds: backgroundList,
    delay: 10000
  });

  // Set the overlay.
  $.vegas('overlay', {
    src: '/vendor/vegas/dist/overlays/06.png'
  });

});
