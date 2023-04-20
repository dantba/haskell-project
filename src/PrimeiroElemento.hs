module PrimeiroElemento (primeiroElemento) where
primeiroElemento :: [a] -> a
primeiroElemento [] = error "Ta vazio"
primeiroElemento (x:_) = x
