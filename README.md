# Searchit  
Terminal Based Search Customizer

[What?](#what-is-Searchit) - [Why?](#why-we-need-Searchit) -
[Install](#how-to-install-Searchit) - [Report And Feedback](#report-and-feedback) - [Contact](#contact)
### What Is Searchit?
Searchit is a software what allows you to make customized internet searches from your terminal. Currently Searchit provides support for 9 browsers and 30 websites.

### Why We Need Searchit?
![Searchit](https://i.ibb.co/CwYVshJ/gifout.gif"Searchit")

If you are a linux user, you might find yourself working in terminal quit a lot (and its very good). Now imagine how many times you had to search something and you had to leave your terminal, open your browser, go to a specific site, search whatever you wanted to search.
Also You may use various search filters to narrow down your search result.
But with Searchit you don't even have to leave your terminal for a quick internet search. Just type a command and Searchit will automatically open your browser, go to the specific site, apply filters, and search it for you.
Some Examples:

```bash
# search for "python" images in google
searchit -ggl -img python
# search for "apple" videos in duckduckgo
searchit -ddg -vid apple
# search for "pewdiepie" channels in youtube
searchit -ytb -cnl pewdiepie
# search for "ip camera" exploits in shodan
searchit -sdn -exp ip camera
```
Also you can select a default search site. And then you can just type "searchit" then your search query and Searchit will automatically search it in your default search site

Example: If you selected your default search site "google", then you can just type this.

```Bash
searchit xCommunicado
# it will automatically search "xCommunicado" in google
searchit iron man
# it will automatically search "iron man" in google
```
For **terminal only situations** like server or workstation.You can combine Searchit with terminal based text browsers like [W3m](http://w3m.sourceforge.net/), [Links](http://www.jikos.cz/~mikulas/links//), [Lynx](https://lynx.browser.org/) and browse the internet inside your terminal. Searchit provides supports for these 3 text based web browsers. Just set your desire one as default browser and you are good to go.

Last but not least for **too much shortcut lovers** Searchit also has two predefined custom commands for instant search in Google and DuckDuckGo.
And Yes "duckit" and "googleit" has filters too.

```Bash
duckit -img burger
# it will search burger images in duckduckgo
googleit -vid pizza
# it will search pizza videos in google
```
I Will add more website support for Searchit in near future.
And I will publish changes as rolling release.
Now you know why you need Searchit.

### How To Install Searchit?

There are 4 small steps to follow:
1. Download Searchit From Github
1. Go To Your Downloaded Directory
1. Open Terminal And Type
```Bash
./installer.sh
```
1. Then Just Simply Follow The Process

`Note: For installation Searchit required superuser privileges.
`

### Rolling Release

Searchit is a "Rolling Release" Software. It means Searchit will receive updates as soon as it has new updates or bugfix or any other minor changes.
Searchit's version system work like this
`v(Major Changes).(Bugfix/NewFeature).(Minor Changes)`
`Ex: v2.3.1`

**Minor Changes** counts as usual. But everything time a **Bugfix/Feature** update comes **Minor Changes** number gets a refresh. Similarly When a **Major Change** comes both **Bugfix/Feature** and **Minor Changes** number gets a refresh.


### Report And Feedback

For report any issue visit Searchit's on [github](https://github.com/xSomoy/SearchitTerminal). Please read [Contributing Guide Line](https://github.com/xSomoy/SearchitTerminal/blob/master/CONTRIBUTING.md). It will guide you to submit a report or issue properly.


### Contact

For personal and business purpose you can contact me directly.

[Twitter](https://twitter.com/xSomoy) - [Github](https://github.com/xSomoy) - [Faceboook](https://www.facebook.com/somoy666) - [Email](mailto:mailtoSearchit@gmail.com)


## Copyright © 2024 TENET [ [Mushphyqur Rahman](https://xsomoy.github.io/about/) ]

## Thank You !!

<table aligh="center">
  <tr>
    <td>Total Visits</td>
    <td><img src="https://profile-counter.glitch.me/xsomoy/count.svg" alt="xSomoy" /></td>
  </tr>
</table>
