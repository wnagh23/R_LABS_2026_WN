
### Interaktywne ćwiczenia nr.1

## 1.

suma <- function(x,y) {
  x + y
}

print(suma(2,5))

## 2.

szescian <- sapply(seq(2, 10, 2), function(x) { x^3 })
print(szescian)

## 3. 

liczby <- c(2,4,7)

kwadrat <- function(x) { x^2 }

lista_do_kwadratu <- function(lista,f) {
  sapply(lista, f)
}

print(lista_do_kwadratu(liczby,kwadrat))



### Interaktywne ćwiczenia nr.2

## 1.

x <- 1:10
print(mean(x))

## 2. 

y <- matrix(1:9, 3, 3)
print(y * 2)

## 3.

z <- data.frame(
  Nazwa = c("Banany","Gruszki","Jablka"),
  Cena = c(2.99,3.99,1.99),
  Ilosc = c(14,9,27))

z$Wartosc <- z$Ilosc * z$Cena

print(z)

## 4.

lista <- list(
  wektor = c(1,4,8),
  macierz = matrix(1:9, 3, 3),
  ramka = data.frame(
    c(1,2),
    c("Pies","Kot")
  )
)

print(lista[[3]][2,2])

### Interaktywne ćwiczenia nr.3

## 1.

for(i in 1:10) {
  if (i %% 2 == 1) {
  next }
  else { print (i) }
}

## 2.

x = 100

while (x >= 50) {
  print(x)
  x <- x - 10
}

## 3.

x <- c("Pn","Wt","Śr","Czw","Pt","Sob","Nd")
wybor <- 3

dzien_tygodnia <- switch(wybor, x[1],x[2],x[3],x[4],x[5],x[6],x[7])
print(dzien_tygodnia)

## 4. 

wybor <- -1

if (wybor == 0) {
  print("Liczba jest równa zero")
} else if (wybor > 0) {
  print("Liczba jest dodatnia")
} else {
  print("Liczba jest ujemna")
}



### Interaktywne ćwiczenia nr.4

## 1.

silnia <- function(x) {
  if (x == 0) {
    return (1)
  } else {
      return(x * silnia(x - 1))
    }
}

print(silnia(6))

## 2.

isqrt <- function(x) {
  as.integer(sqrt(x))
}

is_prime <- function(x) {
  if (x <= 1) return(F)
  if (x == 2) return(T)
  if (x == 3) return(T)
  if (x %% 2 == 0) return(F)
  for (i in seq(3, isqrt(x))) {
    if (x %% i == 0) return (F)
  }
  return(T)
}


print(is_prime(7))
print(is_prime(3))
print(is_prime(16))

## 3.

lista <- c(1,3,5,8)

mean_sd <- function(x) {
  print(mean(x))
  print(sd(x))
}

mean_sd(lista)

## 4.

studenci <- function(imie,wiek,ocena) {
  df <- data.frame(
    Imie = imie,
    Wiek = wiek,
    Ocena = ocena
  )
  return(df)
}

imiona <- c("Kamil","Asia")
wiek <- c(21,22)
wyniki <- c(4.0,5.0)

tabela <- studenci(imiona,wiek,wyniki)

print(tabela)




