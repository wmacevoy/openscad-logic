
//
// Evaluates the minimum of seq(begin),seq(begin+1),...,seq(end-1)
// To determine: "at least min of seq(begin),...,seq(end-1) are true"
// This is always true when min <= 0.
//
function logic_at_least_seq(min,seq,begin,end)
  = min <= 0 ? true : // must be true
    let (size = (end > begin) ? end - begin : 0)
    size < min ? false : // must be false
    let (truth = seq(begin) ? 1 : 0)
    logic_at_least_seq(min-truth,seq,begin+1,end);
    
function logic_at_least_list(min,list,begin=0,_end=undef) =
  let (seq = function (i) list[i],end = is_undef(_end) ? len(list) : _end)
  logic_at_least_seq(min,seq,begin,end);

function logic_at_most_seq(max,seq,begin,end)
  = max < 0 ? false :
    let (size = end > begin ? end - begin : 0)
    max >= size ? true :
    let (truth = seq(begin) ? 1 : 0)
    logic_at_most_seq(max-truth,seq,begin+1,end);

function logic_at_most_list(max,list,begin=0,_end=undef) =
  let (seq = function (i) list[i],end = is_undef(_end) ? len(list) : _end)
  logic_at_most_seq(max,seq,begin,end);

function logic_any_seq(seq,begin,end) =
  begin >= end ? false : seq(begin) || logic_any_seq(seq,begin+1,end);
  
function logic_any_list(list, begin = 0, _end = undef) =
  let (seq = function (i) list[i],end = is_undef(_end) ? len(list) : _end)
  logic_any_seq(seq,begin,end);

function logic_all_seq(seq,begin,end) =
  begin >= end ? true : seq(begin) && logic_all_seq(seq,begin+1,end);
  
function logic_all_list(list, begin = 0, _end = undef) =
  let (seq = function (i) list[i],end = is_undef(_end) ? len(list) : _end)
  logic_all_seq(seq,begin,end);
