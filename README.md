Kevlar Email Button
===================

I had some issue creating buttons in email that would be consistent or at least look good across all email clients. Was noticing that using VML for all outlook clients wasn't working well for Outlook 2016 and Windows 10 Mail, but was working well for all other desktop Outlook clients. I had success with using CSS to style `a` tags to make buttons that were clickable, and didn't want to give that up to make the designs work in Outlook clients. So, I developed this button generator that runs in terminal using Ruby.

How to use it
-------------
First clone this repo to your local machine. Open terminal and change directory to where you cloned this repo. Type in ```
ruby kevlarbutton.rb
```
in your terminal and it will run. Answer the questions as you are prompted and then copy and paste the code in your email.

### Still Working On
- user input error handling
- would like to build an interface for this at some point
- continue to improve button rendering
