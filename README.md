# guja

## Guides

1. [hello-world](https://github.com/herereadthis/guja/blob/main/examples/hello-world.lua) - hello world
1. [comments](https://github.com/herereadthis/guja/blob/main/examples/comments.lua)
1. [factorial](https://github.com/herereadthis/guja/blob/main/examples/factorial.lua) - simple resursive function, user input
1. [control-structures](https://github.com/herereadthis/guja/blob/main/examples/control-structures.lua) - `if/else`, `while`, `for`, etc.
1. [dofile](https://github.com/herereadthis/guja/blob/main/examples/dofile.lua) - run a chunk from another file
1. [types](https://github.com/herereadthis/guja/blob/main/examples/types.lua) - basic types: `nil`, `boolean`, `string`, `userdata`, `function`, `thread`, `table`. Also `integer` vs `float`
1. [math](https://github.com/herereadthis/guja/blob/main/examples/math.lua) - examples from `math` library
1. [strings](https://github.com/herereadthis/guja/blob/main/examples/strings.lua) - examples, along with `string` library examples
1. [tables](https://github.com/herereadthis/guja/blob/main/examples/tables.lua) - lists, records, arrays
1. [functions](https://github.com/herereadthis/guja/blob/main/examples/functions.lua)
1. [io](https://github.com/herereadthis/guja/blob/main/examples/io.lua) - Simple I/O, Complete I/O,  basic file read/write
1. [os](https://github.com/herereadthis/guja/blob/main/examples/os.lua) - Operating System, `os` library, to interact with machine, date
1. [pattern-matching](https://github.com/herereadthis/guja/blob/main/examples/pattern-matching.lua) - strings: finding, replacing, matching
1. [pattern-matching](https://github.com/herereadthis/guja/blob/main/examples/pattern-matching.lua) - strings: finding, replacing, matching

## Demos
1. [eight-queen](https://github.com/herereadthis/guja/blob/main/examples/eight-queen.lua) - examples of functions to solve a chess problem
1. [word-frequency](https://github.com/herereadthis/guja/blob/main/examples/word-frequency.lua) - find most frequent words in a text

## Command Line

```bash
# enter code directly into command line
lua -e 'print("hello world")'
# interactive mode
lua -i
```

## Random notes

* Tables `{}` are the main data structure. They can be used as lists, sequences, arrays, etc.
* There is no `switch`. use `elseif` instead
* There is a `goto`. See [control-structures](https://github.com/herereadthis/guja/blob/main/examples/control-structures.lua)
* Functions are first-class values
  * they have the same rights as other types like strings, and can be stored as variables or in tables
* Functions have lexical scoping - can access variables within their enclosing function

### Reserved words

<table>
  <tr>
    <td>and</td><td>elseif</td><td>function</td>
    <td>local</td><td>repeat</td><td>until</td>
  </tr>
  <tr>
    <td>break</td><td>end</td><td>goto</td>
    <td>nil</td><td>return</td><td>while</td>
  </tr>
  <tr>
    <td>do</td><td>false</td><td>if</td>
    <td>not</td><td>then</td><td></td>
  </tr>
  <tr>
    <td>else</td><td>for</td><td>in</td>
    <td>or</td><td>true</td><td></td>
  </tr>
</table>

### Operators

<table>
  <tr>
    <td><</td><td>less than</td><td><=</td><td>less than or equal to</td><td>==</td><td>equal to</td>
  </tr>
  <tr>
    <td>></td><td>greater than</td><td>>=</td><td>greater than or equal to</td><td>~=</td><td>not equal to</td>
  </tr>
</table>

### Character Classes

* Capitalize to represent the opposite, e.g., `%A` is all non-letter characters.

<table>
  <tr>
    <td>.</td><td>all characters</td>
    <td>%g</td><td>printable except spaces</td>
    <td>%u</td><td>uppercase</td>
  </tr>
  <tr>
    <td>%a</td><td>letters</td>
    <td>%l</td><td>lowercase</td>
    <td>%w</td><td>alphanumeric</td>
  </tr>
  <tr>
    <td>%c</td><td>control characters</td>
    <td>%p</td><td>punctuation</td>
    <td>%x</td><td>hexadecimal</td>
  </tr>
  <tr>
    <td>%d</td><td>digits</td>
    <td>%s</td><td>spaces</td>
    <td></td><td></td>
  </tr>
</table>

