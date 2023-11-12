# chat-functionality-phoenix
A simple chat application.

This is being used to learn how to build backend applications with Elixir and Phoenix to take advantage of its special 
Liveview functionality. Phoenix Liveview is a special real-time feature that improves the developer experience. 
Specifically, it keeps the application running during development. This allows developers to see the result of changes
as they are made to know the impact of changes in real-time. Effectively, it brings the REPL (read-evaluate-print loop)
originally developed in Lisp to web development.

Phoenix Liveview does this by opening a websocket and connecting to the view (UI) so things occur in real-time.


# LEARNINGS

## Sigils

Sigils in Elixir are a way to create custom literals. They are similar to macros in other languages, but they are more specific to representing text.

A sigil starts with a tilde (~) character, followed by an identifier and a pair of delimiters. The identifier is a single character or a string of multiple uppercase characters. The delimiters can be any pair of characters, such as parentheses, curly braces, or square brackets.

The following are some examples of sigils:

(see Learnings/Sigils.md for details)

## Dot Notation

