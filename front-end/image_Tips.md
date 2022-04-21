I believe that oversized images are the most common issue that appears in Lighthouse Performance reports. Here are some key things you should always remember:

- Try to always serve your images in the actual size they are rendered on the page.

-Try to avoid scaling them in CSS. You could waste a lot of loading time when you load large photos for tiny avatar pics etc.

- Use proper file types. If possible, use modern web formats, such like webP.

- Use CDN (Content Delivery Network) to serve your images and static files where possible.

- Webpack with url-loader allows you to inject images directly into markup as base64 strings. You can set a file size limit behind which it will work. You can save a lot of time on decreasing the number of requests to the server so it’s well worth using it.
