# Hell Triangle

## Problem

[Reference](https://s3.amazonaws.com/sample-login/attachments/files/000/000/084/original/HellsTriangle.pdf).

Given a triangle of numbers, find the maximum from top to bottom.
Example:

```
   6
  3 5
 9 7 1
4 6 8 4
```

In this triangle, the maximum total is **6 + 5 + 7 + 8 = 26**.

## Solution

I wrote the solution in Ruby because it is the language I'm most profficient in.

My solution is based on reducing, from bottom to top, the minimal sub-triangles inside the triangle to their maximum totals, until we have only one value.
A minimal sub-triangle is a triangle with one element on the top and two on the bottom.

For example, in the last two rows of the example triangle, we have the following sub-triangles:

The left one:
```
 9
4 6
```
With a maximum total of **9 + 6 = 15**.

The middle one:
```
 7
6 8
```
With a maximum total of **7 + 8 = 15**.

And the right one:
```
 1
8 4
```
With a maximum total of **1 + 8 = 9**.


Reducing each of them to their maximum totals, we get:

```
   6
  3 5
15 15 9
```

Reducing the last two rows again, we get:

```
  6
18 20
```

And finally:

```
26
```

## Tests

To run the tests, first install RSpec:

```
bundle install
```

And then:

```
bundle exec rspec
```
