#Permutation
# n verschiedene Kugeln, n! verschiedene Anordnung der Elemente.
factorial(n)

#Binomial-Koeffizient
# Anzahl der Möglichkeiten k Elemente aus n auszuwählen
choose(n, k)

#Ziehen mit Berücksichtigung der Reihenfolge
#Ziehen ohne Zurücklegen
# N: Elemente der Grundgesamtheit
# n: Umfang der Stichprobe
ohneZurMitReihen <- function(N, n) {
  factorial(N)/factorial(N-n)
}

#Ziehen mit Berücksichtigung der Reihenfolge
#Ziehen mit Zurücklegen
mitZurMitReihen <- function(N, n) {
  N^n
}

#Ziehen ohne Berücksichtigung der Reihenfolge
#Ziehen ohne Zurücklegen
ohneZurOhneReihen <- function(N, n) {
  choose(N, n)
}

#Ziehen ohne Berücksichtigung der Reihenfolge
#Ziehen mit Zurücklegen
mitZurOhneReihen <- function(N, n) {
  choose((N+n-1), n)
}