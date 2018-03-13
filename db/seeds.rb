# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all

#légume
Ingredient.create(name: 'salade', family: 'légume', remote_picture_url:'https://www.academiedugout.fr/images/16397/370-274/ffffff/salade-laitue.jpg?poix=50&poiy=50', price: 1)
Ingredient.create(name: 'tomate', family: 'légume', remote_picture_url:'https://www.lesfruitsetlegumesfrais.com/_upload/cache/ressources/produits/tomate/tomate_-_copie_346_346_filled.jpg', price: 1)
Ingredient.create(name: 'oignon', family: 'légume', remote_picture_url:'http://www.rvprimeurs.fr/images/Image/oignon-rouge.jpg', price: 1)
Ingredient.create(name: 'comcombre', family: 'légume', remote_picture_url:'https://fridg-front.s3.amazonaws.com/media/products/451.jpg', price: 1)
Ingredient.create(name: 'piment', family: 'légume', remote_picture_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/France-Piment_d%27Espelette-2005-08-05.jpg/1200px-France-Piment_d%27Espelette-2005-08-05.jpg', price: 2)
Ingredient.create(name: 'poivron', family: 'légume', remote_picture_url:'https://glossnroses.files.wordpress.com/2013/01/poivron.jpg', price: 2)

Ingredient.create(name: 'carotte', family: 'légume', remote_picture_url:'https://www.passeportsante.net/DocumentsProteus/images/legume-avril-carotte.jpg', price: 2)
Ingredient.create(name: 'poireau', family: 'légume', remote_picture_url:'https://www.saisons-fruits-legumes.fr/www/img/fruitsandvegetables/poireau.jpeg', price: 2)
Ingredient.create(name: 'asperge', family: 'légume', remote_picture_url:'https://www.consoglobe.com/wp-content/uploads/2013/05/asperge-legume-detox-printemps-04.jpg', price: 2)
Ingredient.create(name: 'petit pois', family: 'légume', remote_picture_url:'https://www.natureo-bio.fr/wp-content/uploads/2017/07/FLEG-Laqualite-min.jpg', price: 2)
Ingredient.create(name: 'avocat', family: 'légume', remote_picture_url:'https://www.natureo-bio.fr/wp-content/uploads/2017/07/Avocat-Detoure-min.jpg', price: 2)
Ingredient.create(name: 'butternut', family: 'légume', remote_picture_url:'https://i.ytimg.com/vi/AyPC8U4v59c/maxresdefault.jpg', price: 2)
Ingredient.create(name: 'epinard', family: 'légume', remote_picture_url:'http://www.femmeactuelle.fr/var/femmeactuelle/storage/images/cuisine/guides-cuisine/les-epinards-recettes-epinards-01871/7606890-4-fre-FR/les-epinards.jpg', price: 2)
Ingredient.create(name: 'patate', family: 'légume', remote_picture_url:'http://www.niffylux.com/components/com_virtuemart/shop_image/product/Pomme_de_terre___4b731f2ae278c.jpg', price: 2)
Ingredient.create(name: 'champignon', family: 'légume', remote_picture_url:'http://bodysano.adsyme.netdna-cdn.com/wp-content/uploads/2016/05/champignon-minceur-BodySano.jpg', price: 2)
Ingredient.create(name: 'aubergine', family: 'légume', remote_picture_url:'http://2.bp.blogspot.com/_-IE4plYWsN4/TRInTAXUrMI/AAAAAAAAAHM/WGc9r04bcNg/s1600/Eggplant.jpg', price: 2)

#fruit
Ingredient.create(name: 'pêche', family: 'fruit', remote_picture_url:'http://www.aromemarket.com/542/10-ml-arome-peche-fa-peach-flavor.jpg', price: 1)
Ingredient.create(name: 'poire', family: 'fruit', remote_picture_url:'https://claudiatrupia.files.wordpress.com/2015/01/img_0044.jpg', price: 1)
Ingredient.create(name: 'figue', family: 'fruit', remote_picture_url:'http://healthychallenges.org/wp-content/uploads/2016/06/Mix-minimum-order-5-Free-Shipping-font-b-Ficus-b-font-carica-Seeds-1-Pack-6.jpg', price: 1)
Ingredient.create(name: 'fraise', family: 'fruit', remote_picture_url:'http://www.made-in-togo.com/img/uploads/2014/07/FRAISE_TOGO.jpg', price: 1)
Ingredient.create(name: 'framboise', family: 'fruit', remote_picture_url:'http://www.cuisine-de-bebe.com/wp-content/uploads/framboise.jpg', price: 1)
Ingredient.create(name: 'orange', family: 'fruit', remote_picture_url:'http://images6.fanpop.com/image/photos/34500000/Orange-Fruit-orange-34512922-2738-1825.jpg', price: 1)
Ingredient.create(name: 'grenade', family: 'fruit', remote_picture_url:'http://workouttrends.com/wp-content/uploads/2014/08/Secret-Benefits-Of-The-Red-Fruit.jpg', price: 1)
Ingredient.create(name: 'cerise', family: 'fruit', remote_picture_url:'http://media02.hongkiat.com/fruits-vege-stock-photos/highres/fruitsvege-stock04.jpg', price: 1)
Ingredient.create(name: 'kiwi', family: 'fruit', remote_picture_url:'https://statics.monoprix.fr/course/g_2412310_kiwi-variete-vert-hayward-categorie-1.jpg?t=20150925021954', price: 1)
Ingredient.create(name: 'mangue', family: 'fruit', remote_picture_url:'https://www.hd-wallpapersdownload.com/script/mango-wallpaper/mango-images-fruit-wallpaper.jpg', price: 1)

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
