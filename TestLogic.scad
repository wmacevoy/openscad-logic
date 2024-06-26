include <Logic.scad>

list = [ true, false, true ];
seq = function (i) list[i];

assert(logic_at_least_seq(-1,seq,0,3) == true);
assert(logic_at_least_seq(0,seq,0,3) == true);
assert(logic_at_least_seq(1,seq,0,3) == true);
assert(logic_at_least_seq(2,seq,0,3) == true);
assert(logic_at_least_seq(3,seq,0,3) == false);
assert(logic_at_least_seq(4,seq,0,3) == false);

assert(logic_at_most_seq(-1,seq,0,3) == false);
assert(logic_at_most_seq(0,seq,0,3) == false);
assert(logic_at_most_seq(1,seq,0,3) == false);
assert(logic_at_most_seq(2,seq,0,3) == true);
assert(logic_at_most_seq(3,seq,0,3) == true);
assert(logic_at_most_seq(4,seq,0,3) == true);

assert(logic_any_seq(seq,0,3) == true);
assert(logic_any_seq(function (i) false,0,3) == false);
assert(logic_any_seq(function (i) false,0,0) == false);
assert(logic_any_seq(function (i) true,0,0) == false);
assert(logic_all_seq(seq,0,3) == false);
assert(logic_all_seq(function (i) true,0,3) == true);

echo("ok");
