# RELEASE 0 - MAKE A PLAN
* Look up what jQuery is used for.
* Look up syntax.
* Look up documentation.
* Look up resources/cheat-sheets to review jQuery.

# RELEASE 1 - STUDY UP
* The most effective strategies were to go to the jQuery page and read their tutorials on jQuery effects and events. Reading MDN documentation is also recommended.

## jQuery
* Look up what jQuery is used for
    - jQuery is a fast, small, and feature-rich JavaScript library.
    - HTML DOM traversal and manipulation, event handling, animation, and Ajax (asynchronous JavaScript and XML) is made much simpler wtih an easy-to-use API (application programming interface) that works across a multitude of browsers.
    - AJAX is the use of the XMLHttpRequest object to communicate with server-side scripts.

    - There are several ways to start using jQuery on your website. You can:
        + Download the jQuery library from jQuery.com
        + Include jQuery from a CDN (content delivery/distribution network - a globally distrubuted network of proxy servers deployed in multiple data centers; the goal of a CDN is to serve content to end-users with high availability and high performance), like Google

* Look up syntax
    - With jQuery, you select (query) HTML elements and perform "actions" on them.
    - Basic syntax is $(selector).action()
        + A $ sign to define/access jQuery (can also use jQuery, $ is an alias for jQuery because it is shorter and faster to write).
        + A (selector) to "query (or find)" HTML elements
            * jQuery uses CSS syntax to select elements.
        + A jQuery action() to be performed on the elements. 
    - Having jQuery methods inside a document ready event: $(document).ready(function() { jQuery methods go here... } ); prevents any jQuery code from running before the document is finished loading (is ready).
        + An even shorter methods for the document ready event: $(function() { jQuery methods... } ); use the syntax you prefer.
    - jQuery selectors allow you to select and manipulate HTML element(s) - they are based on the existing CSS Selectors and have some of their own custom selectors.
        + All selectors in jQuery start with the dollar sign and parentheses: $().
            +  The jQuery element selector selects elements based on the element name. Example: $("p") selects all <p> elements on a page.
            + The jQuery #id selector uses the id attribute of an HTML tag to find the specific element. An id should be unique within a page. To find an element with a specific id, write a hash character, followed by the id of the HTML element. Example: $("#test")
            + More jQuery selectors: $("*") selects all elements; $(this) selects the current HTML element; $("p.intro") selects all <p> elements with class="intro"; $("p:first") selects the first <p> element; $("ul li:first") selects the first <li> element of the first <ul> element; $("ul li:first-child") selects the first <li> element of every <ul>; $("[href]") selects all elements with an href attribute; $("tr:even") or "odd" selects all even/odd <tr> elements;
    - jQuery is tailor-made to respond to events (the precise moment when something happens) in an HTML page.
        + common DOM events: Mouse, Keyboard, Form, Document/Window
            +  Mouse Events: click, dblclick, mouseenter, mouseleave
            + Keyboard Events: keypress, keydown, keyup
            + Form Events: submit, change, focus, blur
            + Document/Window Events: load, resize, scroll, unload
        + In jQuery, most DOM events have an equivalent jQuery method.
            + To assign a click event to all paragraphs on a page: $("p").click();
            + The next step is to define what should happen when the event fires. You must pass a function to the event: $("p").click(function() {action goes here});
        + Commonly used jQuery event methods: 
            + $(document).ready() allows us to execute a function when the document is fully loaded; 
            + click() method attaches an event handler function to an HTML element and the function is executed when the user clicks on the HTML element; 
            + the mousedown() method executes a function when the left, middle or right mouse button is pressed down, while the mouse is over the HTML element; mouseup() is executed when the button is released; 
            + hover() takes two functions and is acombination of the mouseenter() and mouseleave() methods, with the first function executed when the mouse enters the HTML element and the second function is executed when the mouse leaves the HTML element;
            + the on() method attaches one or more event handlers for the selected elements;
            + 

* Look up jQuery documentation
    - https://api.jquery.com/
    - https://github.com/jquery/jquery
    - https://developers.google.com/speed/libraries/
        + The Google Hosted Libraries is a stable, reliable, high-speed, globally available content distribution network for the most popular, open-source JavaScript libraries.
        + One big advantage of using the hosted jQuery from Google or Microsoft is that many users already have downloaded jQuery from Google or Microsoft when visiting another site. As a result, it will be loaded from cache when they visit your site, which leads to faster loading time. Also, most CDN's will make sure that once a user requests a file from it, it will be served from the server closest to them, which also leads to faster loading time.
    - https://developer.mozilla.org/en-US/docs/AJAX/Getting_Started
        + AJAX basics
    - Find a cheat sheet for jQuery

* Look up resources to learn jQuery/refreshers/quick-tutorials
    - Scripts in <head> : Scripts to be excecuted when they are called, or when an event is triggered, are placed in functions; put your functions in the head section, this way they are all in one place, and they do not interfere with page content.
    - Scripts in <body> : If you don't want your script to be placed inside a function, or if your script should write page content, it should be placed in the body section.
    - Place library script such as the jQuery library in the head section.
    - Place normal script in the head unless it becomes a performance/page load issue.
    - Place script associated with included, within and at the end of that include.
    - Place script that impacts the render of the page at the end of the body (before body closure).
    - Do NOT place script in the markup; better to put it in event handlers in your script body instead.
    - If you cannot decide, put it in the head until you have a reason not to such as page blocking issues.
    - https://learn.jquery.com/
    - http://www.w3schools.com/jquery/jquery_intro.asp
    - https://js.foundation/projects/