# 9.1 Release 0 - View HTTP Requests

## What are some common HTTP status codes?
* 200 OK
* 302 Found
* 307 Temporary Redirect
* 400 Bad Request
* 401 Unauthorized
* 403 Forbidden
* 404 Not Found
* 410 Gone
* 500 Internal Server error

## What is the difference between a GET request and a POST request? When might each be used?
* The POST method/verb request is used to Create new resources. When you use POST, you create a subordinate resource - subordinate to some other [Parent] resource. So you POST to a Parent resource and this new resource is associated ewith the Parent. 
* The GET method/verb request is used to Read or retrieve a representation of a resource. GET requests are used only to read data, and not change it. When used this way, they are considered safe.

## What is a cookie?
* An HTTP Cookie is usually a small text file, given ID tags that are stored on your computer's browser directory or program data subfolders, sent from a website while the user is browsing. 
* Cookies were designed to be a reliable mechanism for websites to remember stateful information or to reocrd the user's browsing activity. They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, etc. 
* Other kinds of cookies perform essential functions. Authenication Cookies are the most common method used by web servers to know whether the user is logged in or not, and which account they are logged in with.
* There are two types of cookies: session cookies and persistent cookies. 
    * Session Cookies are created temporarily in your browser's subfolder while you are visiting a website; once you leave the site, the session cookie is deleted.
    * Persistent Cookies remain in your browser's subfolders and are activated again once you visit the website that created that particular cookie. A persistent cookie remains in the browser's subfolders for the duration period set within the cookie's file.
* Cookie files typically contain:
    - The name of the server the cookie was sent from
    - The lifetime of the cookie
    - A value - usually a randomly generated unique number
    * The website server which sent the cookie uses this number to recognise you when you return to a site or browse from page to page; only the server that sent a cookie can read, and therefore use, that cookie.

