#!/bin/sh

echo -n "Informe a quantidade final de solo desejado:"
read finalQuantity

# 10 humus
# 10 perlita
# 10 turfa

# 250 torta de neem
# 250 calcario de conchas
# 250 farinha de algas
# 250 malte em pó
# 250 gesso agricola
# 1 pó de rocha
# 2 biochar

# 0,729927007
tortaDeNeem=`echo "$finalQuantity * 0.0073" | bc`
calcarioDeConchas=`echo "$finalQuantity * 0.0073" | bc`
farinhaDeAlgas=`echo "$finalQuantity * 0.0073" | bc`
malteEmPo=`echo "$finalQuantity * 0.0073" | bc`
gessoAgricola=`echo "$finalQuantity * 0.0073" | bc`

# 2,919708029
poDeRocha=`echo "$finalQuantity * 0.03" | bc`

# 5,839416058
biochar=`echo "$finalQuantity * 0.06" | bc`


# Base
# 29,197080292
humusDeMinhoca=`echo "$finalQuantity * 0.292" | bc`
perlitaExpandida=`echo "$finalQuantity * 0.292" | bc`
turfa=`echo "$finalQuantity * 0.292" | bc`

# litros=`echo "$humusDeMinhoca + $perlitaExpandida + $turfa + $biochar + 
#           $poDeRocha + $gessoAgricola + $malteEmPo + $farinhaDeAlgas + 
#     $calcarioDeConchas + $tortaDeNeem"`

echo "Humus de minhoca: $humusDeMinhoca Litros."
echo "Perlita expandida: $perlitaExpandida Litros."
echo "Turfa: $turfa Litros."
echo "Biochar: $biochar Litros."
echo "Pó de Rocha: $poDeRocha Litros."
echo "Torta de Neem: $tortaDeNeem Litros."
echo "Cálcario de conchas: $calcarioDeConchas Litros."
echo "Farinha de algas: $farinhaDeAlgas Litros."
echo "Malte em pó: $malteEmPo Litros."
echo "Gesso agrícola: $gessoAgricola Litros."

totalLitros=`echo "(($finalQuantity * 0.292)*3)+(($finalQuantity * 0.0073)*5)+($finalQuantity * 0.03)+($finalQuantity * 0.06)" |bc`
echo "Total de Litros: $totalLitros Litros."






