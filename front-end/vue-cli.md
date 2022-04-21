### Features

- This is an interactive process

- Internally, Vue CLI uses Webpack, but the configuration is abstracted and we don’t even see the config file in our folder. You can still access it by calling `vue inspect`

- Once you create a project with the CLI, you can go and tweak the configuration, without having to eject your application (like you’d do with create-react-app).


// prepare the project for deployment
// generate the resulting JavaScript files in the dist/ folder,
`vue build`

Vue CLI by default uses “main.js” / “index.js” as its *entry point*. You can have a “package.json” and any tool configuration set up. vue serve will pick it up.
rapid prototyping

you can create a really simple Vue application — one that’s self-contained in a single .vue file — and serve that, without having to download all the dependencies in the node_modules folder.

`yarn global add @vue/cli-service-global`

Create an “app.vue” file

<template>    <div>        <h2>Hello world!</h2>        <marquee>Heyyy<;/marquee>    </div></template>

`vue serve app.vue`

### Manually config vue cli

https://www.freecodecamp.org/news/learn-how-to-use-the-vue-js-cli-8349fb23a566/
