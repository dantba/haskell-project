module MaiorElemento (maiorElemento) where
maiorElemento :: [Int] -> Int
maiorElemento [] = error "Ta vazio"
maiorElemento [a] = a
maiorElemento (a:b:x) 
    | a > b = maiorElemento (a:x)
    | otherwise = maiorElemento (b:x)