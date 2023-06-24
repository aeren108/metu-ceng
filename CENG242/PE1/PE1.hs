module PE1 where

import Text.Printf

-- PE1: Recipe Calculator
-- The premise of this homework if to write a recipe calculator that
-- calculates: how much a recipe costs to make, what can be made with the
-- ingredients already available, and how much extra ingredients need to
-- be bought in order to make a recipe.

-- Recipe = Recipe Name [(Ingredient, Quantity)]
data Recipe = Recipe String [(String, Double)] deriving Show

-- Price = Price Ingredient Quantity Price
data Price = Price String Double Double deriving Show

-- You can use this as-is
getRounded :: Double -> Double 
getRounded x = read s :: Double
               where s = printf "%.2f" x

-- Calculate how much the given amount of the given ingredient costs
getIngredientCost :: (String, Double) -> [Price] -> Double
getIngredientCost (name, qty) ((Price pname pqty pprice):prices) = if name == pname then getRounded (qty * pprice) / pqty else getIngredientCost (name, qty) prices

-- Calculate how much it costs to buy all the ingredients of a recipe
recipeCost :: Recipe -> [Price] -> Double
recipeCost (Recipe rname (x:xs)) prices = recipeCostHelper 0 (x:xs) prices

recipeCostHelper::Double -> [(String, Double)] -> [Price] -> Double
recipeCostHelper cost (ingred:ingreds) prices = if null ingreds then getRounded (cost + (getIngredientCost ingred prices)) else recipeCostHelper (getRounded (cost + (getIngredientCost ingred prices)) )ingreds prices

-- Given a list of how much you already have of each ingredient,
-- calculate how much of which ingredients are missing for a recipe
missingIngredients :: Recipe -> [(String, Double)] -> [(String, Double)]
missingIngredients (Recipe rname []) ingreds = []
missingIngredients (Recipe rname ((irname, irqty):ringeds)) ingreds = let amnt = missingSingle ingreds (irname, irqty) in
                                                                    if amnt > 0 then (irname, amnt):missingIngredients (Recipe rname ringeds) ingreds else missingIngredients (Recipe rname ringeds) ingreds

-- Given a list of ingredients in your kitchen, calculate what you would
-- have left after making the given recipe. If there isn't enough of an
-- ingredient, the recipe cannot be made! You shouldn't change the amount
-- of ingredient in that case.
makeRecipe :: [(String, Double)] -> Recipe -> [(String, Double)]
makeRecipe ingreds recipe = if recipePossible recipe ingreds then leftAfter ingreds recipe else ingreds

-- Given a list of ingredients you already have, and a list of recipes,
-- make a shopping list showing how much of each ingredient you need
-- to buy, and its cost. Each ingredient mush appear in the shopping list
-- at most once (no duplicates!).

makeShoppingList::[(String, Double)] -> [Recipe] -> [Price] -> [(String, Double, Double)]
makeShoppingList ingreds recipes prices = ingredToPrice (missingIngredients (mergeRecipes recipes) ingreds) prices
                                                    
                                                    
mergeSingle::Recipe -> (String, Double) -> [(String, Double)]
mergeSingle (Recipe rn []) (iname, iqty) = [(iname, iqty)]
mergeSingle (Recipe rn ((irname, irqty):rs)) (iname, iqty) = if irname == iname then (irname, (irqty+iqty)):rs else (irname, irqty):mergeSingle (Recipe rn rs) (iname, iqty)
                                                                
mergeRecipe::Recipe -> Recipe -> Recipe
mergeRecipe r1 (Recipe r2n []) = r1
mergeRecipe r1 (Recipe r2n ((r2ni, r2qty):r2is)) = mergeRecipe ( Recipe r2n (mergeSingle r1 (r2ni, r2qty)) ) (Recipe r2n r2is)

mergeRecipes::[Recipe] -> Recipe
mergeRecipes (r:rs) = if null rs then r else mergeRecipe r (mergeRecipes rs)

ingredToPrice::[(String, Double) ]-> [Price] -> [(String, Double, Double)]
ingredToPrice [] prices = []
ingredToPrice ((iname, iqty):is) prices = (iname, iqty, getIngredientCost (iname, iqty) prices):ingredToPrice is prices

amountInRecipe::Recipe -> (String, Double) -> Double
amountInRecipe  (Recipe rname []) _ = 0
amountInRecipe (Recipe rname ((irname, irqty):ringreds)) (iname, iqty) = if iname == irname then irqty else amountInRecipe (Recipe rname ringreds) (iname, iqty)

missingSingle::[(String, Double)] -> (String, Double) -> Double
missingSingle [] (iname, iqty) = iqty
missingSingle ((rname, rqty):ringreds) (iname, iqty) = if rname == iname then iqty - rqty else missingSingle ringreds (iname, iqty)

missingSingle2::[(String, Double)] -> (String, Double) -> Double
missingSingle2 [] (iname, iqty) = 0
missingSingle2 ((rname, rqty):ringreds) (iname, iqty) = if rname == iname then rqty - iqty else missingSingle2 ringreds (iname, iqty)

isEnough::[(String, Double)] -> (String, Double) -> Bool
isEnough [] ringred = False
isEnough ((iname, iqty):ingreds) (irname, irqty) =  if iname == irname then 
                                                        if iqty >= irqty then True else False
                                                    else
                                                        isEnough ingreds (irname, irqty)

recipePossible::Recipe -> [(String, Double)] -> Bool
recipePossible (Recipe rname []) ingreds= True
recipePossible (Recipe rname ((irname, irqty):ringreds)) ingreds = let enough = isEnough ingreds (irname,irqty) in
                                                            if enough then recipePossible (Recipe rname ringreds) ingreds else False
                                                                    
leftAfterSingle::[(String, Double)] -> (String, Double) -> (String, Double)
leftAfterSingle [] (iname, iqty) = (iname, iqty)
leftAfterSingle ((irname, irqty):ringreds) (iname, iqty) = if iname == irname then (iname, iqty - irqty) else leftAfterSingle ringreds (iname, iqty)
                                                                    
leftAfter::[(String, Double)] -> Recipe -> [(String, Double)]
leftAfter [] recipe = []
leftAfter ((iname, iqty):ingreds) (Recipe rname ringreds) = leftAfterSingle ringreds (iname, iqty):leftAfter ingreds (Recipe rname ringreds)


