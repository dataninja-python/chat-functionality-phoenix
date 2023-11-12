## Sigils
https://hexdocs.pm/elixir/1.16/sigils.html

Sigils in Elixir are a way to create custom literals. They are similar to macros in other languages, but they are more specific to representing text.

A sigil starts with a tilde (~) character, followed by an identifier and a pair of delimiters. The identifier is a single character or a string of multiple uppercase characters. The delimiters can be any pair of characters, such as parentheses, curly braces, or square brackets.

The following are some examples of sigils:

Elixir
# Create a character list
~C(hello world)

# Create a regular expression
~R(elixir)

# Create a string with no escaping or interpolation
~S(hello world)

# Create a string with escaping and interpolation
~s(#{2 + 2})
Use code with caution. Learn more
Sigils can be used to create custom literals for any type of data, such as dates, times, or binary data. They can also be used to create custom syntax for different tasks, such as writing HTML or generating code.

To create a custom sigil, you need to define a function that takes the contents of the sigil as input and returns the desired output. The function can be defined in any module, and it must be named sigil_<identifier>. For example, to create a sigil for creating custom dates, you would define a function called sigil_date/1.

Once you have defined your sigil function, you need to register it with the Elixir compiler. To do this, you can use the defsigil/1 macro. For example, to register the sigil_date/1 function, you would add the following line to your module:

Elixir
defsigil date: sigil_date/1
Use code with caution. Learn more
Once your sigil is registered, you can use it in your code. For example, to create a custom date, you would write the following code:

Elixir
~date(2023-11-12)
Use code with caution. Learn more
This would evaluate to the NaiveDateTime struct with the value 2023-11-12.

Sigils are a powerful tool for customizing the Elixir language. They can be used to create custom literals for any type of data, and they can also be used to create custom syntax for different tasks.

Here are some examples of how sigils are used in Elixir:

The ~E sigil is used to create quoted expressions. This is useful for creating ASTs or for generating code.
The ~H sigil is used to create HTML. This makes it easy to write HTML in Elixir without having to escape all of the special characters.
The ~R sigil is used to create regular expressions. This makes it easy to create and use regular expressions in Elixir.
Sigils are a powerful feature of Elixir that can make your code more concise and readable.


The following is a list of all the built-in sigils in Elixir:

~C - Creates a character list with no escaping or interpolation.
~c - Creates a character list with escaping and interpolation.
~R - Creates a regular expression with no escaping or interpolation.
~r - Creates a regular expression with escaping and interpolation.
~S - Creates a string with no escaping or interpolation.
~s - Creates a string with escaping and interpolation.
~W - Creates a word list with no escaping or interpolation.
~E - Creates a quoted expression.
~H - Creates HTML.
~U - Creates a UTC DateTime struct.
~W - Creates a NaiveDateTime struct.
~Z - Creates a Time struct.
In addition to the built-in sigils, it is also possible to create custom sigils. To do this, you need to define a function that takes the contents of the sigil as input and returns the desired output. The function can be defined in any module, and it must be named sigil_<identifier>. For example, to create a sigil for creating custom dates, you would define a function called sigil_date/1.

Once you have defined your sigil function, you need to register it with the Elixir compiler. To do this, you can use the defsigil/1 macro. For example, to register the sigil_date/1 function, you would add the following line to your module:

Elixir
defsigil date: sigil_date/1
Use code with caution. Learn more
Once your sigil is registered, you can use it in your code. For example, to create a custom date, you would write the following code:

Elixir
~date(2023-11-12)
Use code with caution. Learn more
This would evaluate to the NaiveDateTime struct with the value 2023-11-12.

Sigils are a powerful tool for customizing the Elixir language. They can be used to create custom literals for any type of data, and they can also be used to create custom syntax for different tasks.


