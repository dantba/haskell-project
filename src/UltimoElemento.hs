module UltimoElemento (ultimoElemento) where
ultimoElemento :: [a] -> a
ultimoElemento [] = error "Ta vazio"
ultimoElemento [a] = a
ultimoElemento (a:x) = ultimoElemento x