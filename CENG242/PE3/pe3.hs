{-# LANGUAGE FlexibleInstances #-}

module PE3 where

import Data.List (sort, sortBy)
import Text.Printf (printf)

data Term = Const Integer | Pw Integer Power | Trig Integer Power Trigonometric | Exp Integer Power Exponential

data Power = Power Integer
data Polynomial = Polynomial [(Integer, Power)]
data Exponential = Exponential Polynomial
data Trigonometric = Sin Polynomial | Cos Polynomial

class Evaluable a where
    function :: a -> (Integer -> Double)

class Differentiable a where
    derivative :: a -> [Term]

-- You can use this as is
getRounded :: Double -> Double 
getRounded x = read s :: Double
               where s = printf "%.2f" x

-- You don't have to follow the order the functions appear in the file
-- For example, you could first define all Show instances, then all Eq instances etc.
-- if that implementation order is more convenient for you.



-- INSTANCES FOR POWER

instance Show Power where
    show (Power 0) = "1"
    show (Power 1) = "x" 
    show (Power n) = "x^"++show n

instance Eq Power where
    (Power n1) == (Power n2) = n1 == n2

instance Ord Power where
    (Power n1) <= (Power n2) = n1 <= n2

instance Evaluable Power where
    function pw = evalPower pw

instance Differentiable Power where
    derivative pw = diffPower pw

evalPower:: Power -> Integer -> Double
evalPower (Power 0) x = 1.0
evalPower (Power n) x = getRounded ((fromIntegral x )* (evalPower (Power (n-1)) x))

diffPower:: Power -> [Term]
diffPower (Power n) = [(Pw n (Power (n-1)))]

-- INSTANCES FOR POLYNOMIAL

instance Show Polynomial where
    show (Polynomial []) = ""
    show (Polynomial (ap:[])) = showPoly ap
    show (Polynomial (ap:rest)) = showPoly ap ++ " + " ++ show (Polynomial rest)

instance Evaluable Polynomial where
    function poly = evalPoly poly

instance Differentiable Polynomial where
    derivative poly = diffPoly poly

showPoly :: (Integer, Power) -> String
showPoly (a, (Power 0)) = show a
showPoly (1, p) = show p
showPoly (-1, p) = "-"++show p
showPoly (a, p) = show a ++ show p

evalPoly :: Polynomial -> Integer -> Double
evalPoly (Polynomial []) x = 0.0
evalPoly (Polynomial ((a, p):rest)) x = getRounded ((fromIntegral a) * (evalPower p x)) + (evalPoly (Polynomial rest) x)

diffPoly :: Polynomial -> [Term]
diffPoly (Polynomial []) = []
diffPoly (Polynomial ((a, (Power n)):rest)) = if n == 0 then diffPoly (Polynomial rest) else (Pw (a*n) (Power (n-1))):diffPoly (Polynomial rest)

-- INSTANCES FOR TRIGONOMETRIC

instance Show Trigonometric where
    show tri = showTri tri

instance Evaluable Trigonometric where
    function tri = evalTri tri

instance Differentiable Trigonometric where
    derivative tri = diffTri tri

showTri:: Trigonometric -> String
showTri (Sin poly) = if polySingle poly then "sin"++show poly else "sin("++show poly++")"
showTri (Cos poly) = if polySingle poly then "cos"++show poly else "cos("++show poly++")"

evalTri:: Trigonometric -> Integer -> Double
evalTri (Sin poly) x = getRounded (sin (evalPoly poly x))
evalTri (Cos poly) x = getRounded (cos (evalPoly poly x))

diffTri :: Trigonometric -> [Term]
diffTri (Sin poly) = diffTriTerms (Cos poly) (diffPoly poly)
diffTri (Cos poly) = minusTerms (diffTriTerms (Sin poly) (diffPoly poly))

diffTriTerms :: Trigonometric -> [Term] -> [Term]
diffTriTerms tri [] = []
diffTriTerms tri ((Pw a p):rest) = (Trig a p tri):diffTriTerms tri rest

minusTerm::Term -> Term
minusTerm (Trig a p tri) = (Trig (-a) p tri)
minusTerm (Pw a p) = (Pw (-a) p)
minusTerm (Exp a p exp) = (Exp (-a) p exp)
minusTerm (Const a) = (Const (-a))

minusTerms::[Term] -> [Term]
minusTerms [] = []
minusTerms (t:ts) = minusTerm t : minusTerms ts

polySingle::Polynomial -> Bool
polySingle (Polynomial ((a, (Power n)):[])) = if (n == 0 || n == 1) && a > 0 then True else False
polySingle (Polynomial (ap:ap1:rest)) = False

-- INSTANCES FOR EXPONENTIAL

instance Show Exponential where
    show exp = showExp exp

instance Evaluable Exponential where
    function exp = evalExp exp

instance Differentiable Exponential where
    derivative expo = diffExp expo

showExp:: Exponential -> String
showExp (Exponential poly) = if polySingle poly then "e^"++show poly else "e^("++show poly++")"

evalExp:: Exponential -> Integer ->  Double
evalExp (Exponential poly) x = getRounded (exp (evalPoly poly x))

diffExp::Exponential -> [Term]
diffExp (Exponential poly) = diffExpTerms (Exponential poly) (diffPoly poly)

diffExpTerms::Exponential -> [Term] -> [Term]
diffExpTerms expo [] = []
diffExpTerms expo ((Pw a p):rest) = (Exp a p expo):diffExpTerms expo rest

-- INSTANCES FOR TERM

instance Show Term where
    show (Pw 1 p) = show p
    show (Pw (-1) p) = "-"++show p
    show (Pw a p) = show a ++ show p

    show (Trig 1 (Power 0) tri) = show tri
    show (Trig (-1) (Power 0) tri) = "-" ++ show tri
    show (Trig a (Power 0) tri) = show a ++ show tri
    show (Trig 1 p tri) = show p ++ show tri
    show (Trig (-1) p tri) = "-" ++ show p ++ show tri
    show (Trig a p tri) = show a ++ show p ++ show tri

    show (Exp 1 (Power 0) expo) = show expo
    show (Exp 1 p expo) = show p ++ show expo
    show (Exp (-1) (Power 0) expo) = "-" ++ show expo
    show (Exp (-1) p expo) = "-" ++ show p ++ show expo
    show (Exp a (Power 0) expo) = show a ++ show expo
    show (Exp a p expo) = show a ++ show p ++ show expo

instance Evaluable Term where
    function term = evalTerm term

instance Differentiable Term where
    derivative _ = []

evalTerm::Term -> Integer -> Double
evalTerm (Const a) x = fromIntegral a
evalTerm (Pw a p) x =getRounded ((fromIntegral a)*evalPower p x)
evalTerm (Trig a p tri) x = getRounded ((fromIntegral a)*(evalPower p x )*(evalTri tri x))
evalTerm (Exp a p expo) x = getRounded ((fromIntegral a)*(evalPower p x ) * (evalExp expo x))


-- INSTANCES FOR [TERM]

instance Evaluable [Term] where
    function _ = \x -> 0.0

instance Differentiable [Term] where
    derivative _ = []


-- TESTER -- TESTER -- TESTER -- TESTER -- TESTER -- TESTER --

a = Pw (-3) (Power 1)
b = Pw (-1) (Power 1)
c = Polynomial [(-1, Power 2), (-1, Power 1), (5, Power 0)]
d = Polynomial [(-1, Power 1), (-1, Power 0)]
e = [Trig (-2) (Power 0) (Sin (Polynomial [(-2, Power 1)])), Trig (-1) (Power 0) (Sin (Polynomial [(-1, Power 1)]))]
f = [Exp (-2) (Power 0) (Exponential (Polynomial [(-2, Power 1)])), Exp (-1) (Power 0) (Exponential (Polynomial [(-1, Power 1)]))]
g = [Exp 3 (Power 3) (Exponential (Polynomial [(3, Power 3)])), Exp 5 (Power 3) (Exponential (Polynomial [(3, Power 3)])), Exp 3 (Power 4) (Exponential (Polynomial [(3, Power 3)])), Exp 3 (Power 3) (Exponential (Polynomial [(2, Power 3)])), Exp 3 (Power 3) (Exponential (Polynomial [(3, Power 2)])), Const 1, Pw 3 (Power 3), Const 3, Pw 4 (Power 4), Const 5, Pw 5 (Power 3), (Trig 3 (Power 3) (Sin (Polynomial [(3, Power 3)]))), (Trig 3 (Power 3) (Cos (Polynomial [(3, Power 3)]))), (Trig 3 (Power 4) (Sin (Polynomial [(3, Power 3)]))), (Trig 3 (Power 3) (Sin (Polynomial [(2, Power 3)])))]

a1 = (show a == "-3x")
b1 = (show b == "-x")
c1 = (show c == "-x^2 + -x + 5")
d1 = (show d == "-x + -1")
e1 = (show e == "[-2sin(-2x),-sin(-x)]")
f1 = (show f == "[-2e^(-2x),-e^(-x)]")
g1 = (show g == "[3x^3e^(3x^3),5x^3e^(3x^3),3x^4e^(3x^3),3x^3e^(2x^3),3x^3e^(3x^2),1,3x^3,3,4x^4,5,5x^3,3x^3sin(3x^3),3x^3cos(3x^3),3x^4sin(3x^3),3x^3sin(2x^3)]")
g2 = ((sort (map show (derivative g))) == ["-27x^5sin(3x^3)","12x^3e^(3x^3)","12x^3sin(3x^3)","16x^3","18x^4e^(3x^2)","18x^5cos(2x^3)","18x^5e^(2x^3)","24x^2","24x^2e^(3x^3)","27x^5cos(3x^3)","27x^6cos(3x^3)","27x^6e^(3x^3)","72x^5e^(3x^3)","9x^2cos(3x^3)","9x^2e^(2x^3)","9x^2e^(3x^2)","9x^2sin(2x^3)","9x^2sin(3x^3)"])

cases = [a1, b1, c1, d1, e1, f1, g1, g2]

fun _ [] = ""
fun index (curr:rest) = if (curr)
    then (final1 ++ ": PASSED\n" ++ final2)
    else (final1 ++ ": FAILED\n" ++ final2)
    where
        final1 = "Case " ++ (show index)
        final2 = (fun (index + 1) rest)



main = putStrLn $ fun 1 cases
