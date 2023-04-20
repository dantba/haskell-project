module Main where

import PrimeiroElemento
import UltimoElemento
import MaiorElemento

main :: IO ()
main = do
  let lista = [1, 2, 5, 3]
  putStrLn $ show $ primeiroElemento lista
  putStrLn $ show $ ultimoElemento lista
  putStrLn $ show $ maiorElemento lista
