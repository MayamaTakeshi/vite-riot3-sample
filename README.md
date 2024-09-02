# vite-riot3-sample

## Overview

This is a minimal vite setup to permit to with old riot 3 (to help me maintain an old app)

It was prepared while using node v21.2.0 so prefer this version to avoid surprises.

## Usage

Just do
```
npm i
```

Then start vite to serve your app in hot reloading mode:
```
npm run dev
```

Access http://localhost:5173/ in your browser and see it being updated as you change your code.


## Tips

### Do not use value as opts to be passed to child tags

If you do something like this:
```
<parent>
  <child value={value}></child>

  <script>
    this.value = 1
  </script>
</parent>

<child>
  <p>{opts.value}</p>
</child>
```
the opts passed to child will become:
```
{
   riotValue: 1
}
```
(riot-compiler converts 'value' to 'riot-value' and this is passes to the child as 'riotValue')

So you would need to use this in the child instead:
```
<child>
  <p>{opts.riotValue}</p>
</child>
```

I don't know if this is a bug in the old riot-compiler@3.5.1 of if value is a reserved word.

Anyway, don't use it.

