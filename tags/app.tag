<app>
  <div>
    <h1>Parent Component</h1>
    <button onclick="{increment}">Increment counter</button>
    <p>Current counter: {counter}</p>

    <child counter={counter}></child>

  </div>

  <script>
    this.counter = 0;

    this.increment = function() {
      this.counter++;
      this.update(); // Trigger update to pass new counter to the child
    }
  </script>
</app>

