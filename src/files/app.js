$(function() {
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
  /*$.vegas('slideshow', {
    backgrounds: backgroundList,
    delay: 6000
  });*/

  // Set the overlay.
  $.vegas('overlay', {
    src: '/vendor/vegas/dist/overlays/06.png'
  });
});
