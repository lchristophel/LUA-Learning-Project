


--[[ Script Testing : Apprentissage du langage LUA en une journée + BONUS : EXERCICES EN BAS DE SCRIPT ]]



--[[ Print similaire à Python ]]
print("\n PRINT SIMILAIRE A PYTHON \n")

print("Avec string: ")
print("Hello world \n")

print("Avec number: ")
print(1234)

--[[ Bloc : do - end : Variable Global et Local ]]
print("\n BLOC DO - END : VARIABLE GLOBAL ET LOCAL \n")

do
  glob = "Variable globale"
  local loc = "Variable locale \n"
  print(glob)
  print(loc)
end

--[[ Hors bloc : do - end : Variable Global et Local ]]
print("HORS BLOC DO - END : VARIABLE GLOBAL ET LOCAL \n")

print(glob)
print(loc)

--[[ Entrée utilisateur stockée ]]
print("\n ENTREE UTILISATEUR STOCKEE \n")

print("Quel est ton prénom ? \n")

prenom = io.read()
print(prenom)

--[[ Entrée utilisateur : Passage de string à number ]]
print("ENTREE UTILISATEUR : PASSAGE DE STRING A NUMBER \n")

print("Quel est ton âge ?")
age = tonumber(io.read())
print(age)

--[[ Fonction type ]]
print("FONCTION TYPE \n")

print(type(prenom))

--[[ Concaténation avec .. ]]
print("\n CONCATENATION AVEC .. \n")

print("Ton prénom est " .. prenom .. " et tu as " .. age .. " ans. \n")

-- Affiche l'âge en laissant la place à un entier avec %d
print("AFFICHE L'AGE EN LAISSANT LA PLACE A UN ENTIER AVEC %d \n")
print(string.format("Tu as %d ans.", age))

-- Les conditions
print("\n LES CONDITIONS \n")

isAlive = "vivant."

print("Le soldat est " .. isAlive)

nearEnemy = false

nearAllies = true

if(nearEnemy and isAlive == "vivant.") then
  
  print("Un ennemi approche.")
  isAlive = "mort."
  
elseif (nearAllies) then
  print("Un allié approche.")
  isAlive = "content."

else
  isAlive = "vivant."
  
end
print("Le soldat est " .. isAlive)

-- Exercice : Savoir si l'utilisateur est majeur ou non
print("\n EXERCICE : SAVOIR SI L'UTILISATEUR EST MAJEUR OU NON \n")

print("Etes vous majeur ? \n")

io.read()


repeat print("\n Quel âge avez-vous ? \n")

userAge = tonumber(io.read())

print("Vous êtes mineur. \n")
if(userAge >= 18) then
    print("Vous avez êtes majeur. \n")
  else
    print("\n Quel âge avez-vous ? \n")
    userAge = tonumber(io.read())
  end

until userAge <= 0

-- Les boucles

-- while condition do end: tant qu'une condition est vraie ou fausse (exemple : tant que le joueur est vivant...)
-- repeat until : jusqu'à ce qu'une condition soit vraie ou fausse (exemple : jusqu'à ce que l'utilisateur entre un nombre positif)
-- for : répéter pour chaque nombre dans un interval (exemple : pour tous les nombres de 1 à 10)

-- Exercices personnels

-- Exercice 1 ------------------------------------------------------------

print("EXERCICE 1 LA SOMME \n")

-- Fonction pour calculer la somme de deux nombres
function calculerSomme(a, b)
    return a + b
end

-- Entrées
local nombre1 = 10
local nombre2 = 20

-- Calcul de la somme
local somme = calculerSomme(nombre1, nombre2)

-- Affichage du résultat
print("La somme de", nombre1, "et", nombre2, "est :", somme)



-- Exercice 2 --------------------------------------------------------------

print("EXERCICE 2 LES RANDOMS SALUTATIONS \n")
-- Liste de salutations
local salutations = {"Bonjour", "Salut", "Hello", "Hola"}

-- Liste de noms
local noms = {"Alice", "Bob", "Charlie", "David"}

-- Fonction pour choisir un élément aléatoire dans une liste
local function choisirAleatoire(liste)
    local index = math.random(1, #liste)
    return liste[index]
end

-- Choix aléatoire d'une salutation et d'un nom
local salutationAleatoire = choisirAleatoire(salutations)
local nomAleatoire = choisirAleatoire(noms)

-- Affichage du message aléatoire
print(salutationAleatoire .. ", " .. nomAleatoire .. " ! Comment ça va ?")



-- Exercice 3 ---------------------------------------------------

print("EXERCICE 3 PAIR IMPAIR \n")

-- Fonction pour vérifier si un nombre est pair ou impair
function verifierPairImpair(nombre)
    if nombre % 2 == 0 then
        return "Pair"
    else
        return "Impair"
    end
end

-- Entrée du nombre à vérifier
local nombre = 15

-- Vérification si le nombre est pair ou impair
local resultat = verifierPairImpair(nombre)

-- Affichage du résultat
print("Le nombre", nombre, "est", resultat)



-- Exercice 4 -----------------------------------------------------

print("GENERATION DE NOMBRE ALEATOIRE \n")
 -- Fonction pour générer une liste de nombres aléatoires
function genererNombresAleatoires(taille, min, max)
    local nombres = {}

    for i = 1, taille do
        local nombreAleatoire = math.random(min, max)
        table.insert(nombres, nombreAleatoire)
    end

    return nombres
end

-- Paramètres pour la génération des nombres
local tailleListe = 5
local valeurMin = 1
local valeurMax = 100

-- Génération de la liste de nombres aléatoires
local listeNombres = genererNombresAleatoires(tailleListe, valeurMin, valeurMax)

-- Affichage des nombres générés
print("Liste de nombres aléatoires:")
for i, nombre in ipairs(listeNombres) do
    print(i, ":", nombre)
end


-- Exercice 5 -----------------------------------------------------

print("DEVINETTE \n")

-- Générer un nombre aléatoire entre 1 et 100
math.randomseed(os.time())
local nombreSecret = math.random(1, 100)

-- Fonction pour vérifier la devinette
function verifierDevine(nombre)
    if nombre < nombreSecret then
        return "Trop bas !"
    elseif nombre > nombreSecret then
        return "Trop haut !"
    else
        return "Bravo, vous avez deviné le nombre !"
    end
end

-- Boucle pour la devinette
local devine = false
local tentatives = 0

while not devine do
    io.write("Devinez le nombre : ")
    local devinette = tonumber(io.read())

    if devinette then
        tentatives = tentatives + 1
        local resultat = verifierDevine(devinette)
        print(resultat)

        if devinette == nombreSecret then
            devine = true
        end
    else
        print("Veuillez entrer un nombre valide.")
        io.read()  -- Vider la ligne incorrecte de l'entrée
    end
end

print("Vous avez trouvé le nombre en", tentatives, "tentatives!")

-- Exercice 6 ---------------------------------------------

print("CALCULETTE \n")

-- Fonction pour effectuer l'opération mathématique
function effectuerOperation(operateur, a, b)
    if operateur == "+" then
        return a + b
    elseif operateur == "-" then
        return a - b
    elseif operateur == "*" then
        return a * b
    elseif operateur == "/" then
        if b == 0 then
            return "Division par zéro impossible"
        else
            return a / b
        end
    else
        return "Opérateur non valide"
    end
end

-- Demander à l'utilisateur de saisir les données
io.write("Veuillez entrer le premier nombre : ")
local nombre1 = tonumber(io.read())

io.write("Veuillez entrer l'opération (+, -, *, /) : ")
local operateur = io.read()

io.write("Veuillez entrer le deuxième nombre : ")
local nombre2 = tonumber(io.read())

-- Calculer le résultat de l'opération
local resultat = effectuerOperation(operateur, nombre1, nombre2)

-- Afficher le résultat
print("Le résultat de l'opération est :", resultat)


-- Exercice 7 ---------------------------------------------

print("VERIFICATION DE NOMBRE PREMIER \n")

-- Fonction pour vérifier si un nombre est premier
function estPremier(nombre)
    if nombre < 2 then
        return false
    end

    for i = 2, math.sqrt(nombre) do
        if nombre % i == 0 then
            return false
        end
    end

    return true
end

-- Fonction pour générer les n premiers nombres premiers
function genererNombresPremiers(n)
    local nombresPremiers = {}
    local nombre = 2

    while #nombresPremiers < n do
        if estPremier(nombre) then
            table.insert(nombresPremiers, nombre)
        end
        nombre = nombre + 1
    end

    return nombresPremiers
end

-- Générer les 10 premiers nombres premiers
local premiers = genererNombresPremiers(10)

-- Afficher les nombres premiers
print("Les 10 premiers nombres premiers sont :")
for i, nombre in ipairs(premiers) do
    print(i, ":", nombre)
end


-- Exercice 8 --------------------------------------------------------

print("CALCULER FACTO D'UN NOMBRE \n")

-- Fonction pour calculer la factorielle d'un nombre
function calculerFactorielle(nombre)
    if nombre < 0 then
        return "La factorielle n'est pas définie pour les nombres négatifs"
    elseif nombre == 0 then
        return 1
    else
        return nombre * calculerFactorielle(nombre - 1)
    end
end

-- Demander à l'utilisateur de saisir le nombre
io.write("Veuillez entrer un nombre : ")
local nombre = tonumber(io.read())

-- Calculer la factorielle du nombre
local resultat = calculerFactorielle(nombre)

-- Afficher le résultat
print("La factorielle de", nombre, "est :", resultat)

-- Exercice 9 -----------------------------------------------------

print("PALINDROME \n")

-- Fonction pour vérifier si un mot est un palindrome
function estPalindrome(mot)
    mot = string.lower(mot)  -- Convertir en minuscules pour ignorer la casse
    mot = string.gsub(mot, "%s+", "")  -- Supprimer les espaces

    local longueur = #mot
    for i = 1, math.floor(longueur / 2) do
        if string.sub(mot, i, i) ~= string.sub(mot, longueur - i + 1, longueur - i + 1) then
            return false
        end
    end

    return true
end

-- Demander à l'utilisateur de saisir un mot
io.write("Veuillez entrer un mot : ")
local mot = io.read()

-- Vérifier si le mot est un palindrome
local resultat = estPalindrome(mot)

-- Afficher le résultat
if resultat then
    print("Le mot", mot, "est un palindrome.")
else
    print("Le mot", mot, "n'est pas un palindrome.")
end





