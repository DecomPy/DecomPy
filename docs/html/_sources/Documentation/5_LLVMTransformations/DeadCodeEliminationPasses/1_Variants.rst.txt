Dead Code Elimination Variants
******************************

++++++++++++++++++++++++++++
-dce (Dead Code Elimination)
++++++++++++++++++++++++++++

Most aggressive dead code elimination algorithm. This searches for dead
instructions, then rechecks after eliminations have occurred. This allows
removal of functions such as

::

    void A() {
        B();
    }

    void B() {
        return;
    }

    int main() {
        return 0;
    }

Not only function A, but then function B in the same pass (whereas -die would
only be able to detect function A)

++++++++++++++++++++++++++++++++++++++++
-deadargelim (Dead Argument Elimination)
++++++++++++++++++++++++++++++++++++++++

Removes arguments which are obviously unused. Does further removal of arguments
which are simply forwarded to other unused arguments.

+++++++++++++++++++++++++++++++++++++
-deadtypeelim (Dead Type Elimination)
+++++++++++++++++++++++++++++++++++++

(IN PROGRESS)

+++++++++++++++++++++++++++++++++++
-die (Dead Instruction Elimination)
+++++++++++++++++++++++++++++++++++

Obvious removal of dead code.
See -dce above.

+++++++++++++++++++++++++++++
-dse (Dead Store Elimination)
+++++++++++++++++++++++++++++

(IN PROGRESS)
