proba="Ovo je proba"
echo $proba

lista_datoteka=$(echo *)
echo $lista_datoteka

for i in {1..3}
do
	proba3=$proba3$proba'. '
done
echo $proba3

a=4
b=3
c=7
d=$((($a+4)*$b%$c))
echo $d

broj_rijeci=0
for txtFile in *\.txt
do
	broj_rijeci=$(($(wc $txtFile -w | cut -d ' ' -f 1) + $broj_rijeci))
done
echo $broj_rijeci

ls ~

cat /etc/passwd | cut -d ':' -f1,6,7

ps -f | sed 's/ \+ / /g' | cut -d ' ' -f1,2,8
