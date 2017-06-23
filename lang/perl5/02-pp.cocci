@@
type T;
symbol sp, SP;
@@
(
- T sp
+ T SP
  ;
|
- T sp
+ T SP
  = ...
  ;
)

@@
type T;
symbol sp, SP;
@@
  T SP;
  ... when any
- sp
+ SP

@@
type T;
symbol mark, MARK;
@@
(
- T mark
+ T MARK
  ;
|
- T mark
+ T MARK
  = ...
  ;
)

@@
type T;
symbol mark, MARK;
@@
  T MARK;
  ...
- mark
+ MARK

@@
type T;
symbol targ, TARG;
@@
(
- T targ
+ T TARG
  ;
|
- T targ
+ T TARG
  = ...
  ;
)

@@
type T;
symbol targ;
@@
  T TARG;
  ...
- targ
+ TARG
