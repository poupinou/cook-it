# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# cette version est une version de gros batards du seed
Ingredient.destroy_all

#####
Ingredient.create(name: 'Ail', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/ail.jpg', price: 2)
Ingredient.create(name: 'Abricot', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/abricot.jpg', price: 2)
Ingredient.create(name: 'Airelle', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/airelle.jpg', price: 2)
Ingredient.create(name: 'Amande', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/amande.jpg', price: 2)

Ingredient.create(name: 'Ananas', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/ananas.jpg', price: 2)
Ingredient.create(name: 'Artichaut', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/artichaut.jpg', price: 2)
Ingredient.create(name: 'Asperge blanche', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/asperge-blanche.jpg', price: 2)
Ingredient.create(name: 'Asperge verte', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/asperge-verte.jpg', price: 2)
Ingredient.create(name: 'Aubergine', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/aubergine.jpg', price: 2)

Ingredient.create(name: 'Avocat', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/avocat.jpg', price: 2)
Ingredient.create(name: 'Banane', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/banane.jpg', price: 2)
Ingredient.create(name: 'Bette', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/bette.jpg', price: 2)
Ingredient.create(name: 'Betterave rouge', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/betterave-rouge.jpg', price: 2)
Ingredient.create(name: 'Brocoli', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/brocoli.jpg', price: 2)

Ingredient.create(name: 'Carotte', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/carotte.jpg', price: 2)
Ingredient.create(name: 'Cassis', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/cassis.jpg', price: 2)
Ingredient.create(name: 'Catalonia', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/catalonia.jpg', price: 2)
Ingredient.create(name: 'Céleri', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/celeri.jpg', price: 2)
Ingredient.create(name: 'Céleri branche', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/celeri-branche.jpg', price: 2)

Ingredient.create(name: 'Céleri rave', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/celeri-rave.jpg', price: 2)
Ingredient.create(name: 'Cerise', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/cerise.jpg', price: 2)
Ingredient.create(name: 'Châtaigne', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/chataigne.jpg', price: 2)
Ingredient.create(name: 'chou blanc', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/chou-blanc.jpg', price: 2)
Ingredient.create(name: 'Chou de Bruxelles', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/chou-de-bruxelles.jpg', price: 2)

Ingredient.create(name: 'Chou frisé', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/chou-frise.jpg', price: 2)
Ingredient.create(name: 'Chou Romanesco', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/chou-romanesco.jpg', price: 2)
Ingredient.create(name: 'Chou rouge', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/chou-rouge.jpg', price: 2)
Ingredient.create(name: 'Chou-chinois', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/chou-chinois.jpg', price: 2)
Ingredient.create(name: 'Chou-fleur', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/chou-fleur.jpg', price: 2)

Ingredient.create(name: 'Chou-rave', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/chou-rave.jpg', price: 2)
Ingredient.create(name: 'Cima di Rapa', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/cima-di-rapa.jpg', price: 2)
Ingredient.create(name: 'Citron', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/citron.jpg', price: 2)
Ingredient.create(name: 'Citrouille', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/citrouille.jpg', price: 2)
Ingredient.create(name: 'Clémentine', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/clementine.jpg', price: 2)

Ingredient.create(name: 'Coing', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/coing.jpg', price: 2)
Ingredient.create(name: 'Concombre', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/concombre.jpg', price: 2)
Ingredient.create(name: 'Courge', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/courge.jpg', price: 2)
Ingredient.create(name: 'Courgette', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/courgette.jpg', price: 2)
Ingredient.create(name: 'Cresson', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/cresson.jpg', price: 2)

Ingredient.create(name: 'Datte', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/datte.jpg', price: 2)
Ingredient.create(name: 'Endive', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/endive.jpg', price: 2)
Ingredient.create(name: 'Epinard', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/epinard.jpg', price: 2)
Ingredient.create(name: 'fenouil', family: 'légume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/fenouil.jpg', price: 2)
Ingredient.create(name: 'Figue', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/figue-fraiche.jpg', price: 2)

Ingredient.create(name: 'Fraise', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/fraise.jpg', price: 2)
Ingredient.create(name: 'Fraise des bois', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/fraise-des-bois.jpg', price: 2)
Ingredient.create(name: 'Framboise', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/framboise.jpg', price: 2)
Ingredient.create(name: 'Fruit de la passion', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/fruit-de-la-passion.jpg', price: 2)
Ingredient.create(name: 'Grenade', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/grenade.jpg', price: 2)

Ingredient.create(name: 'Groseille', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/groseille.jpg', price: 2)
Ingredient.create(name: 'Groseille à maquereau', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/groseille-a-maquereau.jpg', price: 2)
Ingredient.create(name: 'Haricot', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/haricot.jpg', price: 2)
Ingredient.create(name: 'Kaki', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/kaki.jpg', price: 2)
Ingredient.create(name: 'Kiwi', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/kiwi.jpg', price: 2)

Ingredient.create(name: 'Kumquat', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/kumquat.jpg', price: 2)
Ingredient.create(name: 'Laitue romaine', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/laitue-romaine.jpg', price: 2)
Ingredient.create(name: 'Litchi', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/litchi.jpg', price: 2)
Ingredient.create(name: 'Mâche', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/mache.jpg', price: 2)
Ingredient.create(name: 'Maïs', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/mais.jpg', price: 2)

Ingredient.create(name: 'Mandarine', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/mandarine.jpg', price: 2)
Ingredient.create(name: 'Mangue', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/mangue.jpg', price: 2)
Ingredient.create(name: 'Marron', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/marron.jpg', price: 2)
Ingredient.create(name: 'Melon', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/melon.jpg', price: 2)
Ingredient.create(name: 'mirabelle', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/mirabelle.jpg', price: 2)

Ingredient.create(name: 'Mûre', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/mure.jpg', price: 2)
Ingredient.create(name: 'Myrtille', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/myrtille.jpg', price: 2)
Ingredient.create(name: 'Navet', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/navet.jpg', price: 2)
Ingredient.create(name: 'Nectarine', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/nectarine.jpg', price: 2)
Ingredient.create(name: 'Noisette', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/noisette.jpg', price: 2)

Ingredient.create(name: 'Noix', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/noix.jpg', price: 2)
Ingredient.create(name: 'Oignon', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/oignon.jpg', price: 2)
Ingredient.create(name: 'Orange', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/orange.jpg', price: 2)
Ingredient.create(name: 'Orange sanguine', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/orange-sanguine.jpg', price: 2)
Ingredient.create(name: 'Pamplemousse', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/pamplemousse.jpg', price: 2)

Ingredient.create(name: 'Panais', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/panais.jpg', price: 2)
Ingredient.create(name: 'Papaye', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/papaye.jpg', price: 2)
Ingredient.create(name: 'Pastèque', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/pasteque.jpg', price: 2)
Ingredient.create(name: 'Pâtisson', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/patisson.jpg', price: 2)
Ingredient.create(name: 'Pêche', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/peche.jpg', price: 2)

Ingredient.create(name: 'Petit oignon blanc', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/petit-oignon-blanc.jpg', price: 2)
Ingredient.create(name: 'petit pois', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/petit-pois.jpg', price: 2)
Ingredient.create(name: 'Poire', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/poire.jpg', price: 2)
Ingredient.create(name: 'Poireau', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/poireau.jpg', price: 2)
Ingredient.create(name: 'Pois mange-tout', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/pois-mange-tout.jpg', price: 2)

Ingredient.create(name: 'Poivron', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/poivron.jpg', price: 2)
Ingredient.create(name: 'Pomme', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/pomme.jpg', price: 2)
Ingredient.create(name: 'Pomme de terre', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/pomme-de-terre.jpg', price: 2)
Ingredient.create(name: 'Potimarron', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/potimarron.jpg', price: 2)
Ingredient.create(name: 'Potiron', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/potiron.jpg', price: 2)

Ingredient.create(name: 'Prune', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/prune.jpg', price: 2)
Ingredient.create(name: 'Quetsche', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/quetsche.jpg', price: 2)
Ingredient.create(name: 'Radis', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/radis.jpg', price: 2)
Ingredient.create(name: 'Radis long', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/radislong.jpg', price: 2)
Ingredient.create(name: 'Raisin', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/raisin.jpg', price: 2)

Ingredient.create(name: 'Reine-claude', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/reine-claude.jpg', price: 2)
Ingredient.create(name: 'Rhubarbe', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/rhubarbe.jpg', price: 2)
Ingredient.create(name: 'Salsifis', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/salsifis.jpg', price: 2)
Ingredient.create(name: 'Tomate', family: 'fruit', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/tomate.jpg', price: 2)
Ingredient.create(name: 'Topinambour', family: 'legume', remote_picture_url:'https://www.fruits-legumes.org/fruits-legumes-images/topinambour.jpg', price: 2)

#viande
Ingredient.create(name: 'jambon', family: 'viande', remote_picture_url:'http://www.hotel-r.net/im/hotel/nl/jambon.jpg', price: 4)
Ingredient.create(name: 'poulet', family: 'viande', remote_picture_url:'http://www.idealwine.net/wp-content/uploads/2015/09/LE-poulet-roti.jpg', price: 4)
Ingredient.create(name: 'steack', family: 'viande', remote_picture_url:'http://oxygenfit.com.au/wp-content/uploads/2012/01/steak.jpg', price: 4)
Ingredient.create(name: 'dinde', family: 'viande', remote_picture_url:'http://www.jds.fr/medias/image/choisir-sa-dinde-de-noel-3295-1200-630.jpg', price: 4)
Ingredient.create(name: 'mouton', family: 'viande', remote_picture_url:'http://www.maquetteweb.e-cd.us/inside-rdc/image/data/produits/mouton-copy.jpg', price: 4)

#autre
Ingredient.create(name: 'riz', family: 'féculent', remote_picture_url:'http://img.radio-canada.ca/2016/07/13/1250x703/160713_360n2_pie-riz_sn1250.jpg', price: 3)
Ingredient.create(name: 'pates', family: 'féculent', remote_picture_url:'http://www.minceurmoinscher.com/ori-tagliolini-lineadiet-x-7-139.jpg', price: 3)
Ingredient.create(name: 'vermicelle', family: 'féculent', remote_picture_url:'http://files.kitchenbowl.com/recipe/LgfwvOznK9/step-4/soak-rice-vermicelli-till-soft-about-15--thumb.jpg', price: 3)
Ingredient.create(name: 'epices', family: 'epices', remote_picture_url:'http://media-cache-ec0.pinimg.com/736x/6a/44/79/6a447915f86669f587b073752650c299.jpg', price: 3)

Ingredient.create(name: 'algue', family: 'féculent', remote_picture_url:'https://www.acteurdurable.org/wp-content/uploads/2009/06/wakame.jpg', price: 3)
Ingredient.create(name: 'creme fraiche', family: 'laitier', remote_picture_url:'https://www.dairygoodness.ca/var/ezflow_site/storage/images/dairy-goodness/home/recipes/creme-fraiche/8183566-13-eng-CA/creme-fraiche.jpg', price: 3)
Ingredient.create(name: 'lait', family: 'laitier', remote_picture_url:'http://static.produits-laitiers.com/wp-content/uploads/2013/05/bouteille.jpg', price: 3)
Ingredient.create(name: 'pain', family: 'féculent', remote_picture_url:'http://www.baeckerei-pass.de/content/produkte/schweizer-brot.png', price: 3)
Ingredient.create(name: 'gruyère', family: 'féculent', remote_picture_url:'http://images.wisegeek.com/slice-of-gruyere-cheese.jpg', price: 3)

Ingredient.create(name: 'fromage', family: 'laitier', remote_picture_url:'https://upload.wikimedia.org/wikipedia/commons/7/78/Emmental_%28fromage%29_02.jpg', price: 5)


 User.create!(email:'a@a.a', username: 'utilisateur1', password:'azerty', password_confirmation:'azerty')
 User.create!(email:'b@b.b', username: 'utilisateur2', password:'qwerty', password_confirmation:'qwerty')
 User.create!(email:'c@c.c', username: 'utilisateur3', password:'azerty', password_confirmation:'azerty')
 User.create!(email:'d@d.d', username: 'utilisateur4', password:'qwerty', password_confirmation:'qwerty')


Recipe.create(name:'hachis parmentier', description:"Plat composé de purée de pommes de terre à laquelle on mélange de la viande hachée (du boeuf). Il est très apprécié pour sa simplicité et parce qu'il permet d'utiliser les restes de boeuf d'un autre plat, comme le pot-au-feu par exemple.", remote_picture_url:'https://img2.topsante.com/var/topsante/storage/images/nutrition-et-recettes/recettes/hachis-parmentier/48692-2-fre-FR/Hachis-Parmentier_exact1024x768_l.jpg', time:"45",price: 7 , user_id:1)
Recipe.create(name:'Tiramisu', description:"Le tiramisu (de l'italien « tiramisù » [ˌtiramiˈsu], littéralement « tire-moi vers le haut », « remonte-moi le moral », « redonne-moi des forces ») est une pâtisserie et un dessert traditionnel de la cuisine italienne.", remote_picture_url:'http://3.bp.blogspot.com/-VUkiGGOcsIs/UWE2oPW4YjI/AAAAAAAABrk/od-a2eOdLaM/s1600/tiramisu.jpg', time:"50",price: 12 , user_id:2)
Recipe.create(name:'croissant', description:"Un croissant est une viennoiserie à base d'une pâte levée feuilletée spécifique, la pâte à croissant, qui comporte de la levure et une proportion importante de beurre.", remote_picture_url:'https://bridor.com/wp-content/uploads/product-images/59101-11.png', time:"30",price: 4 , user_id:3)
Recipe.create(name:'bo-bun', description:"Le terme « bobun » n’est cependant pas vietnamien, probablement emprunté et modifié par les voisins cambodgiens ou laotiens. Le terme exact est bún bò car en vietnamien, le terme désignant le plat principal doit précéder l’accompagnement. Les plats principaux sont : le riz, les vermicelles de riz, les nouilles. Les accompagnements constituant les variantes sont les types de viandes, poissons, légumes. =Ainsi par exemple pour désigner les nouilles au poulet en vietnamien mì gà, littéralement (« nouilles poulet »).", remote_picture_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Bun_Bo_Nam_Bo.jpg/800px-Bun_Bo_Nam_Bo.jpg', time:"45",price: 7 , user_id:4)
Recipe.create(name:'fondu', description:"Une fondue est une spécialité culinaire suisse à base de fromage1.", remote_picture_url:'https://image.afcdn.com/recipe/20161130/59380_w420h344c1cx2808cy1872.jpg', time:"25",price: 14 , user_id:1)
Recipe.create(name:'raclette', description:"La raclette (Bratchäs, « fromage » rôti, en suisse allemand) est d'une part un fromage (le ou la raclette) originaire du canton du Valais en Suisse1, et d'autre part, une recette de cuisine traditionnelle et emblématique de la cuisine suisse, connue dans le monde entier, variante des fondues au fromage, à base de ce fromage fondu, raclé au fur et à mesure qu’il fond2, et servie traditionnellement avec des pommes de terre en robe des champs et accompagnée de légumes au vinaigre (cornichons, oignons)3.", remote_picture_url:'https://image.afcdn.com/recipe/20160920/1030_w420h344c1cx1824cy1368.jpg', time:"45",price: 15 , user_id:4)

IngredientToRecipe.create(recipe_id:1, ingredient_id:14 , quantity:4)
IngredientToRecipe.create(recipe_id:1, ingredient_id:2 , quantity:2)
IngredientToRecipe.create(recipe_id:1, ingredient_id:29 , quantity:500)
IngredientToRecipe.create(recipe_id:1, ingredient_id:38 , quantity:400)

IngredientToRecipe.create(recipe_id:2, ingredient_id:6 , quantity:4)
IngredientToRecipe.create(recipe_id:2, ingredient_id:2 , quantity:7)
IngredientToRecipe.create(recipe_id:2, ingredient_id:17 , quantity:50)
IngredientToRecipe.create(recipe_id:2, ingredient_id:34 , quantity:4)

IngredientToRecipe.create(recipe_id:3, ingredient_id:31 , quantity:18)
IngredientToRecipe.create(recipe_id:3, ingredient_id:15 , quantity:6)
IngredientToRecipe.create(recipe_id:3, ingredient_id:1 , quantity:1)
IngredientToRecipe.create(recipe_id:3, ingredient_id:4 , quantity:5)

IngredientToRecipe.create(recipe_id:4, ingredient_id:30 , quantity:4)
IngredientToRecipe.create(recipe_id:4, ingredient_id:25 , quantity:2)
IngredientToRecipe.create(recipe_id:4, ingredient_id:24 , quantity:10)
IngredientToRecipe.create(recipe_id:4, ingredient_id:39 , quantity:5)

IngredientToRecipe.create(recipe_id:5, ingredient_id:23 , quantity:8)
IngredientToRecipe.create(recipe_id:5, ingredient_id:3 , quantity:2)
IngredientToRecipe.create(recipe_id:5, ingredient_id:19 , quantity:1)
IngredientToRecipe.create(recipe_id:5, ingredient_id:16 , quantity:1)

IngredientToRecipe.create(recipe_id:6, ingredient_id:7, quantity:7)
IngredientToRecipe.create(recipe_id:6, ingredient_id:8 , quantity:7)
IngredientToRecipe.create(recipe_id:6, ingredient_id:10 , quantity:5)
IngredientToRecipe.create(recipe_id:6, ingredient_id:11 , quantity:1)
