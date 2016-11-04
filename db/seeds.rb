# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Comment.destroy_all
Vegetable.destroy_all
Recipe.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('vegetables')
ActiveRecord::Base.connection.reset_pk_sequence!('recipes')
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('comments')

User.create(username: 'Grace', password: "asdfasdf")
User.create(username: 'April Bloomfield', password: "asdfasdf")
User.create(username: 'Food52', password: "asdfasdf")
User.create(username: 'Nigel Slater', password: "asdfasdf")
User.create(username: 'Jamie Oliver', password: "asdfasdf")
User.create(username: 'Yotam Ottolenghi', password: "asdfasdf")
User.create(username: 'Alice Waters', password: "asdfasdf")
User.create(username: "Guest", password: "password")
User.create(username: "Mark Bittman", password: "asdfasdf")

Comment.create(body: "this artichoke thing is so delicious!!!", recipe_id: 1, user_id: 1)
Comment.create(body: "this cassoulet is so delicious!!!", recipe_id: 2, user_id: 1)
Comment.create(body: "this aioli is so delicious!!!", recipe_id: 3, user_id: 1)
Comment.create(body: "this grilled veggie salad is so delicious!!!", recipe_id: 4, user_id: 1)
Comment.create(body: "Made this tonight and everyone loved it!", recipe_id: 6, user_id: 2)
Comment.create(body: "I can eat this all the time", recipe_id: 7, user_id: 3)
Comment.create(body: "Try my cake :D", recipe_id: 8, user_id: 4)
Comment.create(body: "My kids loved this!", recipe_id: 9, user_id: 5)
Comment.create(body: "I'd serve this at Ottolenghi", recipe_id: 10, user_id: 6)
Comment.create(body: "I love my daughter Fanny and Fanny loved this.", recipe_id: 11, user_id: 7)
Comment.create(body: "Mmmmmhmmm", recipe_id: 12, user_id: 4)
Comment.create(body: "We gotta make a video about this on my youtube channel (go checkout FoodTube! ;)", recipe_id: 13, user_id: 5)
Comment.create(body: "Used ingredients from my garden to make this. So delicious!", recipe_id: 14, user_id: 5)
Comment.create(body: "Yaaaaas to this", recipe_id: 15, user_id: 2)
Comment.create(body: "Ok this was pretty good.", recipe_id: 16, user_id: 6)

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
ingredients: "1/2	cup parsley (I like curly leaf, but flat leaf would probably be fine)
1 teaspoon kosher salt
3 cloves garlic
Peel of half a preserved lemon
4 medium artichokes (get ones with fat, long stems)

Serves 4 as a side dish",
instructions: "1. Have some acidulated water ready (water with some lemon or vinegar in it) or a fresh lemon. Trim the artichoke of its leaves, the choke, and the tough woody exterior of the stem. Rub the cut areas once in a while with the lemon or dip in the acidulated water.

2. When the artichoke is trimmed, cut it into small chunks (~1/8 inch dice) and leave in the acidulated water (or mix with lemon juice) while you make the pesto.

3. Chop together the parsley, garlic, preserved lemon (or lemon zest), and salt. Chopping the salt with the other ingredients makes the chopping less sticky. I like it slightly chunkier than you can get with a food processor, but if you don't have a big, curved chef's knife, then a processor would work fine.

4. Drain the artichoke pieces and rinse them off if they've got lemon pips stuck to them. In a medium skillet, heat about a tablespoon of oil over medium-high heat. Saute the artichoke bits until they are softened and beginning to brown.

5. Add the pesto, mix thoroughly, and saute for another minute or two until fragrant. The garlic will still be fairly raw and spicy. Can be good with a little crumbled feta or chunks of goat cheese.",
author_id: 3)

Recipe.create(
title: "Spring Vegetarian Cassoulet",
image: "https://images.food52.com/64wPyXV71UGQhpfz6g0oBSiWZb0=/753x502/26560c92-153e-42ba-82b3-9ad1eae500ad--2016-0309_easter-spring-vegetarian-cassoulet_james-ransom_045.jpg",
ingredients: "1 1/2 cups dried cannellini beans, soaked overnight in water (if you are a cassoulet purist, use tarbais beans)
2 lemons, divided
5 globe artichokes
1/2	cup olive oil
4 cloves garlic, divided
1/4 teaspoon dried chile flakes
2 swipes lemon peel (obtained using a vegetable peeler)
8 sprigs thyme, divided
Salt
Freshly ground black pepper
1/2	cup white wine
2 leeks
4 cups water
1 bay leaf
1 tablespoon butter
1/2 cup panko bread crumbs
4 cups loosely packed sorrel leaves (use baby spinach if sorrel is unavailable)

Serves 4 to 6",
instructions: "1. Fill a large mixing bowl with water. Squeeze the juice of 1 lemon into the water. When you clean the artichokes, put them into this water—the lemon in it will keep the artichoke hearts from turning brown.

2. Quick guide to cleaning artichokes: First, put on rubber gloves, because the artichoke leaves make everything taste bitter, and you don’t want that on your fingers (alternatively, just wash your hands and your cutting board well when you’re done cleaning the artichokes). Rip off the outer leaves of the artichoke until the leaves look light green or yellow. Using a sharp knife, cut off the leaves at their base. Discard the leaves. The choke (the fuzzy prickles in the center of the artichoke) should now be exposed. Use a melon baller to remove and discard the choke. Using a paring knife, separate the stem from the artichoke heart. Save the stem. Remove any dark green from the artichoke heart using the paring knife. The artichoke heart should now be clean, so drop it in the lemon water. Use the paring knife to remove the fibrous outer layer of the stem. The inside of the stem should be a lighter color than the fibrous outside. When the stem is clean, add it to the lemon water.

3. Thinly slice 3 cloves of garlic and set them aside. Set a large skillet over low heat. Add the olive oil, along with the thinly sliced garlic, chile flakes, lemon peel, and 4 sprigs of thyme. Remove the cleaned artichoke hearts and stems from the lemon water, and cut them into bite-size pieces. Add the artichoke to the skillet and adjust the heat to medium. Season with salt and freshly ground black pepper. Cook, stirring occasionally, until the artichokes begin to turn tender (after approximately 10 minutes, taste a piece to see how tender it is). When the artichokes are just tender, add the white wine. Adjust the heat to high and cook for approximately 2 minutes, until the wine has reduced by half. Remove the skillet from the heat, and discard the lemon peel and thyme sprigs. Set a fine mesh strainer over a mixing bowl. Pour the contents of the skillet into the strainer. Transfer the contents of the strainer to a container and store in the refrigerator. Transfer the remaining liquid from the mixing bowl to a large pot.

4. Remove the roots and dark green outer leaves from the leeks. Slice the leeks in half lengthwise and clean them with cold water to remove any dirt. Slice the leeks into thin half-moons. Set the pot with the artichoke oil over medium heat. Add the leeks and cook, stirring occasionally, until they begin to soften. Drain the beans of their soaking water and add the beans to the pot. Add 4 cups of fresh water to the pot and bring the water to a boil. Adjust the heat so that the water is gently simmering. Add the remaining 4 sprigs of thyme, along with the bay leaf. Let the beans cook for at least 2 hours, until they taste soft and creamy. There should be a little liquid left in the pot (it should resemble stew). If too much liquid evaporates during the cooking process, add more water.

5. While the beans are cooking, set a small skillet over medium heat. Add the butter. When the butter is melted and hot, add the breadcrumbs. Stir the breadcrumbs regularly until they become lightly toasted. Rub 1 clove of garlic against a fine microplane, and add the microplaned garlic to the skillet. Stir for 1 additional minute, until the garlic is fully mixed in with the toasted breadcrumbs. Set the garlic breadcrumbs aside.

6. When the beans are soft, creamy, and fully cooked, season them with salt and freshly ground black pepper. Taste the beans. Continue to adjust the seasoning until the beans taste delicious. Add the cooked artichokes, along with the sorrel and the lemon juice. Stir regularly over low heat until the sorrel just begins to wilt, approximately 2 minutes. Serve the cassoulet garnished with a sprinkle of garlic breadcrumbs, and enjoy.",
author_id: 3)

Recipe.create(
title: "Tarragon-Lemon Aioli Served with Grilled Artichokes",
image: "https://images.food52.com/yPCx1RCVCk6gakrRSLYW83s-0uw=/753x502/8c95a455-22ad-44e2-aa36-03c374ccac3a--grilled-artichokes-tarragon-lemon-aioli_food52_mark_weinberg_14-07-01_0358.jpg",
ingredients: "For the grilled artichokes:
4 large globe artichokes
1 lemon, quartered
3/4 cup olive oil
4 cloves garlic, peeled and chopped
Salt and pepper

For the tarragon-lemon aioli:
6 garlic cloves, peeled
2 fresh egg yolks (at room temperature)
1 cup olive oil
1 tablespoon fresh tarragon leaves, chopped
1/2 teaspoon sea salt
1 teaspoon fresh lemon juice


Serves 4",
instructions: "For the grilled artichokes:
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
ingredients: "1 medium fennel bulb, outer layer, stalks and fronds removed, root end trimmed of brown bits
1 small red onion (about 1/4 pound), cut into 1/2-inch thick rounds
1 small head radicchio (outermost leaves removed, bottom trimmed of brown bits, quartered lengthwise) and cut into 1/2-inch thick wedges
1/2 cup extra-virgin olive oil
3 tablespoons sherry vinegar
1 teaspoon Maldon or another flaky sea salt
1 small garlic clove, very finely chopped
A five-finger pinch of fresh mint leaves
A five-finger pinch of fresh marjoram leaves

Makes 2 cups",
instructions: "1. Halve the fennel bulb lengthwise and cut each halfway through the root nub (so the wedges stay intact) into about 1-inch-thick wedges.

2. Heat a grill or heavy grill pan over high heat until it’s good and hot, about 5 minutes. Reduce heat to medium and add fennel, onion and radicchio. Cook, turning vegetables over occasionally, until fennel and onion are lightly charred in spots and cooked through, but still have a little bite, about 20 minutes. The radicchio is done when the stems are tender but still have a little bite, the leaves are wilty, the tips crackly, about 15 to 20 minutes.

3. As they finish, pop the grilled vegetables into a bowl and cover with plastic wrap until they’ve cooled fully. They’ll steam a bit and cook some more as they cool. Once they’ve all cooled, chop the vegetables into a mix of about 1/2-inch pieces, some smaller and some larger.

4. Pop the vegetables back into the bowl, add the oil, vinegar, salt and garlic, and stir really well. Toss the mint and marjoram together on a cutting board, give them a rough chop and stir them into the dressing. Store leftovers tightly sealed in the fridge for up to 5 days, though the herbs will fade.",
author_id: 2)

Recipe.create(
title: "Extremely Moist Chocolate-Beet Cake",
image: "https://images.food52.com/e_OV0ne8-WUYQR4KzZc59aDUBYg=/753x502/24a3fcb4-9020-4217-9c50-75091cc68138--food52_09-04-12-0044.jpeg",
ingredients: "8 ounces fresh beets
7 ounces fine dark chocolate (70%)
1/4 cup hot espresso
3/4 cup + 2 tablespoons butter
1 cup + 2 tablespoons all-purpose flour
1 1/4 teaspoons baking powder
3 tablespoons good quality cocoa powder
5 eggs
Scant 1 cup superfine sugar
Crème fraîche and poppy seeds, to serve

Serves 8",
instructions: "1. Lightly butter an 8-inch springform cake pan and line the base with a round of baking parchment. Heat the oven to 350 degrees F.

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
ingredients: "For the smoked beets:
8 small beets, with greens if possible
1 small bunch fresh rosemary

For the salad:
1 tablespoon red wine vinegar
Extra virgin olive oil
Sea salt and freshly ground black pepper
1 small bunch fresh flat-leaf parsley, leaves picked and roughly chopped
1 small bunch fresh tarragon or basil, leaves picked and roughly chopped
4 heaped tablespoons cottage cheese
Juice and zest from 1/2 lemon, plus more to taste
A few sprigs of fresh thyme, leaves picked

Serves 4 as a side dish",
instructions: "1. First, light your charcoal barbecue or fire. Wash the beets and snip off the greens, reserving them. Fold a large piece of foil -- about 12-18in or 24-36in unfolded, depending on the size of your beets -- in half to form a double layer. Lay the greens, then the beets, then the rosemary on top of the foil. *Note: if you don't have greens with your beets -- or want to save them to cook separately -- that's okay, just make sure the coals are at medium heat, not flaming, when you add your packet of beets.

2. Roll up the foil, folding in the edges and twisting the ends together. Stab the foil a few times all over with a knife to allow the smoke to get inside and flavor the beets. Lift the rack of your barbecue with tongs and carefully insert your foil package among the coals, making sure you place some coals on top too.

3. Leave it to cook for 30 to 40 minutes, or until the beets are tender, then remove the package and allow it to cool down. Unwrap it and remove the beets, discarding the greens and rosemary sprigs.

4. Once cooled slightly, peel the beets and discard the charred skin. The skins should slip right off, but if they don't, gently scrape them away with the back of a paring knife. Cut the beets into irregular chunks and place in a bowl. Add the vinegar, 3 tablespoons of extra virgin olive oil, plenty of salt and pepper and half the parsley and tarragon. Toss, have a taste and adjust the seasoning if necessary.

5. Put the cottage cheese into a bowl and add the juice and finely grated zest from half your lemon. Stir in 2 glugs of extra virgin olive oil, the thyme leaves and some salt and pepper and gently fold it all together, so the oil and lemon marble through the cottage cheese. Taste the dressing and squeeze in a bit more lemon juice if you like.

6. To serve, divide the dressed beets between four salad plates. Top each plate with a spoonful of cottage cheese dressing. Scatter over the remaining herbs and enjoy!",
author_id: 5)

Recipe.create(
title: "Eggplant with Buttermilk Sauce",
image: "http://assets.epicurious.com/photos/559eb8d92165ea177986b559/master/pass/365110_hires_6x4.jpg",
ingredients: "2 large and long eggplants
1/3 cup olive oil
1 1/2 tsp lemon thyme leaves, plus a few whole sprigs to garnish
Maldon sea salt and black pepper
1 pomegranate
1 tsp za'atar

Sauce:
9 tbsp  buttermilk
1/2 cup Greek yogurt
1 1/2 tbsp  olive oil, plus a drizzle to finish
1 small garlic clove, crushed
Pinch of salt

Serves 4 as a starter",
instructions: "1. Preheat the oven to 400°F. Cut the eggplants in half lengthways, cutting straight through the green stalk (the stalk is for the look; don't eat it). Use a small sharp knife to make three or four parallel incisions in the cut side of each eggplant half, without cutting through to the skin. Repeat at a 45-degree angle to get a diamond-shaped pattern.

2. Place the eggplant halves, cut-side up, on a baking sheet lined with parchment paper. Brush them with olive oil—keep on brushing until all of the oil has been absorbed by the flesh. Sprinkle with the lemon thyme leaves and some salt and pepper. Roast for 35 to 40 minutes, at which point the flesh should be soft, flavorful and nicely browned. Remove from the oven and allow to cool down completely.

3. While the eggplants are in the oven, cut the pomegranate into two horizontally. Hold one half over a bowl, with the cut side against your palm, and use the back of a wooden spoon or a rolling pin to gently knock on the pomegranate skin. Continue beating with increasing power until the seeds start coming out naturally and falling through your fingers into the bowl. Once all are there, sift through the seeds to remove any bits of white skin or membrane.

4. To make the sauce. Whisk together all of the ingredients. Taste for seasoning, then keep cold until needed.

5. To serve, spoon plenty of buttermilk sauce over the eggplant halves without covering the stalks. Sprinkle za'atar and plenty of pomegranate seeds on top and garnish with lemon thyme. Finish with a drizzle of olive oil.",
author_id: 6
)

Recipe.create(
title: "Eggplant, Potato and Tomato",
image: "http://www.dailylife.com.au/content/dam/images/3/g/0/v/0/image.related.articleLeadwide.620x349.3g0sn.png/1411077273807.jpg",
ingredients: "4 medium tomatoes, cut into 1cm dice (400g)
½ small red onion, finely chopped (40g)
2 tsp white wine vinegar
15g parsley, chopped
1 tbsp Sriracha sauce (or another hot savoury chilli sauce)
2 medium eggplants, cut into 3cm chunks (600g)
250ml olive oil, for frying
about 300ml sunflower oil
600g Charlotte potatoes (or another waxy variety), peeled and cut into 3mm slices
80g tahini paste
2 ½ tbsp lemon juice
1 small garlic clove, crushed
6 eggs, freshly poached
1 tsp sumac
1 tbsp coriander, chopped
salt and black pepper

Serves 4-6",
instructions: "1. Place the tomatoes in a colander for 30 minutes to drain. Transfer to a medium bowl and add the onion, vinegar, parsley, Sriracha and ¼ teaspoon of salt. Mix gently and set aside.

2. Mix the eggplant with 1½ teaspoons of salt, place in a colander and set aside over a bowl for half an hour to remove any excess liquid. Transfer to a plate lined with kitchen paper and pat dry.

3. Place 200ml of the olive oil in a 26cm frying pan, along with all of the sunflower oil: it needs to come 1cm up the sides of the pan, so add more if you need to. Place on a high heat and, once hot, add the eggplant in batches. Fry for three to four minutes, until golden-brown. Remove with a slotted spoon, transfer to a plate lined with kitchen paper and set aside somewhere warm while you cook the remaining batches. Leave the oil to cool, pour it into a jar - you'll be able to use it for future frying - and wipe down the pan.

4. Bring a medium pan of water to the boil, add the potatoes and cook for three minutes. Drain, refresh under cold water and set aside to dry. Add two tablespoons of fresh olive oil to the frying pan and place on a medium to high heat. Add the potatoes and fry for 10 minutes with ¼ teaspoon of salt and a grind of black pepper, until they are cooked through and golden-brown, shaking the pan from time to time. Remove from the heat and set aside.

5. Place the tahini, 60ml of water, 1½ tablespoons of lemon juice, garlic and a pinch of salt in a medium bowl and whisk to a thick, pourable consistency.

6. Spoon half of the sauce over the potatoes and spread the eggplant on top. Follow this with the remaining tahini and then spoon over the tomatoes.

7. Poach the eggs just before you are ready to serve and then lay these on top of the tomatoes, along with a drizzle of the remaining olive oil, a sprinkle of sumac and coriander and the last of the lemon juice. Bring to the table in the pan.",
author_id: 6
)

Recipe.create(
title: "Quinoa and Mango Salad",
image: "https://images.food52.com/eEokFszEkrAA8Pv06XLNiWpDqiE=/753x502/0072cb79-cbcc-4a52-9260-d426da686d60--2013-0625_quinoa-mango-salad-029.jpg",
ingredients: "Quinoa and Mango Salad:
1 cup regular, red or black quinoa, rinsed well in a strainer
2 cups water
3 mangoes
1 large red onion, halved stem to root and slivered
1 can black beans, rinsed and drained
2 cups micro greens (I used a rainbow blend package from Whole Foods herb section: mizuna, curly cress, red and yellow beet, arugula, cabbage) – if not available, mesclun, spring or baby greens are fine, rinsed and dried
3 tablespoons chopped cilantro
1-2 avocados, halved, pitted and sliced
1 tablespoon olive oil
Salt and pepper, to taste

Lemony-Ginger Dressing:
3-4 teaspoons lemon juice
3-4 tablespoons olive oil
1/2 teaspoon freshly grated ginger (or 1 tsp ground ginger)
Salt and pepper, to taste

Serves serves 4-6 as a main course, 6-8 as a starter",
instructions: "1. Preheat oven to 400 degrees.

2. Cook the quinoa: In a saucepan, bring quinoa and water to a boil. Reduce the heat to a simmer, cover, and cook until most or all of the water is absorbed, about 12-15 minutes. The little 'tails' should pop free from the grain and it should still be pretty chewy. If any liquid remains, strain the quinoa. I usually add it to a strainer either way and rinse it under cold water to stop the cooking process, then continue to fluff it every so often as I'm preparing the other ingredients.

3. Toss onion slivers with 1 tablespoon olive oil, salt and pepper. Roast for about 30 minutes. Resist stirring until they begin to brown, then stir occasionally; not too much or they will not brown as nicely. Remove when they are soft and nicely colored. Let cool.

4. Pit and dice mangoes. Try to squeeze out some of the juices from the fibrous part surrounding the pit before discarding it – there's often a lot of juice in that section. Add it to the diced mangoes.

5. Make the dressing: Whisk the olive oil into the lemon juice. Whisk in the ginger and add salt and pepper to taste.

6. Assemble the salad: Mix the quinoa, mango (and juices), black beans, and cilantro together. Spread the micro greens on a large plate and layer the quinoa mixture over the greens. Top with the roasted onions and the avocado slices. Drizzle the dressing over the salad and serve.",
author_id: 3
)

Recipe.create(
title: "Snow Pea, Cabbage, and Mizuna Salad with Marinated and Seared Tempeh",
image: "https://images.food52.com/vMP9PfRAMTLRC1c8ihzOkmQfvI4=/753x502/67a74eb7-9d20-46b0-92aa-67409daba666--Salad1.jpeg",
ingredients: "Basic Marinated Tempeh:
2 tablespoons apple cider or rice vinegar (apple cider is my preference)
2 tablespoons soy sauce or tamari
2 tablespoons water
1 teaspoon grated or minced ginger root
1 teaspoon toasted sesame oil
8 ounces tempeh, sliced into thin strips (about 1/4 inch or a little less)
2 teaspoons coconut oil (optional, for frying)

Snow Pea, Cabbage, and Mizuna Salad with Miso Mustard Dressing:
6 ounces snow peas, trimmed
2 cups red cabbage, shredded
1 cup carrot, shredded
2 cups mizuna
2 green onions, sliced thin
1/4 cup cilantro, diced
2 tablespoons mellow white miso
1 tablespoon dijon mustard
1/4 cup olive oil
3 tablespoons lemon juice
1 small clove garlic, minced
1 tablespoon maple syrup

Serves 4",
instructions: "1. To prepare the tempeh, whisk together the vinegar, soy sauce or tamari, water, ginger, and sesame oil. Arrange tempeh in a large, shallow bowl (a small casserole will also work) and pour the marinade over the pieces. Allow them to marinate for 2-3 hours (or over the course of a day, refrigerated).

2. You can either bake or pan fry the tempeh. To fry, heat the coconut oil on a skillet pan or in a large frying pan over medium high heat. Cook each side for about four minutes, and serve hot. To bake, heat an oven to 375 degrees and bake them tempeh pieces for 25 minutes, flipping once through.

3. To prepare the salad, heat a small pot of water to a boil and boil the snow peas for about thirty seconds. Rinse under cold water and let them dry, then cut the peas in halves or thirds.

4. Mix all remaining salad ingredients.

5. To make the vinaigrette, blend the miso, mustard, lemon, oil, garlic, and syrup in a blender till smooth or whisk together briskly. Dress the salad to taste, and top with the seared tempeh.",
author_id: 3
)

Recipe.create(
title: "Garden Salad Tacos",
image: "http://cdn-image.foodandwine.com/sites/default/files/styles/551x551/public/201406-xl-garden-salad-tacos.jpg?itok=ijFP-Cwr",
ingredients: "2 tablespoons extra-virgin olive oil
1 tablespoon red wine vinegar
1/2 small garlic clove, finely grated
Pinch of ground cumin
Kosher salt
2 cups lightly packed mixed baby greens
1/2 small fennel bulb, very thinly sliced on a mandoline
1 medium carrot, very thinly sliced crosswise
4 radishes, very thinly sliced
1/2 cup lightly packed cilantro leaves
8 corn tortillas, warmed
3 ounces Monterey Jack cheese, shredded (1 cup)

Serves 4",
instructions: "1. Preheat a broiler. In a large bowl, whisk the olive oil with the vinegar, garlic, cumin and a pinch of salt. Add the baby greens, fennel, carrot, radishes and cilantro and toss to coat. Season the salad with salt.
2. Arrange the warm corn tortillas on a large baking sheet in a single layer. Sprinkle the shredded Jack cheese on the tortillas and broil 6 inches from the heat until the cheese is melted, about 1 minute. Pile the salad on the tortillas, fold them in half and serve right away.
",
author_id: 7
)

Recipe.create(
title: "Radish and Pecan Grain Salad",
image: "https://images.food52.com/M6wBwY5MtyGTbF21fp8Bn0BMzas=/753x502/825afe28-0759-4776-b6e2-0bb43859ba88--radish_salad.jpeg",
ingredients: "2 cups  mixed grains (like farro, freekeh, wheat berries, wild rice, and quinoa, pearl barley, or any combination of the above)
1 cup baby arugula leaves
1 cup parsley leaves, minced
1/2 cup tarragon leaves, minced
1/2 cup mint leaves, cut in a chiffonade
1/2 cup pecans
1/4 cup walnut oil
1/4 cup sherry vinegar
1 cup lime, watermelon, or French breakfast radishes, cut into thin slices, preferably using a mandoline
1/4 cup shallot, minced
1/4 cup olive oil
1/2 cup raisins
1/2 cup dried cranberries

Serves 6 to 8 as a side",
instructions: "1. Bring a large pot of heavily salted water to a boil. Add the grains and cook until just tender, about 25 minutes. (With grains like wild rice and wheat berries, add them to the pot first and cook 10 minutes before adding remaining grains).

2. Drain the grains into a colander, then set aside until warm to the touch.

3. Combine all the ingredients in a large bowl and toss well. Season with salt to taste.",
author_id: 3
)
Recipe.create(
title: "Roasted Potato, Sunchoke, and Asparagus Salad with Ramps",
image: "https://images.food52.com/0e7kp1UOQyrkQsCUrUhI9kOmAyQ=/753x502/c7fd0b40-f92e-4d7d-9014-9e5ad7e4cb6b--roasted_asparagus_and_potato_salad15.jpg",
ingredients: "For the dressing:
2	ramps, mince d (about 3 tablespoons)
1	large clove garlic, smashed and minced
2	oil-packed anchovy fillets, drained of excess oil and finely minced (about 1 tablespoon)
2	tablespoons freshly squeezed lemon juice
1	pinch sea salt
1	pinch ground black pepper
1/4	cup mayonnaise

For the roasted vegetables:
6	new red potatoes, scrubbed and cut into 3/4-inch cubes
1	lemon, 1 teaspoon zest reserved and halved
6	medium-sized sunchokes (also known as Jerusalem artichokes)
2 1/2	teaspoons sea salt, plus more to taste
1/2	teaspoon ground black pepper, plus more to taste
3	tablespoons extra-virgin olive oil, divided
1	bunch asparagus
1/4	cup minced herbs (such as ramp greens, chives, parsley, oregano, tarragon, or thyme)

Serves 6 to 8",
instructions: "1. In a small bowl, whisk to combine the ramps, garlic, minced anchovies, lemon juice, and a big pinch each sea salt and pepper. Gradually whisk in the mayonnaise. Cover bowl and chill for an hour or longer.

2. Preheat oven to 450° F. Set a large rimmed baking sheet in the oven to preheat as well.

3. Set potato cubes in stock pot filled with cold water. Rinse and drain twice. Fill pot with water again and add juice from half a lemon.

4. With the remaining lemon half handy, peel the sunchokes, then rub each one all over with lemon. Slice into 3/4-inch cubes, tossing cut pieces with more lemon juice as you go, and place them in the stock pot with the potatoes as you finish.

5. Set stock pot over high heat and bring to a boil. Add 2 teaspoons sea salt. Once water comes to a boil, cook root vegetables for 1 minute. Drain. Toss with 2 tablespoons olive oil and 1/2 teaspoon each sea salt and pepper. Remove hot baking sheet from the oven and spread root vegetables over top. Roast for 15 minutes, carefully flip each sunchoke and potato, and then roast for another 15 to 20 minutes, or until vegetables are a deep golden brown.

6. Meanwhile, prep the asparagus. Rinse spears well and pat dry. Snap off woody ends (roughly the bottom third) and slice diagonally into 2 or 3-inch sections. Toss with the remaining 1 tablespoon olive oil, 1 teaspoon reserved lemon zest, sea salt, and pepper. Spread on a large rimmed baking sheet. Roast asparagus, shaking pan once halfway through, for 12 to 17 minutes, or until asparagus is tender and the edges have browned.

7. Cool vegetables for 10 minutes, then toss with several tablespoons dressing, minced herbs, and salt and pepper to taste. Serve right away.",
author_id: 3
)

Recipe.create(
title: "Thanksgiving Root Vegetable Pie",
image: "https://images.food52.com/wT-rxfPJFyfksphfHg1oro6BVXY=/753x502/4bbbb875-8f35-437f-aab8-f4b9a0346982--IMG_5051.jpg",
ingredients: "For the pie crust:
1	cup whole wheat pastry flour (or white whole wheat flour)
1/2	cup all-purpose flour
3/4	cup butter
1	teaspoon sea salt
6 to 8	tablespoons cold water
Ice

For the filling:
5	cups diced root vegetables (I like sunchokes, purple potatoes, carrots, and parsnips)
Olive oil
Salt and pepper
4	tablespoons butter, divided
3	garlic cloves, minced
2	shallots, minced
5	cups diced mushrooms (roughly 1.75 pounds)
1/3	cup red wine
1/2	cup vegetable stock
5	cups peeled and quartered sweet potatoes
1/2	cup whole milk

Serves 8",
instructions: "Pie crust:
1. Cut up butter into pea-size cubes, then freeze for at least 10 minutes until firm and very cold. Measure out your water and drop in a few ice cubes to keep it cold.

2. Mix flours and salt together in a wide bowl. Drop the butter into the flour, tossing to coat each piece as best you can. Using your fingers, squeeze and pinch and snap the butter pieces, working to squish them and incorporate them into the flour. Use only your fingertips. Mix until butter and flour have reached a texture similar to that of coarse cornmeal, with some pea-sized chunks remaining.

3. Add a few tablespoons of cold water into the flour, and mix gently with your hands or a wooden spoon. Add water, a tablespoon at a time, until you reach 6 or 7 tablespoons. Assess your situation: if you can squeeze the pie crust into a ball with one hand, you're pretty close. If you try that and everything crumbles, add another tablespoon. A few dry spots are fine; you want dough that just comes together and won't crack when you roll it out. Form into a ball, wrap with plastic wrap, and store in the refrigerator for at least an hour.

4. After the dough has cooled, remove from refrigerator and roll out on a floured cutting board. The dough should be of even thickness and big enough to cover your pie dish. Crimp the edges or simply fold them under for a simpler crust. Refrigerate, covered in plastic wrap, until just before baking.

5. Roll the dough around the rolling pin like a towel, and transfer to the pie dish. Mold the dough into the pie pan, letting the excess hang off the sides. Crimp.


Filling:
1. Preheat oven to 375° F. Toss the diced vegetables in olive oil, then sprinkle with a good pinch each of salt and pepper. Dump them onto two baking sheets and roast for 30 minutes, stirring halfway through and making sure they don't burn.

2. Sauté shallots and garlic in one tablespoon of olive oil and one tablespoon of butter. Cook for a few minutes, until beginning to brown. Add the mushrooms and cook down until they are soft and give off moisture.

3. Add wine, and cook until it's almost completely absorbed. Then add your vegetable broth, and cook over medium heat until almost all of the moisture is cooked off.

4. Fill a large pot with salted water and bring to a boil. Add sweet potatoes until soft (but not falling apart) when pierced with a fork -- start checking after 15 minutes.

5. Drain sweet potatoes, then mash together with butter, milk, and salt and pepper to taste.

6. Preheat the oven to 400 degrees. Spread the mushrooms across the bottom in an even layer. Next add the roasted vegetable layer, and top with the layer of mashed sweet potatoes. Bake for 35 minutes or until the crust starts to brown. Halfway through cooking, pull the pie out and top with a layer of pumpkin seeds and a sprinkle of cinnamon or nutmeg.",
author_id: 3
)

Recipe.create(
title: "Chilaquiles Verdes",
image: "https://images.food52.com/qngb76Ji9kI_-25RkEW1LSmgsg0=/753x502/863a1f67-9292-47f2-9076-71de5b57aa98--2013-0924_CP-chilaquiles-013.jpg",
ingredients: "3	pounds tomatillos in the husk
1	large red onion cut in 1/2-inch slices
2	jalapeños
8	cloves of garlic, unpeeled
1	handful of cilantro leaves
1	lime
1	heaping spoonful of crema or sour cream
1	quart chicken stock (preferably homemade)
2	boneless, skinless chicken breasts
12	corn tortillas
1	cup (or more if you like) queso fresco in large crumbles (1/2- to 1-inch pieces), or shredded monterrey jack
1/2	cup crumbled cotija cheese
Cilantro leaves, for garnish
Salt and olive oil, as needed

Serves 6",
instructions: "1. Lay tomatillos, onions, jalapeños, and garlic on a baking sheet lined with parchment paper. Drizzle with olive oil and sprinkle with salt.

2. Place the baking sheet under the broiler, until the veggies are wilted and blistered, about 10 minutes (time will vary based on the heat of your broiler). Remove the veggies and let them cool until you are able to handle them.

3. Remove the husks from the tomatillos, squeeze the garlic from the cloves, and remove the stem from the jalapeños. Throw the roasted veggies into a blender, along with any juices that accumulated on the baking tray. Add the cilantro leaves, the juice of the lime, and the crema. Purée until the mixture is very smooth. Taste and make any needed adjustments (more salt, acid, etc).

4. While the veggies are still in the oven, bring the chicken broth to a gentle simmer in a dutch oven. Add the chicken breasts and allow them to simmer until tender, about 20 minutes. Move the chicken to a cutting board and use two forks to shred it. Return the chicken and any juices to the pot.

5. Add the tomatillo purée to the chicken broth, taste for seasoning (note the sauce should be tangy, almost sour, so add another squeeze of lime if necessary), and bring to a simmer. Cover and let the mixture simmer for about 20 minutes.

6. Cut the tortillas into quarters. If your tortillas are fresh, dry them out in the oven or toaster oven. If they're stale and dried out, add them right to the pot. Stir the mixture and let simmer for another 10 minutes. The tortillas will cause the sauce to thicken.

7. Uncover and stir in the queso fresco or sprinkle with the monterrey jack. Cover the pot again, allowing the cheese to melt. Uncover, sprinkle with cotija and cilantro, and serve.

8. Note: The chilaquiles are just as good -- maybe better -- the next day. A fried egg on top wouldn't hurt either!",
author_id: 3
)
Recipe.create(
title: "Tomatillo Tortilla Soup",
image: "https://images.food52.com/5wIAXIjNaSe5vfvfaVrQlDh2yVo=/753x502/91b4fc0d-c565-49ef-89b9-4735c52293c3--tomatillo_tortilla_soup18.jpg",
ingredients: "6	cloves garlic
1	quart tomatillos, husks removed, rinsed well
1	yellow onion, trimmed, peeled, and quartered
2	Cubanelle peppers (or Anaheim)
2	poblano peppers
1	jalapeño pepper
1	serrano pepper
4	cups chicken stock
Sea salt
6	corn tortillas, cut into strips
Neutral, heat-tolerant oil for frying tortillas
1	avocado, sliced
1/4	cup crema (Mexican sour cream)
2	tablespoons minced fresh cilantro
Crumbled cotija cheese (optional)

Serves 4",
instructions: "1. Set broiler to high.

2. Trim woody base from garlic cloves, then lightly smash with the side of a knife. Leave papery skin intact.

3. Arrange garlic, tomatillos, onion, and peppers on a rimmed baking sheet. Set under the broiler. Check every few minutes. Use tongs to set any tomatillos that have burst in a bowl, turn the peppers, and grab any garlic that's starting to blacken. Continue until all the vegetables have roasted nicely, 10 to 15 minutes total.

4. Set pan aside to cool. Under cold running water, remove the skin, stems, and seeds from the peppers.

5. Place all of the roasted vegetables in the pitcher of a blender (you may need to do this in two batches), add 2 cups chicken stock, and pulse until mixture is well blended, but still has a bit of texture. (Use caution if mixture is hot.)

6. Pour into a sturdy pot and set over medium-low heat. Add 2 cups remaining chicken stock, stir, and then add sea salt to taste.

7. Pull chicken meat from reserved roasted drumsticks, set in a small dish, and warm in the oven.

8. Meanwhile, set out a deep-frying pan and pour in neutral oil to 1-inch depth. Set over medium/medium-high heat. Fry tortilla strips until golden and crisp, about 3 minutes. Set cooked strips on a stack of paper towels and sprinkle with sea salt. (You can also skip the frying and use high-quality tortilla chips instead—but be mindful that store-bought chips can be very salty.)

9. Ladle soup into bowls, garnish with tortilla strips (or chips), chicken, avocado slices, a drizzle of crema, cilantro, and cotija. Serve soup with a lime wedge.",
author_id: 3
)

Recipe.create(
title: "Butter-Braised Cardoons With Mushrooms and Bread Crumbs",
image: "https://static01.nyt.com/images/2015/04/08/dining/08CARDOONS/08CARDOONS-articleLarge.jpg",
ingredients: " Salt, as needed
4 slender cardoon stalks, the paler in color the better
½ lemon, plus a wedge for squeezing over the finished dish
½ stick (4 tablespoons) unsalted butter
1 large clove garlic, peeled and minced
4 large shiitake (caps only) or other mushrooms, cleaned and sliced, about 1 1/2 cups
½ cup lightly packed fresh coarse bread crumbs
 Pepper, to taste

Serves 4",
instructions: "1. Bring a large pot of water to boil and salt it moderately. Strip the cardoons of leaves and string as you would celery. Cut each stalk lengthwise into 2 or 3 long strips, then crosswise into 2-inch lengths. You’ll have about 3 cups. Squeeze the lemon juice into the water and boil the cardoons until fairly tender, 10 to 12 minutes; drain and rinse.

2. Melt the butter over medium heat in a skillet wide enough to accommodate the cardoons comfortably. When the foam subsides, add the cardoons, reduce the heat to medium-low and cook, stirring occasionally, until they take on a bit of color, 10 to 12 minutes. Add the garlic and mushrooms and continue to cook until the mushrooms are mostly tender, 5 minutes. Add the bread crumbs and a pinch of salt and raise the heat to medium-high; cook, stirring occasionally, until the bread crumbs brown a bit and the cardoons are fully tender and sweet, 5 minutes longer.

3. Squeeze a bit of lemon juice over the top, taste for salt, add pepper to taste and serve hot or warm.",
author_id: 9
)

Recipe.create(
title: " ",
image: " ",
ingredients: "
Serves 4",
instructions: " ",
author_id:
)
Recipe.create(
title: " ",
image: " ",
ingredients: "
Serves 4",
instructions: " ",
author_id:
)
Recipe.create(
title: " ",
image: " ",
ingredients: "
Serves 4",
instructions: " ",
author_id:
)
