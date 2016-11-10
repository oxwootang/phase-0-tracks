# 9.1 Release 1 - Research Web Servers

## What are some of the key design philosophies of the Linux operating system?
* The Linux operating system, in comparison to other operating systems, allows any and all users the same amount of "computing power." In other words, other systems such as Windows and Mac provide a Graphical User Interface that defines the power the user has over what a computer can do. In Linux, the user is granted the power to tell the computer to do anything you tell it it to, as long as you have the techincal know-how.
* There are 9 major tenents to the Linux philosophy:
    1. Small is beautiful
    2. Each program does one thing well
    3. Prototype as soon as possible
    4. Choose portability over efficiency
    5. Store data in flat text files
    6. Use software leverage
    7. Use shell scripts to increase leverage and portability
    8. Avoid captive user interfaces
    9. Make every program a filter

## What is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
* A VPS is a virtual machine sold as a service by an Internet hosting service. A VPS runs its own copy of an operating system, and customers may have full user access to that operating system instance. A VPS is a type of web hosting server where hosting is done by dividing a main physical server into multiple virtual servers. A VPS may be cheaper than a physical server and is much more easily created and configured. 

## Why is it considered a bad idea to run programs as the root user on a Linux system?
* For security reasons, it is best to run applications on a user-level and leave the root user for administrative tasks. You would't want an application's crash to cause a crash in the rest of the system. It is about access.