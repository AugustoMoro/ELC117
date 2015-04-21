segunda(pedro,santamaria).
terca(pedro,santamaria).
quarta(pedro,portoalegre).
quinta(pedro,santamaria).
sexta(pedro,apartamento).
segunda(caren,portoalegre).
terca(caren,portoalegre).
quarta(caren,portoalegre).
quinta(caren,santamaria).
sexta(caren,apartamento).
segunda(henrique,apartamento).
terca(henrique,portoalegre).
quarta(henrique,apartamento).
quinta(henrique,apartamento).
sexta(henrique,apartamento).
segunda(bia,apartamento).
terca(bia,portoalegre).
quarta(bia,portoalegre).
quinta(bia,santamaria).
sexta(bia,apartamento).
segunda(adriano,apartamento).
terca(adriano,apartamento).
quarta(adriano,santamaria).
quinta(adriano,apartamento).
sexta(adriano,apartamento).
segunda(alice,apartamento).
terca(alice,portoalegre).
quarta(alice,portoalegre).
quinta(alice,apartamento).
sexta(alice,apartamento).
segunda(bernardo,santamaria).
terca(bernardo,santamaria).
quarta(bernardo,portoalegre).
quinta(bernardo,santamaria).
sexta(bernardo,apartamento).
segunda(maria,apartamento).
terca(maria,santamaria).
quarta(maria,santamaria).
quinta(maria,santamaria).
sexta(maria,apartamento).

pobre(bernardo).
pobre(bia).
pobre(pedro).
pobre(maria).

rico(caren).
rico(alice).
rico(henrique).
rico(adriano).

insano(maria).
insano(adriano).

casal(anita,bernardo).
casal(bernardo,caren).
casal(anita,pedro).
casal(pedro,alice).
casal(alice,henrique).
casal(henrique,maria).
casal(adriano,caren).

vitima(anita).

namorou(X,Y) :- casal(X,Y) , casal(Y,X).
ciumes(X,Y) :- namorou(Z,X) , namorou(Y,Z).


