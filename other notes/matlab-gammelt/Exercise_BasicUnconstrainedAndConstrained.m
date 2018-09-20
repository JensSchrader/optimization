%CZ 4 5.9

% 5.7)
%suppose that f(x) = o(g(x)) show that for any given E > 0,
%there exisists  ee > 0 such that if ||x|| < ee then ||f(x)|| < E|g(x)|
disp('O and o are order symbols')
disp('let g be a real-valueed function defined in some neighborhood')
disp('g(x) != 0 and x != 0. Let f : ohm -> R^m be in domain ohm C R^n incl. 0')
disp('We write:')
disp('f(x) = O(g(x)) to mean that the quotient ||f(x)|| / |g(x)| is bounded near 0; that is, there exist numbers K > 0 and ee > 0 such that if ||x|| < ee, x in ohm, then ||f(x)|| / |g(x)| <= K.')
disp('f(x) = o(g(x)) to mean that')

% 5.8)
%Use ex 5.7 to show that if function f : R^n -> R and g : R^n -> R
%satisfy f(x) = -g(x)+o(g(x)) and g(x) > 0 for all x != 0, then for all x
%!= 0 sufficiently small, we have f(x) < 0


% 5.9)
%let
syms x1 x2
f1(x1,x2) = x1^2 - x2^2
f2(x1,x2) = 2*x1*x2
