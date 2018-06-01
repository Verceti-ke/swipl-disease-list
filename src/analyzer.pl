whereisit(X):-
locale(Y,X),
write(Y),
nl.

whatisit(X):-
symptom(Y,X),
write(Y),
nl.

howtotest(X):-
test(X,Y),
write(Y),
nl.

howtotreat(X):-
treatment(X,Y),
write(Y),
nl.

printAll([Head|Tail]):-
write(Head),
nl,

(locale(Head,_) -> 
findall(B,locale(Head,B),C),
write("Locale(s):\n"),
printList(C)
; !),

write("Test(s):\n"),
findall(X,test(Head,X),L),
printList(L),
write("Treatment(s):\n"),
findall(Y,treatment(Head,Y),Z),
printList(Z),
nl,
printAll(Tail).
printAll([]):-
!.

printList([Head|Tail]):-
write(Head),
nl,
printList(Tail).
printList([]):-
!.

getSymptList(X, L):-
findall(Y,symptom(X,Y),L).

getTreatList(X, L):-
findall(Y,treatment(X,Y),L).

getTestList(X, L):-
findall(Y,test(X,Y),L).

allsymptoms(X):-
getSymptList(X,L),printList(L).

findDisease(X, [Head|Tail]):-
findDisease(X,Tail),symptom(X,Head).

findDisease(_X, []):-
!.

listPossible([Head|Tail]):-
findall(X,findDisease(X, [Head|Tail]),L),
printAll(L).

listPossible([]):-
!.

allSymptoms:-
findall(X,symptom(_,X),L),
sort(L,Z),
printList(Z).
