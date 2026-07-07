
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



= Uniform Continuity and The Definition of the Derivative

#theorem[Bolzano IVT][
  If $f:[a,b] -> RR$ is conts, and either $f(a)<y<f(b)$ or $f(a)>y>f(b)$ then $exists c in (a,b)$ such that $f(c) =y$.

]

#theorem[
  If $f:[a,b] -> RR$ is cts then $exists e,d in RR$ s.t $f([a,b]) = [e,d]$.
]

#theorem[
  If $f(x)$ is and odd polymonial then f has atleast one real root.
]
#example[
  $ f(x) = x^(2021) - x^(2020)+ 1025x - 300 $
  Then $ f(100000) > 0 $
  $ f(-10000) < 0. $
  Thus by IVT $exists c in (-10000,10000)$ s.t $f(c) =0$

]

#example[
  If $f:[a,b} -> RR]$ is not cts and $f(a) <0$ and $f(b) >0 $ then $exists? c in (a,b) $ s.t $f(c) = 0$?
]




