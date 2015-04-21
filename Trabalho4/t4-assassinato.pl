pedro(segunda,santamaria).
pedro(terca,santamaria).
pedro(quarta,portoalegre).
pedro(quinta,santamaria).
pedro(sexta,apartamento).
caren(segunda,portoalegre).
caren(terca,portoalegre).
caren(quarta,portoalegre).
caren(quinta,santamaria).
caren(sexta,apartamento).
henrique(segunda,apartamento).
henrique(terca,portoalegre).
henrique(quarta,apartamento).
henrique(quinta,apartamento).
henrique(sexta,apartamento).
bia(segunda,apartamento).
bia(terca,portoalegre).
bia(quarta,portoalegre).
bia(quinta,santamaria).
bia(sexta,apartamento).
adriano(segunda,apartamento).
adriano(terca,apartamento).
adriano(quarta,santamaria).
adriano(quinta,apartamento).
adriano(sexta,apartamento).
alice(segunda,apartamento).
alice(terca,portoalegre).
alice(quarta,portoalegre).
alice(quinta,apartamento).
alice(sexta,apartamento).
bernardo(segunda,santamaria).
bernardo(terca,santamaria).
bernardo(quarta,portoalegre).
bernardo(quinta,santamaria).
bernardo(sexta,apartamento).
maria(segunda,apartamento).
maria(terca,santamaria).
maria(quarta,santamaria).
maria(quinta,santamaria).
maria(sexta,apartamento).

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

