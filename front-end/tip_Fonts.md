
Fonts

Custom web fonts kill performance. I could stop here, but I know it’s hard to avoid using custom fonts as most websites nowadays use them. To save some time, you can serve web fonts from the same origin as the web site itself to eliminate the TLS negotiation time. It’s worth mentioning about FOIT (Flash of Invisible Text). This is when a browser renders invisible text until the font loads! It's a good idea to get your text rendering under control with the front-display CSS property.
