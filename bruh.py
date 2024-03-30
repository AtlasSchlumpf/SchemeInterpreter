from scheme import *
global_frame = create_global_frame()
expr = Pair(Pair('+', Pair('x', Pair(2, nil))), nil)
print(do_quote_form(expr, global_frame))