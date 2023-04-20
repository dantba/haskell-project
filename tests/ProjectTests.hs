module Main where
import Test.HUnit
import PrimeiroElemento
import UltimoElemento
import MaiorElemento
import qualified System.Exit as Exit



tests :: Test
tests = TestList [
    "Teste primeiro elemento" ~: testPrimeiroElemento,
    "Teste ultimo elemento" ~: testUltimoElemento,
    "Teste maior elemento" ~: testMaiorElemento
    ]



testPrimeiroElemento :: Test
testPrimeiroElemento = TestCase (assertEqual "O primeiro elemento da lista é 9" 9 (primeiroElemento [9, 8 ,2 , 12, 25, 5]))


testUltimoElemento :: Test
testUltimoElemento = TestCase (assertEqual "O ultimo elemento da lista é 5" 5 (ultimoElemento [9, 8 ,2 , 12, 25, 5]))


testMaiorElemento :: Test
testMaiorElemento = TestCase (assertEqual "O maior elemento da lista é 25" 25 (maiorElemento [9, 8 ,2 , 12, 25, 5]))


main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess