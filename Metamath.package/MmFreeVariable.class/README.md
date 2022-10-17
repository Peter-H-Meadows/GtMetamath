#The principles of first order unification are not so bad. 

##Here's a sketch of the algorithm.

Let's say you want to apply a theorem like 

negeqd: ( ph -> A = B ) |- ( ph -> -u A = -u B ) 

[https://us.metamath.org/mpeuni/negeqd.html](https://us.metamath.org/mpeuni/negeqd.html)

where the current goal is |- ( X  <  Y  -  \>   ?a = -u 3 ). 

Here ?a is a metavariable; mmj2 calls these "work variables" and writes them like &C1. 

They represent terms that have not yet been determined. 

They should be distinguished from X and Y, which are regular variables which are being held fixed for the purpose of the proof - they may as well be constants like 3. (Some sources will even call them "local constants" to emphasize this perspective.)

First, we instantiate all the variables in the theorem with fresh metavariables, resulting in 

( ?ph -> ?A = ?B ) |- ( ?ph -> -u ?A = -u ?B ) 

where ?ph, ?A and ?B are new metavariables of their respective types 

(?ph is 'wff', ?A and ?B are 'class'). 

Each metavariable corresponds to a hole in the proof that we must eventually fill before generating the final proof output. 

(Metamath has no direct concept of metavariables / work variables, although for historical reasons the variables that metamath normally uses are sometimes also called metavariables.)

##Next, we have to solve the "unification problem" 

( ?ph -> -u ?A = -u ?B ) =?= ( X < Y -\> ?a = -u 3 ). 

That is, we have two expressions, each containing metavariables, and we must come up with an assignment to the metavariables such that these two expressions come out identical. The procedure for this is as follows:

1. If both sides are equal, do nothing and succeed. That is, e =?= e is trivially satisfied.

2. If both sides are applications of the same term constructor, unify all the arguments. 
That is, from f(e1, ..., en) =?= f(e1', ..., en') we get subproblems e1 =?= e1', ..., en =?= en'.

3. If both sides are applications of different term constructors, fail: there is no possible resolution. (This case is more complicated if you can unfold definitions, but luckily this isn't an issue in metamath unification.)

4. If one side is a metavariable and the other side is not, assign the metavariable. That is, ?m =?= e is resolved by setting ?m := e. (There is a caveat, see below.)

5. If both sides are metavariables, either one can be assigned to the other one.

When a metavariable is assigned, all occurrences of it should either be immediately replaced with the assignment, or else you have to keep track of a map of metavariable assignments and do all matching and equality testing modulo this assignment map.

In our example, it works as follows:
* ( ?ph -> -u ?A = -u ?B ) =?= ( X < Y -\> ?a = -u 3 ) is an implication on both sides, so we use rule 2 and get two subgoals
  * ?ph =?= X < Y is solved by assigning ?ph := X < Y (rule 4)
  * -u ?A = -u ?B =?= ?a = -u 3 has an equality on both sides, so we use rule 2 and get two subgoals
    * -u ?A =?= ?a is solved by assigning ?a := -u ?A
    * -u ?B =?= -u 3 is an application of -u on both sides, so use rule 2 with one subgoal
      * ?B =?= 3 is solved by assigning ?B := 3

At the end, we have an assignment {?ph := X < Y, ?a := -u ?A, ?B := 3}, which give us the substitution arguments to negeqd, and also result in the instantiated hypothesis subgoal ( X < Y -\> ?A = 3 ), which is passed on to the user or the next step. Note that ?A was not solved by this process, and we will hopefully solve it later by more theorem applications. If after all theorems have been applied these variables are still sticking around, mmj2 will arbitrarily insert some variables to assign to the metavars, for example setting ?A := A (the literal variable A) to get rid of all the metavars and produce a valid metamath proofs. Also note that ?a was solved even though it was not a new metavariable: this will require rewriting any occurrences of ?a anywhere else in the proof with the assignment -u ?A.

The caveat mentioned in rule 4 is that we must check that metavariable assignments are not cyclic. If we have the goal ?a =?= ?a then rule 1 applies, so we don't have to assign ?a, but if the goal is ?a =?= -u ?a, then it would seem that we should use rule 4 and assign ?a := -u ?a, but this would result in an infinite expression ?a := -u -u -u -u ... which is bad. To check this, we just have to make sure when assigning a metavariable ?a := e due to rule 4 that e does not contain ?a in it. If it does, we fail, because it is impossible to solve the equation with a finite substitution in this case.

There are a variety of more complex extensions to this basic idea where you might need to delay solving constraints or combine multiple unification constraints, but the approach described here suffices for metamath unification.

Mario Carneiro