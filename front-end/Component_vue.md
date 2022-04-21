every Vue component instance already "manages" its own reactive state.

```js
<script>
export default {
  // STATE
  data() {
    return {
      count: 0
    }
  },
  // ACTIONS
  methods: {
    increment() {
      this.count++
    }
  }
}
</script>

<!-- VIEW -->
<template>{{ count }}</template>
```

It is a self-contained unit with the following parts:

    The `state`, the source of truth that drives our app;
    The `view`, a declarative mapping of the state;
    The `actions`, the possible ways the state could change in reaction to user inputs from the view.
