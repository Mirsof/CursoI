//: Playground - Tarea semana2 Juego de memoria
var rango = 0...100
for i in rango {
    if i%5==0   {
        print ("# \(i) Bingo!!!")
    }
    if i%2==0   {
        print ("# \(i) Par!!!")
    }else       {
        print ("# \(i) Impar!!!")
    }
    if i > 29 && i < 41   {
        print ("# \(i) Viva Swift!!!")
    }
}