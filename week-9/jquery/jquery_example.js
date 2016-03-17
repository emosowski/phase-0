// U3.W9:JQuery


// I worked on this challenge [ with: Alana Farkas ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
headElement = $('head')
mascot = $("h1:contains('Mascot')")
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements


$( "h1:contains('Hello.')" ).css({"color": "red", "border": "3px solid blue", "visibility": "visible"})

$( "h1:contains('My')" ).html("Rock Doves");

//RELEASE 4: Event Listener
  // Add the code for the event listener here

  $('img').on('mouseenter', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://naturemappingfoundation.org/natmap/photos/birds/rock_dove_4064np.jpg')
  }).on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  });
//RELEASE 5: Experiment on your own

$('div img').mouseenter(function () {
    $(this).css({border: '0 solid #f37736'}).animate({
        borderWidth: 4
    }, 500);
}).mouseleave(function () {
     $(this).animate({
        borderWidth: 0
    }, 500);
});



})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*

What is jQuery?

jquery is a JavaScript library.

What does jQuery do for you?

It makes things like HTML document traversal and manipulation, event handling, animation, and Ajax much simpler with an easy-to-use API that works across a multitude of browsers.

What did you learn about the DOM while working on this challenge?

I learned that there are even more uses for the DOM than I previously thought.

*/