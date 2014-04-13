# ImmutableHashes

Enforces that you can only assign to hash keys once.

```ruby
require "immutable_hashes"                                                          
hash = {:my_key => "my_value"}
hash[:my_key] = "my_other_value"
```

This raises:

`ImmutableHashError: Cannot change the value of my_key to my_other_value. my_key is already set to my_value`

This gem does *not* prevent you from adding keys to the hash.

If you *really* want to change what keys point at, you can use a MutableHash:

```ruby
require "immutable_hashes"
hash = MutableHash.new(:my_key => "my_value")
hash[:my_key] = "my_other_value"
puts hash[:my_key]
```

This prints `my_other_value`.

# License

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
