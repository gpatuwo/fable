# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'Grace', password: "asdfasdf")
User.create(username: 'Grace2', password: "asdfasdf")
User.create(username: 'Grace3', password: "asdfasdf")


Vegetable.create(name: 'Artichokes', description: 'It’s easy to forget that artichokes are largely a California phenomenon. Any dinner guest from outside the state will remind you of this: just notice the bewildered look on their faces as the artichoke is placed in front of them, followed by, “How do I eat this?” This is not an unreasonable question. The easiest way would be to steam it and then dip the leaves in a delicious sauce or aioli.', jan: false, feb: false, mar: true, apr: true, may: true, jun: true, jul: false, aug: false, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473114555/artichokes_sdmhoi.jpg')

Vegetable.create(name: 'beets', description: 'Beets were first cultivated around the Mediterranean and Atlantic coasts of Europe, and eventually spread to all parts of the world, but were descended from the sea beet, a wild seashore plant of which only the leaves and stems were eaten. Now, we consume the entire vegetable; the leaves, stems, and the root itself.

Several different of beets are commonly grown: the traditional red beet, the pink chioggia beet, and the yellow golden beet. They are also grown in several different sizes and shapes. When buying beets, it is important to inspect the root for a firm and solid surface. The leaves and stalks should also be hearty and cleaned with cool water before cooking and can be store in the fridge for up to 5 days. If the leaves start to go bad, they can be cut from the root, which will last for weeks in a cool place.

There are many different ways to cook beets; their earthy flavor is nicely offset by vinegar, meaning they are commonly eaten cold in salads with vinaigrettes. Leaving their skin on while cooking will preserve the color. You can test its doneness by sticking a knife through the vegetable, near its cap, which should pierce easily, its skin, should also be easier to peel off when this vegetable is fully cooked.', jan: true, feb: true, mar: true, apr: true, may: true, jun: true, jul: true, aug: true, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473114663/gold_beets_fyaynh.jpg')

Vegetable.create(name: 'Cardoons', description: 'The Cardoon is a thistle-like plant in the same family as the artichoke, which explains why its stalk is so similar in flavor. The cardoon is a very popular ingredient in Mediterranean style cooking, where it is native and has been cultivated since ancient times. However, cardoons are considered a weed in Australia and California because of its invasive nature and adaptability to dry climates. In Portugal, cardoons are used as a vegetarian source of enzymes for cheese production, which gives the cheese a distinct earthy and herbaceous taste.

Cardoons are only edible when cooked. To cook cardoons, trim off any leaves or thorns, and peel the stalks with a vegetable peeler to remove the indigestible fibers. Cardoons discolor when cut; place cut pieces in cold water with lemon juice to keep them from turning brown. Cardoons can be braised, sautéed, boiled in soups and stews, or dipped in batter and deep fried. Depending on the age of the stalks, they can take up to an hour to get soft and tender enough to eat.', jan: true, feb: true, mar: true, apr: true, may: true, jun: true, jul: false, aug: false, sep: false, oct: false, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473114881/cardoons_ctce1n.jpg')

Vegetable.create(name: 'Chicory', description: 'Chicory, or cichorium intybus, is a bushy perennial herb with blue, lavender, or occasionally white flowers. It grows as a wild plant on roadsides in its native Europe, and in North America and Australia. The chicory root is also often ground and used as a coffee substitute or roasted and added to beer to give it a unique flavor.

Commonly cultivated varieties include Belgian endive, radicchio, and puntarelle. Belgian endive (not to be confused with endive, a close relative of the chicory), is a crisp, pale yellow chicory with bitter leaves that are excellent grilled or stuffed and served as an hors d’oeuvre.

Often referred to as Italian chicory, radicchio is a dark maroon color with leaves that have white veins and a bitter taste that can be reduced through cooking. Different varieties are named according to the Italian region from which they originated. The most well-known variety is the Chioggia, which can grow to the size of the grapefruit. In Italy, radicchio is often eaten grilled or cooked with olive oil and in the United States, the leaves are often eaten raw in salads. Radicchio can also be found mixed in pastas, pizzas, and risottos.

The slender, serrated leaves of the puntarelle have many of the same distinctive tastes and characteristics as its relatives. Its crisp leaves are said to have the spiciness of arugula with hints of fennel, and the shoots have the texture of celery. Puntarelle is traditionally used raw in salads and is classically served with a heavy dressing, often with anchovies, that helps sweeten its bitter notes. Some chefs recommend soaking the leaves in water for a few hours before cooking, allowing the leaves to curl, becoming juicier and less tart.', jan: true, feb: true, mar: true, apr: true, may: true, jun: true, jul: true, aug: true, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473115223/chicory_xfuaeg.jpg')

Vegetable.create(name: 'Eggplant', description: "The eggplant, or aubergine as it is called in France, is a vegetable valued for its taste and texture. However, early varieties of eggplant didn’t have the same culinary appeal as they do today. Due to its bitter taste, Europeans tended to grow eggplants for their decorative properties rather than their culinary use. It wasn’t until new varieties were developed in the 18th century that the eggplant lost a bit of its sour flavor and reputation.

One of the most popular varieties of eggplant in North America is ‘egg-shaped,’ with its glossy, purple skin. In addition to this variety, eggplants come in a range of other colors, like lavender, jade green, orange, and yellow-white, as well as in sizes and shapes that range from a small tomato to a large zucchini.

When choosing eggplants, pick those that are heavy for their size with skin that is smooth, shiny, and brightly colored. To test the ripeness, gently press the skin with your thumb. A ripe eggplant will spring back and not leave an indentation. Unwashed eggplant can be stored in a cool place or inside the refrigerator crisper for up to 5 days.", jan: false, feb: false, mar: false, apr: false, may: false, jun: true, jul: true, aug: true, sep: true, oct: true, nov: false, dec: false, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473115361/eggplant_lr77uh.jpg')

Vegetable.create(name: 'Kohlrabi', description: "Also known as the cabbage turnip, the little known Kohlrabi gets its name from the German “kohl” for cabbage and the Latin “rapa” for turnip. It is a cruciferous vegetable, along with cabbage, kale, cauliflower and broccoli. It is about the size of an orange, rounded, and light purple or green, with firm branches growing from the top.

Kohlrabi is available year-round, but shines in winter months. The leaves taste like kale, collards or cabbage with a milder, slightly sweeter flavor. Kohlrabi bulbs are more flavorful and tender when they are small and have a hint of radish and cucumber flavors as well. Purple kohlrabi tends to pack a slightly spicier punch. In terms of cooking, kohlrabi can be steamed, boiled, or added to soups. And even though the leaves and stems are edible, Kohlrabi is often sold without the tops.

Farmers Market Tip:
Choose smooth bulbs. The smaller bulbs are more flavorful. If the leaves are still attached, they should be firm and fresh. Kohlrabi bulbs will keep up to a week or more in the refrigerator.", jan: true, feb: true, mar: true, apr: true, may: false, jun: false, jul: false, aug: false, sep: false, oct: false, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473115547/Kohlrabi_e7mpe3.jpg')

Vegetable.create(name: 'Mizuna', description: 'Mizuna probably originated in China but has been grown in Japan since ancient times. It has feathery, frond-like bright green leaves that taste similar to arugula but are milder and sweeter. It’s often eaten raw in salads, but the leaves can also be steamed, sautéed, or pickled.', jan: true, feb: true, mar: true, apr: true, may: true, jun: true, jul: true, aug: true, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1472861969/Mizuna_mwjzha.jpg')

Vegetable.create(name: 'Parsnips', description: 'You may have already guessed it by the shape, size, and color, but just to be clear, the parsnip is indeed a close relative of the carrot. Until the potato arrived to the New World, the parsnip (along with other root vegetables, like the turnip) were used in soups, stews, and stocks to develop flavor and act as a thickening agent.

While parsnips originated in the Mediterranean and were the size of a baby carrot, explorers and settlers found that they grew larger and more successfully the farther north they travelled. Parsnips seeds are typically planted during the fall and winter months, and it is the frost that occurs during these seasons that helps the plant develop its flavor.', jan: true, feb: true, mar: true, apr: true, may: true, jun: false, jul: false, aug: false, sep: false, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473115863/parsnips_p8ivbl.jpg')

Vegetable.create(name: 'radishes', description: "Purple, white, red, and black - radishes come in many shapes and sizes. As a member of the Brassicaceae family (along with cabbage and cauliflower), the radish is an edible root plant which was originally domesticated in Europe. Due to its rapid maturation (many varieties are ready for harvest in a matter of weeks), the radish is a popular plant for children’s gardens. They grow best in the sunlight and sandy soils, and like other root crops, they thrive in soil that has been tilled. However, radishes are often used in untilled pastures to reverse the effects of compaction.

While the taproot of the radish is the most popular part for cooking, but the rest of the plant (leaves and stem) can be eaten as well and are often prepared like other leafy greens. Radish varieties are broken down by season—winter, spring, summer, and fall. The spring and summer varieties are generally smaller and have a three- to four-week cultivation cycle. They include the white-tipped French Breakfast radish and the Easter Egg radish, which comes in several different colors. Winter and fall radishes include the spicier, rough-skinned black radish as well as daikon, which is commonly used in Asian cuisine.", jan: true, feb: true, mar: true, apr: true, may: true, jun: true, jul: true, aug: true, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1472862017/radishes_multicolor_euy9o4.jpg')


Vegetable.create(name: 'sunchokes', description: 'Sunchokes are also known as Jerusalem artichokes. As a member of the Sunflower family, they were one of the few native tubers of North America; Native Americans enjoyed eating sunchokes for centuries before the colonialists settled. Superstitions about the starchy ginger-shaped tuber kept Europeans from cultivating them until the threats were disproved.

Sunchokes are less known today, but appear on menus around the Bay Area throughout the Fall and Winter. Their taste falls somewhere between an artichoke heart and a sunflower seed, with a crisp texture and nutty flavor. Chop them into salads, dips, salsa, chutney, or light marinades. Cook them with grilled poultry or fish, or soups, or sauces. When you consider using jicama, water chestnuts, or almonds, try substituting this tuber.

Diabetics in particular will benefit from eating sunchokes because the insulin they contain breaks down into fructose instead of glucose during digestion, making them an excellent alternative to starchy foods such as potatoes.

Farmers market tip: Choose chokes that are smooth, not dry or wrinkled.', jan: true, feb: true, mar: true, apr: true, may: false, jun: false, jul: false, aug: false, sep: true, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473116211/sunchokes_omgptl.jpg')

Vegetable.create(name: 'Tatsoi', description: 'Tatsoi’s round, dark green leaves grow close to the ground in tight little circles, creating pretty rosettes. The tender greens have a mustardy taste and can be eaten raw or lightly cooked in soups.', jan: true, feb: true, mar: true, apr: true, may: false, jun: false, jul: false, aug: false, sep: false, oct: true, nov: true, dec: true, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1472859289/tatsoi_aulvum.png')

Vegetable.create(name: 'tomatillos', description: 'If you love green salsa, then you should get to know tomatillos. Dating back to 800 B.C., when the Aztecs domesticated them, tomatillos are considered a key ingredient in Latin-American cooking. Also called “tomate verde” in Mexico, the fruit of the tomatillo is generally firm, green, about the size of a large cherry, and meatier than a tomato. They grow to maturity inside a light brown, papery husk. The husk is a good indicator of freshness, but is inedible and should be removed before use.

The fruit of the tomatillo can be used as a base for chili sauces, known generically as salsa verde (green sauce), and will help lessen the pepper’s hot flavor as well as stimulate the appetite. Because of their tart quality, tomatillos can be cooked, eaten raw, minced or pureed to accompany prepared dishes. Tomatillo’s also makes a great addition to tortilla soup or guacamole.', jan: false, feb: false, mar: false, apr: false, may: false, jun: true, jul: true, aug: true, sep: true, oct: true, nov: true, dec: false, image: 'http://res.cloudinary.com/djulergb7/image/upload/v1473116707/Tomatillos_oxoerg.jpg')
