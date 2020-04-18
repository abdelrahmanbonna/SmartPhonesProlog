phones(appleIphone,["iphone 3","iphone 3gs","iphone 4","iphone 4s","iphone 5","iphone 5s","iphone 6","iphone 6 Plus","iphone 6s","iphone 6s Plus","iphone 7","iphone 7 Plus","iphone 8","iphone 8 Plus","iphone X","iphone X Max","iphone Xs","iphone Xs Max","iphone Xr","iphone 11","iphone 11 pro","iphone SE"]).
tablets(appleIpad,["ipad 1","ipad 2","ipad 3","ipad Mini","ipad Air","ipad Pro"]).
phones(huaweiP,["P10","P10 lite","P10 pro","P20","P20 lite","P20 pro","P30","P30 lite","P30 pro","P40","P40 lite","P40 pro"]).
phones(huaweiNova,["Nova 3","Nova 5T","Nova 3I"]).
phones(huaweiMate,["Mate RS","Mate 10","Mate 10 pro","Mate 10 lite","Mate 20","Mate 20 pro","Mate 20 lite","Mate 30","Mate 30 pro","Mate 30 lite","Mate X","Mate XL"]).
tablets(huaweiMediaPad,["MediaPad T5","MediaPad M5 lite","MediaPad T3 7 3g"]).
phones(samsungS,["S","S2","S3","S4","S5","S6","S6 edge","S7","S7 edge","S8","S8 plus","S9","S9 plus","S10","S10 plus"]).
phones(samsungNote,["note","note2","note3","note4","note5","note6","note7","note8","note9","note10","note edge","note 10 lite"]).
phones(samsungA,["a50","a70","a80","a51","a71"]).
phones(oppoReno,["Reno","Reno2","Reno2 F","Reno 10x Zoom"]).
phones(oppoF,["F8","F8 pro","F9","F9 pro","F10","F10 pro","F11","F11 pro"]).
phones(oppoA,["A9","A5"]).
phones(onePlus,["onePlus 1","onePlus 2","onePlus 3","onePlus 4","onePlus 5","onePlus 6","onePlus 6T","onePlus 7","onePlus 7T","onePlus 8","onePlus 8 pro"]).
phones(xiaomiMi,["mi8","mi8 pro","mi8 lite","mi note 8","mi9","mi9 pro","mi9 lite","mi note 9","mi10","mi10 pro","mi10 lite","mi note 10"]).
phones(xiaomiPocophone,["Pocophone F1"]).
phones(xiaomiRedmi,["redmi 6","redmi Note 6 pro","redmi 7","redmi Note 7","redmi 8","redmi Note 8 ","redmi Note 8 pro","redmi 6A","redmi 7A","redmi 8A","redmi Note 8T","redmi GO","redmi S2","redmi Note 9S"]).
phones(htcDesire,["desire 10","desire 10 pro","desire 9","desire 9 pro","desire 8","desire 8 pro"]).
phones(htcU,["u 12+","u 11","u 11 life"]).

fasterThan("samsung Note 10","xiaomi Pocophone F1").
fasterThan("htc desire 10 pro","huawei Mate 10").
fasterThan("iphone 7 plus","iphone 3").
fasterThan("iphone Xs","iphone 7 plus").
fasterThan("huawei Mate 10","P10").

hasBetterCameraThan("iphone 7 plus","iphone 3").
hasBetterCameraThan("huawei P30 lite","iphone 7 plus").
hasBetterCameraThan("iphone Xs","huawei P30 lite").

isOld("iphone 3").
isOld("iphone 3gs").
isOld("iphone 4").
isOld("iphone 4s").
isOld("iphone 5").
isOld("iphone 5s").
isOld("iphone 6").
isOld("iphone 6s").
isOld("iphone 6 Plus").
isOld("iphone 6s Plus").
isOld("ipad 1").
isOld("ipad 2").
isOld("ipad 3").
isOld("S").
isOld("S2").
isOld("S3").
isOld("S4").
isOld("P10").
isOld("note").
isOld("note2").
isOld("note3").
isOld("note4").
isOld("note edge").
isOld("onePlus 1").

search(List):-
     phones(List,Z),write(Z);tablets(List,Z),write(Z).
len(List):-
     phones(List,Z),length(Z,L),write(L);tablets(List,Z),length(Z,L),write(L).
on(Item,List):-
     phones(List,Z),member(Item,Z);tablets(List,Z),member(Item,Z).
app(List1,List2):-
     phones(List1,Z1), phones(List2,Z2),append(Z1,Z2,L),write(L);tablets(List1,Z1), tablets(List2,Z2),append(Z1,Z2,L),write(L).
rev(List):-
     phones(List,Z),reverse(Z,L),write(L);tablets(List,Z),reverse(Z,L),write(L).
del(Item,List):-
     phones(List,Z),delete(Z,Item,L),write(L);tablets(List,Z),delete(Z,Item,L),write(L).
sel(Itemrep,Newitem,List):-
     phones(List,Z),select(Itemrep,Z,Newitem, L),write(L);tablets(List,Z),select(Itemrep,Z,Newitem, L),write(L).
sub(List1,List2):-
     phones(List1,Z1), phones(List2,Z2),subtract(Z1,Z2,L),write(L);tablets(List1,Z1), tablets(List2,Z2),subtract(Z1,Z2,L),write(L).
las(List):-
     phones(List,Z),last(Z,Item),write(Item);tablets(List,Z),last(Z,Item),write(Item).
flat(List):-
     phones(List,Z),flatten([List|Z],L),write(L);tablets(List,Z),flatten([List|Z],L),write(L).
sor(List):-
     phones(List,Z),sort(Z,L),write(L);tablets(List,Z),sort(Z,L),write(L).
indexof(Item,List):-
     phones(List,Z),nth0(N,Z,Item),write(N);tablets(List,Z),nth0(N,Z,Item),write(N).
isempty(List):-
     phones(List,Z),length(Z,L),L=:=0;tablets(List,Z),length(Z,L),L=:=0.
add(Item,List):-
     phones(List,Z),write([Item|Z]);tablets(List,Z),write([Item|Z]).
types(Y):-
     Y==phones,phones(X,Z),write(X);Y==tablets,tablets(X,Z),write(X).
next(Item,List):-
     phones(List,Z),nextto(Item,N,Z),write(N);tablets(List,Z),nextto(Item,N,Z),write(N).
comp(List1,List2):-
     phones(List1,Z1), phones(List2,Z2),compare(O,Z1,Z2),write(O);tablets(List1,Z1), tablets(List2,Z2),compare(O,Z1,Z2),write(O).
intersect(List1,List2):-
     phones(List1,Z1), phones(List2,Z2),intersection(Z1,Z2,I),write(I);tablets(List1,Z1), tablets(List2,Z2),intersection(Z1,Z2,I),write(I).
uni(List1,List2):-
     phones(List1,Z1), phones(List2,Z2),union(Z1,Z2,I),write(I);tablets(List1,Z1), tablets(List2,Z2),union(Z1,Z2,I),write(I).
osIs(X,ios):-
     phones(appleIphone,Z),member(X,Z);tablets(appleIpad,Z),member(X,Z).
osIs(X,android):-
     phones(C,Z),member(X,Z),C\=appleIphone;tablets(C,Z),member(X,Z),C\=appleIpad.
fasterThan(X,Y):-
     fasterThan(X,Z),fasterThan(Z,Y).
hasBetterCameraThan(X,Y):-
     hasBetterCameraThan(X,Z),hasBetterCameraThan(Z,Y).
notOld(X):- 
     not(isOld(X)).
new(X):- 
     notOld(X).
shouldBuyOr(X,Y):- 
     isOld(X),write(Y);isOld(Y),write(X).