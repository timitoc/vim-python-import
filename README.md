## Example usage:

### Importing a module
You can only import a module:
```py
math
```
Running `<leader>i` on that line will turn it into:
```py
import math
```

### Importing stuff from a module
Write what you want to import like this:
```py
math/pi,sqrt,log
```
Running `<leader>i` on that line will turn it into:
```py
from math import pi, sqrt, log
```
