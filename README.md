# Logic

Short-circuit implementations of

* at least
* at most
* any
* all

for sequences and lists.  Uses the minimum number of evaluations for sequences.

## At least

### `logic_at_least_seq(min,seq,begin,end)`

* `min` - the desired minimum (always true for `min <= 0`)
* `seq` - lambda function (seq(begin),...,seq(end-1)) are the items to be checked.
* returns `true` or `false`

### `logic_at_least_list(min,list,begin=0,end=undef)`

* `min` - the desired minimum (always true for `min <= 0`)
* `list` - items[begin],...,items[end-1] are the items to be checked.
* `begin` - the first item (default 0)
* `end` - the last item + 1 (default length of list)
* returns `true` or `false`

## At most

### `logic_at_most_seq(max,seq,begin,end)`

* `max` - the desired maximum (always false for `max < 0`)
* `seq` - lambda function (seq(begin),...,seq(end-1)) are the items to be checked.
* returns `true` or `false`

### `logic_at_most_list(max,list,begin=0,end=undef)`

* `max` - the desired maximum (always false for `max < 0`)
* `list` - items[begin],...,items[end-1] are the items to be checked.
* `begin` - the first item (default 0)
* `end` - the last item + 1 (default length of list)
* returns `true` or `false`


