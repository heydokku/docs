- If you can, split your code into smaller chunks and load on the current page only those that are required. Code splitting is one of the most compelling features of Webpack and if it’s used correctly, can have a major impact on load time.

- Compression - If you use Webpack, you don’t need to worry too much about compression as Webpack automatically minimizes the bundled JavaScript code for production.

- Remove Render-Blocking JavaScript. You can use the defer attribute on your script tags to achieve this. The defer attribute tells the browser not to wait for the script and the script just loads “in the background”.

- Use Web Workers when you need to execute code that needs a lot of execution time. Web Workers allow script operation in a background thread separate from the main execution thread of a web application and you can avoid blocking the user interface thread this way.
