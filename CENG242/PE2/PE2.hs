module PE2 where

-- PE2: Dungeon Crawler
-- Dungeon map is :: Tree Chamber [Encounter]
-- Each encounter is either a fight or a treasure
-- Fights deal you damage (reduce HP) but enemies drop some gold (add
-- gold)
-- Tresures just give gold, or potions (which give hp)
-- Nodes hold encounters, when you visit a node you go through all of them in order
-- You start with a certain amount of HP and 0 gold.
-- You lose HP and accumulate gold as you descend the tree and go through encounters

-- Polymorphic tree structure
data Tree a b = EmptyTree | Leaf a b | Node a b [Tree a b] deriving (Show, Eq)

-- Every location in the tree is of some Chamber type.
data Chamber = Cavern |
               NarrowPassage |
               UndergroundRiver |
               SlipperyRocks deriving (Show, Eq)

-- An enemy has a name, an amount of damage that it deals
-- and an amount of gold that it drops (in that order).
data Enemy = Enemy String Integer Integer deriving (Show, Eq)

-- Gold n gives n amount of gold
-- Potion n heals n hp
data Loot = Gold Integer | Potion Integer deriving (Show, Eq)

-- An encounter is either a Fight with an Enemy, or a treasure where
-- you find Loot
data Encounter = Fight Enemy | Treasure Loot deriving (Show, Eq)

-- This is a type synonym for how we will represents our dungeons
type Dungeon = Tree Chamber [Encounter]

-- First argument is starting HP
-- Second argument is the dungeon map
-- Third argument is the path (each integer in the list shows what child
-- you descend into)
-- Calculate how much HP you have left and how much gold you've
-- accumulated after traversing the given path
traversePath :: Integer -> Dungeon -> [Int] -> (Integer, Integer)
traversePath hp dungeon [] = (0,0)
traversePath hp (Node chtype es ((Node cchtype es1 children):chs)) (p:ps) =  if p == 0 then 
                                                        (hp+dhp+rhp, dgold+rgold) 
                                                    else
                                                        traversePath hp (Node chtype es chs) ((p-1):ps) 
                                                    where (dhp, dgold) = encounters es1
                                                          (rhp, rgold) = traversePath 0 (Node cchtype es1 children) ps
                                                          
traversePath hp (Node chtype es ((Leaf cchtype es1):chs)) (p:ps) =  if p == 0 then 
                                                                        (hp+dhp, dgold) 
                                                                    else
                                                                        traversePath hp (Node chtype es chs) ((p-1):ps) 
                                                                    where (dhp, dgold) = encounters es1

-- return change in HP and gold 
encounters::[Encounter] -> (Integer, Integer)
encounters [] = (0,0)
encounters ((Fight (Enemy _ dmg gold)):es) = (rdmg-dmg, rgold+gold) where (rdmg, rgold) = encounters es
encounters ((Treasure (Gold gold)):es) = (rdmg, rgold+gold) where (rdmg, rgold) = encounters es
encounters ((Treasure (Potion heal)):es) = (rdmg+heal, rgold) where (rdmg, rgold) = encounters es

--returns change in hp and gold after encounter, (do not check whether encounter is possible or not)
encounter::Encounter -> (Integer, Integer)
encounter (Fight (Enemy name dmg drop)) = (-dmg, drop)
encounter (Treasure (Gold tgold)) = (0, tgold)
encounter (Treasure (Potion heal)) = (heal, 0)

-- return change in hp and gold after encountering whole dungeon (assuming nodes only have one child or none at all)
encounterd :: Dungeon -> (Integer, Integer)
encounterd EmptyTree = (0,0)
encounterd (Leaf room encs) = (dhp, dgold) where (dhp, dgold) = encounters encs
encounterd (Node room encs [child]) = (dhp+rhp, dgold+rgold) where (dhp, dgold) = encounters encs
                                                                   (rhp, rgold) = encounterd child

canEncounter::Integer -> Encounter -> Bool
canEncounter hp (Fight (Enemy name dmg drop)) = if (hp - dmg) > 0 then True else False
canEncounter hp (Treasure (Gold tgold)) = True
canEncounter hp (Treasure (Potion heal)) = True

canEncounters::Integer -> [Encounter] -> Bool
canEncounters hp [] = if hp > 0 then True else False
canEncounters hp (e:es) = if not (canEncounter hp e) then False else canEncounters (hp+dhp) es where (dhp, dgold) = encounter e

-- First argument is starting HP
-- Second argument is dungeon map
-- Find which path down the tree yields the most gold for you
-- You cannot turn back, i.e. you'll find a non-branching path
-- You do not need to reach the bottom of the tree
-- Return how much gold you've accumulated
findMaximumGain :: Integer -> Dungeon -> Integer
findMaximumGain hp (Leaf room encs) = if canEncounters hp encs then gold else 0 where (_, gold) = encounters encs
findMaximumGain hp (Node room encs children) = if canEncounters hp encs then gold+rgold else 0 where (dhp, gold) = encounters encs
                                                                                                     rgold = maxChild (dhp+hp) 0 children

maxChild :: Integer -> Integer -> [Dungeon] -> Integer
maxChild hp max [] = max
maxChild hp max (dung:rest) = if mgold > max then maxChild hp mgold rest else maxChild hp max rest where mgold = findMaximumGain hp dung

-- First argument is starting HP
-- Second argument is the dungeon map
-- Remove paths that you cannot go thorugh with your starting HP. (By
-- removing nodes from tree).
-- Some internal nodes may become leafs during this process, make the
-- necessary changes in such a case.
findViablePaths :: Integer -> Dungeon -> Dungeon
findViablePaths hp (Node room encs children) = if canEncounters hp encs then
                                                    if childrenEncounterable (hp+dhp) children then
                                                        (Node room encs (childrenViable (hp+dhp) children))
                                                    else (Leaf room encs)
                                                else EmptyTree where (dhp, dgold) = encounters encs
findViablePaths hp (Leaf room encs) = if canEncounters hp encs then (Leaf room encs) else EmptyTree

childrenEncounterable :: Integer -> [Dungeon] -> Bool
childrenEncounterable hp [] = False
childrenEncounterable hp ((Node room encs chs):rest) = if canEncounters hp encs then True else childrenEncounterable hp rest
childrenEncounterable hp ((Leaf room encs):rest) = if canEncounters hp encs then True else childrenEncounterable hp rest

childrenViable :: Integer -> [Dungeon] -> [Dungeon]
childrenViable hp [] = []
childrenViable hp (dung:rest) = if nd /= EmptyTree then nd:childrenViable hp rest else childrenViable hp rest where nd = findViablePaths hp dung

-- First argument is starting HP
-- Second Argument is dungeon map
-- Find, among the viable paths in the tree (so the nodes you cannot
-- visit is already removed) the two most distant nodes, i.e. the two
-- nodes that are furthest awat from each other.
mostDistantPair :: Integer -> Dungeon -> (Integer, Dungeon)
mostDistantPair hp dung = (0, EmptyTree)

-- Find the subtree that has the highest total gold/damage ratio
-- Simply divide the total gold in the subtree by the total damage
-- in the subtree. You only take whole subtrees (i.e you can take a new
-- node as the root of your subtree, but you cannot remove nodes
-- below it). Note that the answer may be the whole tree.
mostEfficientSubtree :: Dungeon -> Dungeon
mostEfficientSubtree dung = mostEfficientFromList 0 dung (allSubtree dung)

allSubtree :: Dungeon -> [Dungeon]
allSubtree EmptyTree = []
allSubtree (Node room encs children) = singleSubtree (Node room encs children) ++ childrenAllSubtree children
allSubtree (Leaf room encs) = singleSubtree (Leaf room encs)

childrenAllSubtree :: [Dungeon] -> [Dungeon]
childrenAllSubtree [] = []
childrenAllSubtree (dung:rest) = allSubtree dung ++ childrenAllSubtree rest

appendFront :: Dungeon -> Dungeon -> Dungeon
appendFront (Node room encs chs) (Node broom bencs bchs) = (Node room encs [(Node broom bencs bchs)])
appendFront (Node room encs chs) (Leaf broom bencs) = (Node room encs [(Leaf broom bencs)])
appendFront (Node room encs chs) EmptyTree = (Node room encs [])

childrenSubtree :: [Dungeon] -> [Dungeon]
childrenSubtree [] = []
childrenSubtree (dung:rest) = singleSubtree dung ++ childrenSubtree rest

-- !! Note: you can try to change (Leaf room encs) to (Node room encs []) in case of any error
singleSubtree :: Dungeon -> [Dungeon]
singleSubtree (Node room encs children) = map (appendFront (Node room encs [])) (childrenSubtree children)
singleSubtree (Leaf room encs) = [(Leaf room encs)]

mostEfficientFromList :: Double -> Dungeon -> [Dungeon] -> Dungeon
mostEfficientFromList cureff curdung [] = curdung
mostEfficientFromList cureff curdung (dung:rest) = if eff >= cureff then mostEfficientFromList eff dung rest else mostEfficientFromList cureff curdung rest where eff = efficiency dung

efficiency :: Dungeon -> Double
efficiency dung = if dhp < 0 then fromInteger dgold / fromInteger (-dhp) else 1.0 / 0.0 where (dhp, dgold) = encounterd dung
