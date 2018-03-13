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
Ingredient.create(name: 'champignon', family: 'légume', remote_picture_url:'http://www.voedingswaardetabel.nl/_lib/img/prod/big/champignons.jpg', price: 2)
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
Ingredient.create(name: 'kiwi', family: 'fruit', remote_picture_url:'http://insideiim.com/wp-content/uploads/2013/10/KIIII.jpg', price: 1)
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
Ingredient.create(name: 'algue', family: 'féculent', remote_picture_url:'http://www.crifck.org/docs/environnement/algue_verte.jpg', price: 3)
Ingredient.create(name: 'creme fraiche', family: 'laitier', remote_picture_url:'https://www.dairygoodness.ca/var/ezflow_site/storage/images/dairy-goodness/home/recipes/creme-fraiche/8183566-13-eng-CA/creme-fraiche.jpg', price: 3)

Ingredient.create(name: 'lait', family: 'laitier', remote_picture_url:'http://static.produits-laitiers.com/wp-content/uploads/2013/05/bouteille.jpg', price: 3)
Ingredient.create(name: 'pain', family: 'féculent', remote_picture_url:'http://www.baeckerei-pass.de/content/produkte/schweizer-brot.png', price: 3)
Ingredient.create(name: 'gruyère', family: 'féculent', remote_picture_url:'http://images.wisegeek.com/slice-of-gruyere-cheese.jpg', price: 3)
Ingredient.create(name: 'fromage', family: 'laitier', remote_picture_url:'https://upload.wikimedia.org/wikipedia/commons/7/78/Emmental_%28fromage%29_02.jpg', price: 5)


 User.create!(email:'a@a.a', username: 'utilisateur1', password:'azerty', password_confirmation:'azerty')
 User.create!(email:'b@b.b', username: 'utilisateur2', password:'qwerty', password_confirmation:'qwerty')
 User.create!(email:'c@c.c', username: 'utilisateur3', password:'azerty', password_confirmation:'azerty')
 User.create!(email:'d@d.d', username: 'utilisateur4', password:'qwerty', password_confirmation:'qwerty')



