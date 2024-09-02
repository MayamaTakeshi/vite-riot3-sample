<child>
  <div>
    <p>Counter from parent: {opts.counter}</p>
    <p>Computed Value: {computedValue}</p>
  </div>

  <script>
    this.computedValue = '';

    this.on('update', function() {
      const counter = Number(opts.counter);
      this.computedValue = isNaN(counter) ? 'Invalid counter' : counter * 2;
    });
  </script>
</child>

