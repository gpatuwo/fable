# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'Grace', password: "asdfasdf")
User.create(username: 'April Bloomfield', password: "asdfasdf")
User.create(username: 'Food52', password: "asdfasdf")
User.create(username: 'Nigel Slater', password: "asdfasdf")
User.create(username: 'Jamie Oliver', password: "asdfasdf")


Vegetable.create(name: 'Artichokes', description: 'It’s easy to forget that artichokes are largely a California phenomenon. Any dinner guest from outside the state will remind you of this: just notice the bewildered look on their faces as the artichoke is placed in front of them, followed by, “How do I eat this?” This is not an unreasonable question. The easiest way would be to steam it and then dip the leaves in a delicious sauce or aioli.', jan: false, feb: false, mar: true, apr: true, may: true, jun: true, jul: false, aug: false, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473114555/artichokes_sdmhoi.jpg')

Vegetable.create(name: 'beets', description: "Beets were first cultivated around the Mediterranean and Atlantic coasts of Europe, and eventually spread to all parts of the world, but were descended from the sea beet, a wild seashore plant of which only the leaves and stems were eaten. Now, we consume the entire vegetable; the leaves, stems, and the root itself.

Several different of beets are commonly grown: the traditional red beet, the pink chioggia beet, and the yellow golden beet. They are also grown in several different sizes and shapes. When buying beets, it is important to inspect the root for a firm and solid surface. The leaves and stalks should also be hearty and cleaned with cool water before cooking and can be store in the fridge for up to 5 days. If the leaves start to go bad, they can be cut from the root, which will last for weeks in a cool place.

There are many different ways to cook beets; their earthy flavor is nicely offset by vinegar, meaning they are commonly eaten cold in salads with vinaigrettes. Leaving their skin on while cooking will preserve the color. You can test its doneness by sticking a knife through the vegetable, near its cap, which should pierce easily, its skin, should also be easier to peel off when this vegetable is fully cooked.", jan: true, feb: true, mar: true, apr: true, may: true, jun: true, jul: true, aug: true, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473114663/gold_beets_fyaynh.jpg')

Vegetable.create(name: 'Cardoons', description: "The Cardoon is a thistle-like plant in the same family as the artichoke, which explains why its stalk is so similar in flavor. The cardoon is a very popular ingredient in Mediterranean style cooking, where it is native and has been cultivated since ancient times. However, cardoons are considered a weed in Australia and California because of its invasive nature and adaptability to dry climates. In Portugal, cardoons are used as a vegetarian source of enzymes for cheese production, which gives the cheese a distinct earthy and herbaceous taste.

Cardoons are only edible when cooked. To cook cardoons, trim off any leaves or thorns, and peel the stalks with a vegetable peeler to remove the indigestible fibers. Cardoons discolor when cut; place cut pieces in cold water with lemon juice to keep them from turning brown. Cardoons can be braised, sautéed, boiled in soups and stews, or dipped in batter and deep fried. Depending on the age of the stalks, they can take up to an hour to get soft and tender enough to eat.", jan: true, feb: true, mar: true, apr: true, may: true, jun: true, jul: false, aug: false, sep: false, oct: false, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473114881/cardoons_ctce1n.jpg')

Vegetable.create(name: 'Chicory', description: "Chicory, or cichorium intybus, is a bushy perennial herb with blue, lavender, or occasionally white flowers. It grows as a wild plant on roadsides in its native Europe, and in North America and Australia. The chicory root is also often ground and used as a coffee substitute or roasted and added to beer to give it a unique flavor.

Commonly cultivated varieties include Belgian endive, radicchio, and puntarelle. Belgian endive (not to be confused with endive, a close relative of the chicory), is a crisp, pale yellow chicory with bitter leaves that are excellent grilled or stuffed and served as an hors d’oeuvre.

Often referred to as Italian chicory, radicchio is a dark maroon color with leaves that have white veins and a bitter taste that can be reduced through cooking. Different varieties are named according to the Italian region from which they originated. The most well-known variety is the Chioggia, which can grow to the size of the grapefruit. In Italy, radicchio is often eaten grilled or cooked with olive oil and in the United States, the leaves are often eaten raw in salads. Radicchio can also be found mixed in pastas, pizzas, and risottos.

The slender, serrated leaves of the puntarelle have many of the same distinctive tastes and characteristics as its relatives. Its crisp leaves are said to have the spiciness of arugula with hints of fennel, and the shoots have the texture of celery. Puntarelle is traditionally used raw in salads and is classically served with a heavy dressing, often with anchovies, that helps sweeten its bitter notes. Some chefs recommend soaking the leaves in water for a few hours before cooking, allowing the leaves to curl, becoming juicier and less tart.", jan: true, feb: true, mar: true, apr: true, may: true, jun: true, jul: true, aug: true, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473115223/chicory_xfuaeg.jpg')

Vegetable.create(name: 'Eggplant', description: "The eggplant, or aubergine as it is called in France, is a vegetable valued for its taste and texture. However, early varieties of eggplant didn’t have the same culinary appeal as they do today. Due to its bitter taste, Europeans tended to grow eggplants for their decorative properties rather than their culinary use. It wasn’t until new varieties were developed in the 18th century that the eggplant lost a bit of its sour flavor and reputation.

One of the most popular varieties of eggplant in North America is ‘egg-shaped,’ with its glossy, purple skin. In addition to this variety, eggplants come in a range of other colors, like lavender, jade green, orange, and yellow-white, as well as in sizes and shapes that range from a small tomato to a large zucchini.

When choosing eggplants, pick those that are heavy for their size with skin that is smooth, shiny, and brightly colored. To test the ripeness, gently press the skin with your thumb. A ripe eggplant will spring back and not leave an indentation. Unwashed eggplant can be stored in a cool place or inside the refrigerator crisper for up to 5 days.", jan: false, feb: false, mar: false, apr: false, may: false, jun: true, jul: true, aug: true, sep: true, oct: true, nov: false, dec: false, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473115361/eggplant_lr77uh.jpg')

Vegetable.create(name: 'Kohlrabi', description: "Also known as the cabbage turnip, the little known Kohlrabi gets its name from the German 'kohl' for cabbage and the Latin 'rapa' for turnip. It is a cruciferous vegetable, along with cabbage, kale, cauliflower and broccoli. It is about the size of an orange, rounded, and light purple or green, with firm branches growing from the top.

Kohlrabi is available year-round, but shines in winter months. The leaves taste like kale, collards or cabbage with a milder, slightly sweeter flavor. Kohlrabi bulbs are more flavorful and tender when they are small and have a hint of radish and cucumber flavors as well. Purple kohlrabi tends to pack a slightly spicier punch. In terms of cooking, kohlrabi can be steamed, boiled, or added to soups. And even though the leaves and stems are edible, Kohlrabi is often sold without the tops.

Farmers Market Tip:
Choose smooth bulbs. The smaller bulbs are more flavorful. If the leaves are still attached, they should be firm and fresh. Kohlrabi bulbs will keep up to a week or more in the refrigerator.", jan: true, feb: true, mar: true, apr: true, may: false, jun: false, jul: false, aug: false, sep: false, oct: false, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473115547/Kohlrabi_e7mpe3.jpg')

Vegetable.create(name: 'Mizuna', description: 'Mizuna probably originated in China but has been grown in Japan since ancient times. It has feathery, frond-like bright green leaves that taste similar to arugula but are milder and sweeter. It’s often eaten raw in salads, but the leaves can also be steamed, sautéed, or pickled.', jan: true, feb: true, mar: true, apr: true, may: true, jun: true, jul: true, aug: true, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1472861969/Mizuna_mwjzha.jpg')

Vegetable.create(name: 'Parsnips', description: 'You may have already guessed it by the shape, size, and color, but just to be clear, the parsnip is indeed a close relative of the carrot. Until the potato arrived to the New World, the parsnip (along with other root vegetables, like the turnip) were used in soups, stews, and stocks to develop flavor and act as a thickening agent.

While parsnips originated in the Mediterranean and were the size of a baby carrot, explorers and settlers found that they grew larger and more successfully the farther north they travelled. Parsnips seeds are typically planted during the fall and winter months, and it is the frost that occurs during these seasons that helps the plant develop its flavor.', jan: true, feb: true, mar: true, apr: true, may: true, jun: false, jul: false, aug: false, sep: false, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473115863/parsnips_p8ivbl.jpg')

Vegetable.create(name: 'radishes', description: "Purple, white, red, and black - radishes come in many shapes and sizes. As a member of the Brassicaceae family (along with cabbage and cauliflower), the radish is an edible root plant which was originally domesticated in Europe. Due to its rapid maturation (many varieties are ready for harvest in a matter of weeks), the radish is a popular plant for children’s gardens. They grow best in the sunlight and sandy soils, and like other root crops, they thrive in soil that has been tilled. However, radishes are often used in untilled pastures to reverse the effects of compaction.

While the taproot of the radish is the most popular part for cooking, but the rest of the plant (leaves and stem) can be eaten as well and are often prepared like other leafy greens. Radish varieties are broken down by season—winter, spring, summer, and fall. The spring and summer varieties are generally smaller and have a three- to four-week cultivation cycle. They include the white-tipped French Breakfast radish and the Easter Egg radish, which comes in several different colors. Winter and fall radishes include the spicier, rough-skinned black radish as well as daikon, which is commonly used in Asian cuisine.", jan: true, feb: true, mar: true, apr: true, may: true, jun: true, jul: true, aug: true, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1472862017/radishes_multicolor_euy9o4.jpg')


Vegetable.create(name: 'sunchokes', description: "Sunchokes are also known as Jerusalem artichokes. As a member of the Sunflower family, they were one of the few native tubers of North America; Native Americans enjoyed eating sunchokes for centuries before the colonialists settled. Superstitions about the starchy ginger-shaped tuber kept Europeans from cultivating them until the threats were disproved.

Sunchokes are less known today, but appear on menus around the Bay Area throughout the Fall and Winter. Their taste falls somewhere between an artichoke heart and a sunflower seed, with a crisp texture and nutty flavor. Chop them into salads, dips, salsa, chutney, or light marinades. Cook them with grilled poultry or fish, or soups, or sauces. When you consider using jicama, water chestnuts, or almonds, try substituting this tuber.

Diabetics in particular will benefit from eating sunchokes because the insulin they contain breaks down into fructose instead of glucose during digestion, making them an excellent alternative to starchy foods such as potatoes.

Farmers market tip: Choose chokes that are smooth, not dry or wrinkled.", jan: true, feb: true, mar: true, apr: true, may: false, jun: false, jul: false, aug: false, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473116211/sunchokes_omgptl.jpg')

Vegetable.create(name: 'Tatsoi', description: 'Tatsoi’s round, dark green leaves grow close to the ground in tight little circles, creating pretty rosettes. The tender greens have a mustardy taste and can be eaten raw or lightly cooked in soups.', jan: true, feb: true, mar: true, apr: true, may: false, jun: false, jul: false, aug: false, sep: false, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1472859289/tatsoi_aulvum.png')

Vegetable.create(name: 'tomatillos', description: "If you love green salsa, then you should get to know tomatillos. Dating back to 800 B.C., when the Aztecs domesticated them, tomatillos are considered a key ingredient in Latin-American cooking. Also called “tomate verde” in Mexico, the fruit of the tomatillo is generally firm, green, about the size of a large cherry, and meatier than a tomato. They grow to maturity inside a light brown, papery husk. The husk is a good indicator of freshness, but is inedible and should be removed before use.

The fruit of the tomatillo can be used as a base for chili sauces, known generically as salsa verde (green sauce), and will help lessen the pepper’s hot flavor as well as stimulate the appetite. Because of their tart quality, tomatillos can be cooked, eaten raw, minced or pureed to accompany prepared dishes. Tomatillo’s also makes a great addition to tortilla soup or guacamole.", jan: false, feb: false, mar: false, apr: false, may: false, jun: true, jul: true, aug: true, sep: true, oct: true, nov: true, dec: false, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473116707/Tomatillos_oxoerg.jpg')




Recipe.create(
title: "Artichokes with Parsley and Preserved Lemon Pesto",
image: "https://images.food52.com/AYocb0Q6D8NuxXy-nfb03yNlbWw=/753x502/7e0526b7-1874-4cc4-8afb-20e6e43c54e7--Artichokes_with_gremolata.jpg",
ingredients: "
1/2	cup parsley (I like curly leaf, but flat leaf would probably be fine)
1	teaspoon kosher salt
3	cloves garlic
Peel	of half a preserved lemon
4	medium artichokes (get ones with fat, long stems)",
instructions: "
1. Have some acidulated water ready (water with some lemon or vinegar in it) or a fresh lemon. Trim the artichoke of its leaves, the choke, and the tough woody exterior of the stem. Rub the cut areas once in a while with the lemon or dip in the acidulated water.

2. When the artichoke is trimmed, cut it into small chunks (~1/8 inch dice) and leave in the acidulated water (or mix with lemon juice) while you make the pesto.

3. Chop together the parsley, garlic, preserved lemon (or lemon zest), and salt. Chopping the salt with the other ingredients makes the chopping less sticky. I like it slightly chunkier than you can get with a food processor, but if you don't have a big, curved chef's knife, then a processor would work fine.

4. Drain the artichoke pieces and rinse them off if they've got lemon pips stuck to them. In a medium skillet, heat about a tablespoon of oil over medium-high heat. Saute the artichoke bits until they are softened and beginning to brown.

5. Add the pesto, mix thoroughly, and saute for another minute or two until fragrant. The garlic will still be fairly raw and spicy. Can be good with a little crumbled feta or chunks of goat cheese.",
author_id: 3)

Recipe.create(
title: "Spring Vegetarian Cassoulet",
image: "https://images.food52.com/64wPyXV71UGQhpfz6g0oBSiWZb0=/753x502/26560c92-153e-42ba-82b3-9ad1eae500ad--2016-0309_easter-spring-vegetarian-cassoulet_james-ransom_045.jpg",
ingredients: "
1 1/2	cups dried cannellini beans, soaked overnight in water (if you are a cassoulet purist, use tarbais beans)
2	lemons, divided
5	globe artichokes
1/2	cup olive oil
4	cloves garlic, divided
1/4	teaspoon dried chile flakes
2	swipes lemon peel (obtained using a vegetable peeler)
8	sprigs thyme, divided
Salt
Freshly ground black pepper
1/2	cup white wine
2	leeks
4	cups water
1	bay leaf
1	tablespoon butter
1/2	cup panko bread crumbs
4	cups loosely packed sorrel leaves (use baby spinach if sorrel is unavailable)",
instructions: "
1. Fill a large mixing bowl with water. Squeeze the juice of 1 lemon into the water. When you clean the artichokes, put them into this water—the lemon in it will keep the artichoke hearts from turning brown.

2. Quick guide to cleaning artichokes: First, put on rubber gloves, because the artichoke leaves make everything taste bitter, and you don’t want that on your fingers (alternatively, just wash your hands and your cutting board well when you’re done cleaning the artichokes). Rip off the outer leaves of the artichoke until the leaves look light green or yellow. Using a sharp knife, cut off the leaves at their base. Discard the leaves. The choke (the fuzzy prickles in the center of the artichoke) should now be exposed. Use a melon baller to remove and discard the choke. Using a paring knife, separate the stem from the artichoke heart. Save the stem. Remove any dark green from the artichoke heart using the paring knife. The artichoke heart should now be clean, so drop it in the lemon water. Use the paring knife to remove the fibrous outer layer of the stem. The inside of the stem should be a lighter color than the fibrous outside. When the stem is clean, add it to the lemon water.

3. Thinly slice 3 cloves of garlic and set them aside. Set a large skillet over low heat. Add the olive oil, along with the thinly sliced garlic, chile flakes, lemon peel, and 4 sprigs of thyme. Remove the cleaned artichoke hearts and stems from the lemon water, and cut them into bite-size pieces. Add the artichoke to the skillet and adjust the heat to medium. Season with salt and freshly ground black pepper. Cook, stirring occasionally, until the artichokes begin to turn tender (after approximately 10 minutes, taste a piece to see how tender it is). When the artichokes are just tender, add the white wine. Adjust the heat to high and cook for approximately 2 minutes, until the wine has reduced by half. Remove the skillet from the heat, and discard the lemon peel and thyme sprigs. Set a fine mesh strainer over a mixing bowl. Pour the contents of the skillet into the strainer. Transfer the contents of the strainer to a container and store in the refrigerator. Transfer the remaining liquid from the mixing bowl to a large pot.

4. Remove the roots and dark green outer leaves from the leeks. Slice the leeks in half lengthwise and clean them with cold water to remove any dirt. Slice the leeks into thin half-moons. Set the pot with the artichoke oil over medium heat. Add the leeks and cook, stirring occasionally, until they begin to soften. Drain the beans of their soaking water and add the beans to the pot. Add 4 cups of fresh water to the pot and bring the water to a boil. Adjust the heat so that the water is gently simmering. Add the remaining 4 sprigs of thyme, along with the bay leaf. Let the beans cook for at least 2 hours, until they taste soft and creamy. There should be a little liquid left in the pot (it should resemble stew). If too much liquid evaporates during the cooking process, add more water.

5. While the beans are cooking, set a small skillet over medium heat. Add the butter. When the butter is melted and hot, add the breadcrumbs. Stir the breadcrumbs regularly until they become lightly toasted. Rub 1 clove of garlic against a fine microplane, and add the microplaned garlic to the skillet. Stir for 1 additional minute, until the garlic is fully mixed in with the toasted breadcrumbs. Set the garlic breadcrumbs aside.

6. When the beans are soft, creamy, and fully cooked, season them with salt and freshly ground black pepper. Taste the beans. Continue to adjust the seasoning until the beans taste delicious. Add the cooked artichokes, along with the sorrel and the lemon juice. Stir regularly over low heat until the sorrel just begins to wilt, approximately 2 minutes. Serve the cassoulet garnished with a sprinkle of garlic breadcrumbs, and enjoy.",
author_id: 3)

Recipe.create(
title: "Tarragon-Lemon Aioli Served with Grilled Artichokes",
image: "https://images.food52.com/yPCx1RCVCk6gakrRSLYW83s-0uw=/753x502/8c95a455-22ad-44e2-aa36-03c374ccac3a--grilled-artichokes-tarragon-lemon-aioli_food52_mark_weinberg_14-07-01_0358.jpg",
ingredients: "
For the grilled artichokes

4	large globe artichokes
1	lemon, quartered
3/4	cup olive oil
4	cloves garlic, peeled and chopped
Salt and pepper

For the tarragon-lemon aioli:

6	garlic cloves, peeled
2	fresh egg yolks (at room temperature)
1	cup olive oil
1	tablespoon fresh tarragon leaves, chopped
1/2	teaspoon sea salt
1	teaspoon fresh lemon juice",
instructions: "
For the grilled artichokes:
1. Trim the artichokes: Remove all the tough outer leaves and then, with a very sharp knife, cut off the top of the choke (about an inch) to remove the sharp tips. If you are lucky enough to have a artichoke with stalk, peel the stalk with a vegetable peeler.

2. Cut the choke in half lengthwise. With a spoon, scoop out the hairy choke, but be careful not to remove the heart. Put the chokes in a bowl with some lemon juice so they do not turn brown.

3. Heat your grill to high. In a pot of water, squeeze half of the lemon. Add the chokes and simmer for about 15 minutes until they are tender. You can also steam them, if you prefer. Remove the chokes from the water and drain.

4. Mix together the oil and garlic, then brush the mixture on the artichokes and place them on the hot grill.

5. Continue to brush the chokes with the garlic-oil mixture and keep turning them so that they do not burn. After a few minutes, remove them from the grill. Sprinkle with a little sea salt.

For the tarragon-lemon aioli:
1. Place the tarragon leaves, garlic cloves, and salt in a clean mortar. (I always fill mine with hot water, pour it out, and dry it before using.)

2. Begin pounding with the pestle until the ingredients start to form an emulsion. This will take several minutes.

3. Add the egg yolks and continue to mix with the pestle.

4. When the egg yolks are incorporated, SLOWLY start to add the olive oil a few drops at a time; this will start to emulsify.

5. When all the olive oil has been added and you have a beautiful green mayonnaise, add the lemon juice and incorporate it into the emulsion. Then let it refrigerate and rest for a while.

6. This is the dipping sauce for the artichokes, and it should be made ahead of time. It's also good on a lot of other vegetables (like grilled fennel).",
author_id: 3)

Recipe.create(
title: "Grilled Vegetable Vinaigrette",
image: "https://images.food52.com/5zq4fXO8mQ7RAAIPROG1gVOieqw=/753x502/abcc7d3b-3bc6-4925-a8d5-a11dd672a21f--2016-0719_summer-grilled-vegetable-vinaigrette_james-ransom-281.jpg",
ingredients: "
1	medium fennel bulb, outer layer, stalks and fronds removed, root end trimmed of brown bits
1	small red onion (about 1/4 pound), cut into 1/2-inch thick rounds
1	small head radicchio (outermost leaves removed, bottom trimmed of brown bits, quartered lengthwise) and cut into 1/2-inch thick wedges
1/2	cup extra-virgin olive oil
3	tablespoons sherry vinegar
1	teaspoon Maldon or another flaky sea salt
1	small garlic clove, very finely chopped
A five-finger pinch of fresh mint leaves
A five-finger pinch of fresh marjoram leaves",
instructions: "
1. Halve the fennel bulb lengthwise and cut each halfway through the root nub (so the wedges stay intact) into about 1-inch-thick wedges.

2. Heat a grill or heavy grill pan over high heat until it’s good and hot, about 5 minutes. Reduce heat to medium and add fennel, onion and radicchio. Cook, turning vegetables over occasionally, until fennel and onion are lightly charred in spots and cooked through, but still have a little bite, about 20 minutes. The radicchio is done when the stems are tender but still have a little bite, the leaves are wilty, the tips crackly, about 15 to 20 minutes.

3. As they finish, pop the grilled vegetables into a bowl and cover with plastic wrap until they’ve cooled fully. They’ll steam a bit and cook some more as they cool. Once they’ve all cooled, chop the vegetables into a mix of about 1/2-inch pieces, some smaller and some larger.

4. Pop the vegetables back into the bowl, add the oil, vinegar, salt and garlic, and stir really well. Toss the mint and marjoram together on a cutting board, give them a rough chop and stir them into the dressing. Store leftovers tightly sealed in the fridge for up to 5 days, though the herbs will fade.",
author_id: 2)

Recipe.create(
title: "Extremely Moist Chocolate-Beet Cake",
image: "https://images.food52.com/e_OV0ne8-WUYQR4KzZc59aDUBYg=/753x502/24a3fcb4-9020-4217-9c50-75091cc68138--food52_09-04-12-0044.jpeg",
ingredients: "
8 ounces fresh beets
7 ounces fine dark chocolate (70%)
1/4 cup hot espresso
3/4 cup + 2 tablespoons butter
1 cup + 2 tablespoons all-purpose flour
1 1/4 teaspoons baking powder
3 tablespoons good quality cocoa powder
5 eggs
Scant 1 cup superfine sugar
Crème fraîche and poppy seeds, to serve",
instructions: "
1. Lightly butter an 8-inch springform cake pan and line the base with a round of baking parchment. Heat the oven to 350 degrees F.

2. Cook the beets, whole and unpeeled, in boiling unsalted water. Depending on their size, they will be tender within 30 to 40 minutes. Young ones may take slightly less. Drain them, let them cool under running water, then peel them, slice off their stem and root, and process in a blender or food processor until a coarse purée.

3. Melt the chocolate, broken into small pieces, in a small bowl set over a pot of simmering water. Don’t stir.

4. When the chocolate looks almost melted, pour the hot espresso over it and stir once. Cut the butter into small pieces -- the smaller the better -- and add to the melted chocolate. Push the butter down under the surface of the chocolate with a spoon (as best you can) and leave to soften.

5. Sift together the flour, baking powder and cocoa. Separate the eggs, putting the whites in a large mixing bowl. Stir the yolks together.

6. Now, working quickly but gently, remove the bowl of chocolate from the heat and stir until the butter has melted into the chocolate. Let sit for a few minutes, then stir in the egg yolks. Do this quickly, mixing firmly and evenly so the eggs blend into the mixture. Fold in the beets. Whisk the egg whites until stiff, then fold in the sugar. Firmly but gently, fold the beaten egg whites and sugar into the chocolate mixture. A large metal spoon is what you want here; work in a deep, figure-eight movement but take care not to over-mix. Lastly, fold in the flour and cocoa.

7. Transfer quickly to the prepared cake pan and put in the oven, decreasing the hea immediately to 325 degrees F. Bake for 40 minutes. The rim of the cake will feel spongy, the inner part should still wobble a little when gently shaken. Test with a cake tester or toothpick too -- if it is still gooey in the center, continue baking just until moist crumbs cling to the tester.

8. Set the cake aside to cool (it will sink a tad in the center), loosening it around the edges with a thin icing spatula after half an hour or so. It is not a good idea to remove the cake from its pan until it is completely cold. Serve in thick slices, with crème fraîche and poppy seeds.",
author_id: 4)



Recipe.create(
title: "Smoked Beets",
image: "https://images.food52.com/sCPZ_UJRfr8KiUGaw_tA4324z1k=/753x502/9fc86702-1661-4f9a-bb3d-aec1654998a1--092711-food52-256.jpg",
ingredients: "
For the smoked beets

8	small beets, with greens if possible
1	small bunch fresh rosemary

For the salad

1	tablespoon red wine vinegar
Extra virgin olive oil
Sea salt and freshly ground black pepper
1 small bunch fresh flat-leaf parsley, leaves picked and roughly chopped
1 small bunch fresh tarragon or basil, leaves picked and roughly chopped
4 heaped tablespoons cottage cheese
Juice and zest from 1/2 lemon, plus more to taste
A few sprigs of fresh thyme, leaves picked",
instructions: "
1. First, light your charcoal barbecue or fire. Wash the beets and snip off the greens, reserving them. Fold a large piece of foil -- about 12-18" (24-36" unfolded), depending on the size of your beets -- in half to form a double layer. Lay the greens, then the beets, then the rosemary on top of the foil. (Note: if you don't have greens with your beets -- or want to save them to cook separately -- that's okay, just make sure the coals are at medium heat, not flaming, when you add your packet of beets.)

2. Roll up the foil, folding in the edges and twisting the ends together. Stab the foil a few times all over with a knife to allow the smoke to get inside and flavor the beets. Lift the rack of your barbecue with tongs and carefully insert your foil package among the coals, making sure you place some coals on top too.

3. Leave it to cook for 30 to 40 minutes, or until the beets are tender, then remove the package and allow it to cool down. Unwrap it and remove the beets, discarding the greens and rosemary sprigs.

4. Once cooled slightly, peel the beets and discard the charred skin. The skins should slip right off, but if they don't, gently scrape them away with the back of a paring knife. Cut the beets into irregular chunks and place in a bowl. Add the vinegar, 3 tablespoons of extra virgin olive oil, plenty of salt and pepper and half the parsley and tarragon. Toss, have a taste and adjust the seasoning if necessary.

5. Put the cottage cheese into a bowl and add the juice and finely grated zest from half your lemon. Stir in 2 glugs of extra virgin olive oil, the thyme leaves and some salt and pepper and gently fold it all together, so the oil and lemon marble through the cottage cheese. Taste the dressing and squeeze in a bit more lemon juice if you like.

6. To serve, divide the dressed beets between four salad plates. Top each plate with a spoonful of cottage cheese dressing. Scatter over the remaining herbs and enjoy!",
author_id: 5)
