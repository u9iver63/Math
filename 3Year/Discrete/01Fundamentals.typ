#import "@preview/mousse-notes:1.0.0": *
#import "@preview/algo:0.3.6": algo, code, comment, d, i
#set page(paper: "us-letter")
#show: book.with(
  title: [Discrete Math],
  subtitle: ["Intro To Graph theory"],
  subsubtitle: [],
  author: "Suroj P. Student",
)
#import "@preview/theorion:0.6.0": *
#import cosmos.fancy: *
#show: show-theorion


// 1. Change the counters and numbering:
#set-inherited-levels(1)
#set-zero-fill(true)
#set-leading-zero(true)
#set-theorion-numbering("1.1")

// 2. Other options:
#set-result("noanswer")
#set-qed-symbol[#math.qed]
#set-indent-mode(auto)

// for flow chart with fletcher
#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node

= Fundamentals

*Key Words:* _Define Algorithm and its complexity, Properties of an Algorithm, Binary Search Algorithm, Use Binary Search Algorithm, Insertion Sort Algorithm, Bubble Sort Algorithm_


== Algorithm

There are many general classes of problems that arise in discrete mathematics such as:
- given a sequence of integers, find the largest one
- given a set, list all its subsets
- given a set of integers, put them in increasing order
- given a network, find the shortest path between two vertices. When presented with such a problem
- etc

#definition[Algorithm][
  An _algorithm_ is a finite sequence *precise* instruction for performing a computation or for solving a problem.
]
#note-block[
  Procedure that follows a sequence of steps that leads to the desired answer. Such a sequence of steps is called an *algorithm*
]

=== Algorithm for finding the maximum (largest) value in a finite sequence of integers


#code(
  indent-guides: 1pt + gray,
  row-gutter: 5pt,
  column-gutter: 5pt,
  inset: 5pt,
  stroke: 2pt + black,
  fill: none,
)[```C
     // Find the largest Integer from given get of finite sequence.
     Procedure max(a1,a2,a3,...,an: Integer)
     max = a1
     for i in 2 to n:
       if max < ai then max = ai

     return max[max is the largest integer]
  ```
]
== Properties of an Algorithm.
- _Input:_ An Algorithm has an input value from a specified set.
- _Output:_ From each set of input values an algorithm produces output values from a specified set. The output values are the solution to the problem
- _Definitness:_ The step of an Algorithm must be defined precisely.
- _Correctness:_ An Algorithm should produce the correct output values for each set of input values.
- _Finiteness:_ An algorithm should produce the desired output after a finite (but perhaps large) number of steps for any input in the set.
- _Effectiveness:_ It must be possible to perform each step of an algorithm exactly and in a finite amount of time.
- _Generality:_ The procedure should be applicable for all problems of the desired form, not just for a particular set of input values.
#note-block[
  To show that the algorithm is correct, we must
  show that when the algorithm terminates
]

== Searching Algorithm.
- *Problem:* Locating an element in ordered list.
- *Example:* A program that checks the spelling of words searches for them in a dictionary
- *Name of this type of problem:* Searching problems.
- *General form of Searching Problems:* Locate an element $x$ in a list of distinct elements $a_1,a_2,a_3,...,a_n$ or determine that is not in the list.
- *Solution of Searching Problem:* The location of the term in the list that equal to $x$ (that is, $i$ is the solution if $x=a_i$  ) and 0 if the $x$  is not in the list.

=== The Linear Search.

#code(
  indent-guides: 1pt + gray,
  row-gutter: 5pt,
  column-gutter: 5pt,
  inset: 5pt,
  stroke: 2pt + black,
  fill: none,
)[```C
    Procedure: linear_search(x:Int,a1,a2,...,an: distinct int)
    i := 1
    while ( i <=n and x = ai)
      i = i+1;

    if i <= n then location := i
    else location=0
    return location( location of x is i if i or not found if i =0 )
```]

=== Binary Search Algorithm.
- Only applicable for ordered list with *increasing* order.
- *Example:* if the terms are numbers, they are listed from smallest to largest; if they are words, they are listed in lexicographic, or alphabetic, order)

- *Algorithm:*


#code(
  indent-guides: 1pt + gray,
  row-gutter: 5pt,
  column-gutter: 5pt,
  inset: 5pt,
  stroke: 2pt + black,
  fill: none,
)[```C
    Procedure: binary search (x: int, a1,a2,...,an: increasing integer)
    i := 1 ( left endpoint of the search interval)
    j := n ( right endpoint of the search interval)
    while i < j
        m := floor((i+j)/2)
        if x > am then i := m + 1
        else j := m
    if x=ai then location := i
    else location := 0
    return location[location is the subscript i of the term ai
    equal to x or 0 if x not found in list]
```]
