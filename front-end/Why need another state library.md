### Problems

However, the simplicity starts to break down when we have multiple components that share a common state:

    1. Multiple views may depend on the same piece of state.
    2. Actions from different views may need to mutate the same piece of state.

[state_flow_image](https://vuejs.org/assets/state-flow.a8bc738e.png)

For case one, a possible workaround is by "lifting" the shared state up to a common ancestor component, and then pass it down as props. However, this quickly gets tedious in component trees with deep hierarchies, leading to another problem known as *Prop Drilling*.

For case two, we often find ourselves resorting to solutions such as reaching for direct parent / *child instances* via template refs, or trying to mutate and synchronize multiple copies of the state via emitted events. Both of these patterns are brittle and quickly lead to unmaintainable code.

A simpler and more straightforward solution is to *extract the shared state out of the components, and manage it in a global singleton.* With this, our component tree becomes a big "view", and any component can access the state or trigger actions, no matter where they are in the tree!
