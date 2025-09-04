-- =========================================
-- Nations
-- =========================================
INSERT INTO nations (name, description) VALUES
('Fire Nation', 'Absolute monarchy on Fire Islands, led by Fire Lord, home to firebenders. Capital: Fire Nation Capital.'),
('Water Tribe', 'Original nation near poles, home to waterbenders. Includes Northern, Southern, and Foggy Swamp tribes.'),
('Earth Kingdom', 'Largest, most populated nation. Spans continent, islands in eastern hemisphere. Monarchy with fluctuating power.'),
('Air Nomads', 'Monastic order of airbenders with pacifistic ethics. Wander by definition, four hard-to-reach air temples.');

-- =========================================
-- Factions
-- =========================================
INSERT INTO factions (name, nation_id, description) VALUES
('Council of Elders', 4, 'Air Nomad leaders. Head monks/nuns from each temple; political and religious authorities. Five per temple.'),
('Guiding Wind', 4, 'Renegade Air Nomads. Believed others were complacent, sought less cooperation with wealthy outsiders.'),
('Military of Water Tribe', 2, 'Regionally split force for protection/assault. Loose structure, chiefs command. Northern & Southern tribes.'),
('Thin Claws', 2, 'Elite warriors & scouts. Served Water Tribe Chief as sworn brothers. Part of Northern Guard in Agna Qel''a.'),
('Five-Seven-Five Society', 3, 'Haiku club in Ba Sing Se, led by Madame Macmu-Ling. Focuses on poetry.'),
('Ba Sing Se University', 3, 'Major educational institution for scholars in Earth Kingdom; landmark in Ba Sing Se Middle Ring.'),
('Council of Five', 3, 'Highest Earth Kingdom military authority, oversees war effort. Headed by General How, includes General Sung.'),
('Dai Li', 3, 'Ba Sing Se secret police. Capture dissidents, protect cultural heritage, created by Avatar Kyoshi.'),
('Earth Sages', 3, 'Earth Kingdom spiritual authority. Wise advisors/academics. Purged by King Jialun; temples became Royal Learning Halls.'),
('Flying Opera Company', 3, 'Earth Kingdom daofei group led by Avatar Kyoshi. Operated as theater troupe, then powerful criminal org.'),
('Freedom Fighters', 3, 'Teenagers aiming to rid the world of firebenders, led by Jet. Conducted schemes, even killing innocents.'),
('Kang Shen', 3, 'Militant spiritual sect of nonbenders. Believed in bending immunity via rituals. Recruited by Autumn Bloom Society.'),
('Kyoshi Warriors', 3, 'All-female fighters led by Suki from Kyoshi Island. Initially identical, later sported different hairstyles.'),
('Earth Empire', 3, 'Organization led by Kuvira (171-174 AG) to reunify Earth Kingdom. Disbanded after facing Avatar Korra.'),
('Military of Earth Kingdom', 3, 'Defensive organization with army, navy, air force, special forces. Earth Monarch is C-in-C.'),
('Omashu Resistance', 3, 'Revolutionaries fighting to liberate Omashu from Fire Nation rule; led by Yung, operated underground.'),
('Pirates', 3, 'Sea-faring groups dedicated to boarding vessels and stealing. Some were upright, giving medicine to sick.'),
('Royal Earthbender Guards', 3, 'Earthbending warriors of Ba Sing Se. Personal protectors of the Earth King, not part of Dai Li/military.'),
('Terra Team', 3, 'Elite earthbender platoon under General Sung. Tried to stop Fire Nation drill at Ba Sing Se outer wall.'),
('Ember Island Players', 1, 'Local acting troupe on Ember Island. Known for packing the house, despite questionable acting quality.'),
('Fire Nation circus', 1, 'Traveling circus in Fire Nation colonies. Features exotic animals; Ty Lee performed here. Housed Appa.'),
('Fire Nation school', 1, 'Upper-class public school on Fire Islands. Molds young minds, focuses on creating perfect citizens.'),
('Fire Sages', 1, 'Fire Nation religious authority. Identifies Avatar, guards temple, conducts royal/private ceremonies.'),
('Fire Warriors', 1, 'Elite female warriors from Fire Nation. Impersonated Kemurikage to abduct kids, sway Fire Lord Zuko.'),
('Military of Fire Nation', 1, 'World''s most powerful military, technologically advanced. Fire Lord is C-in-C, delegates to generals/admirals.'),
('New Ozai Society', 1, 'Rebel group by Ukano. Sought to restore Fire Lord Ozai''s glory. Staged uprising, then defeated.'),
('Rough Rhinos', 1, 'Elite Fire Nation komodo rhino cavalry. Freelance basis; 5 members specializing in different weapons.'),
('Royal Fire Academy for Girls', 1, 'Elite upper-class academy in Fire Nation. Attended by Mai, Ty Lee, Azula; for noble daughters.'),
('Royal servants', 1, 'Over 100 servants in Fire Nation Royal Palace. Tend to Royal Family, highly honored position.'),
('The Flamey-Os', 1, 'Young, underground Fire Nation band. School-aged kids dreaming of touring the world.'),
('Yuyan Archers', 1, 'Highly skilled Fire Nation archers. Used as security, later by Admiral Zhao. Can shoot 4 arrows at once.'),
('Air Acolytes', 4, 'Monks/nuns on Air Temple Island. Carry Air Nomad traditions; first appointed by Avatar Aang.'),
('Cabbage Corp', 3, 'Automobile company producing Cabbage Car, a cheaper alternative to Satomobile.'),
('Future Industries', 3, 'Company founded by Hiroshi Sato; now owned by Asami. Produces luxury Satomobiles daily using advanced tech.'),
('The Order of the White Lotus', NULL, 'Ancient secret society of scholars from all nations. Devoted to sharing knowledge/philosophy. Formed over Pai Sho.'),
('Team Avatar', NULL, 'Aang''s group saving world from Fire Nation. Members: Aang, Katara, Sokka, Appa, Momo, Toph, Zuko, Suki.');

-- =========================================
-- Characters
-- =========================================
INSERT INTO characters (id, name, nation_id, date_of_birth, date_of_death, gender, height, hair_color, eye_color) VALUES
(1, 'Aang', 4, '12 BG', '153 AG', 'Male', 1.57, 'Bald (blue arrow tattoo)', 'Grey'),
(2, 'Gyatso', 4, 'Late 70s BG', '0 AG', 'Male', NULL, 'Black, later white (typically shaven)', 'Light brown'),
(3, 'Katara', 2, '14 BG', NULL, 'Female', 1.63, 'Dark Brown', 'Blue'),
(4, 'Sokka', 2, '15 BG', 'Between 158 and 170 AG', 'Male', 1.68, 'Brown', 'Blue'),
(5, 'Yue', 2, '84 BG', '100 AG', 'Female', 1.65, 'White', 'Blue'),
(6, 'Hakoda', 2, '48 BG', NULL, 'Male', 1.93, 'Black', 'Blue'),
(7, 'Kanna', 2, '19 AG', NULL, 'Female', NULL, 'White', 'Blue'),
(8, 'Hama', 2, '45 BG', NULL, 'Female', NULL, 'Black', 'Grey'),
(9, 'Pakku', 2, '44 BG', NULL, 'Male', NULL, 'White', 'Blue'),
(10, 'Suki', 3, '85 BG', NULL, 'Female', 1.63, 'Black', 'Blue'),
(11, 'Toph Beifong', 3, '88 BG', NULL, 'Female', 1.50, 'Black', 'Green'),
(12, 'King Bumi', 3, '12 BG', 'Between 102 and 124 AG', 'Male', NULL, 'White (brown in youth)', 'Green'),
(13, 'Jet', 3, '87 BG', '100 AG', 'Male', 1.73, 'Brown', 'Brown'),
(14, 'Kyoshi', 3, '312 BG', '82 BG', 'Female', 2.13, 'Black', 'Brown'),
(15, 'Zuko', 1, '83 BG', NULL, 'Male', 1.73, 'Black', 'Amber'),
(16, 'Azula', 1, '85 BG', NULL, 'Female', 1.63, 'Black', 'Amber'),
(17, 'Iroh', 1, '45 BG', NULL, 'Male', 1.65, 'Grey (dark brown in youth)', 'Amber'),
(18, 'Ursa', 1, '66 BG', NULL, 'Female', NULL, 'Black', 'Amber'),
(19, 'Mai', 1, '85 BG', NULL, 'Female', 1.63, 'Black', 'Amber'),
(20, 'Roku', 1, '82 BG', '12 BG', 'Male', 2.03, 'Black', 'Amber'),
(21, 'Ozai', 1, '55 BG', NULL, 'Male', 1.83, 'Black', 'Amber'),
(22, 'Appa', 4, '100 BG', NULL, 'Male', 4.5, 'White', 'Grey'),
(23, 'Cabbage Merchant', 3, NULL, NULL, 'Male', NULL, 'Black', 'Brown');

-- =========================================
-- Locations
-- =========================================
INSERT INTO locations (id, name, nation_id, description) VALUES
(1, 'Eastern Air Temple', 4, 'One of the two temples exclusively housing female airbenders, later home to Guru Pathik and new airbenders after Harmonic Convergence.'),
(2, 'Northern Air Temple', 4, 'A temple that hosted only male monks, located in the upper reaches of the northern Earth Kingdom. It was colonized by Earth Kingdom refugees, underwent rapid industrialization, was later restored and inhabited by Air Acolytes, and briefly trained new airbenders before being destroyed by Ghazan''s lavabending attack.'),
(3, 'Southern Air Temple', 4, 'One of the four sanctuaries owned by the Air Nomads, located closest to the Southern Water Tribe. It was the childhood home of Avatar Aang and where Avatar Roku learned airbending. After the war, it was restored by Air Acolytes and is home to some of the Air Nation''s new airbenders.'),
(4, 'Western Air Temple', 4, 'Unique among the Air Temples, this one is built upside-down into the underside of a cliff face in an island mountain range north of the Fire Nation. It exclusively housed female airbenders, was a victim of the Air Nomad Genocide, and was later restored to house Air Acolytes and new airbenders.'),
(5, 'Foggy Swamp', 3, 'A vast and mysterious wetland in the southwestern Earth Kingdom, home to the Foggy Swamp Tribe, who are descended from Southern Water Tribe immigrants. It is notable for its extensive unique flora and fauna, including a towering banyan grove tree.'),
(6, 'Northern Water Tribe', 2, 'The largest division of its nation, located on an island near the North Pole. Its capital city, Agna Qel''a, prospered in isolation and was never conquered by the Fire Nation during the Hundred Year War.'),
(7, 'Southern Water Tribe', 2, 'A minor division of the Water Tribe, consisting of scattered villages and settlements by the South Pole. Nearly extinct during the Hundred Year War due to Fire Nation raids, it later saw major expansion and developed a large harbor city and numerous smaller settlements.'),
(8, 'Full Moon Bay', 3, 'A secluded cove in East Lake, just south of Ba Sing Se, serving as a hidden ferry station for refugees traveling to Ba Sing Se.'),
(9, 'Great Divide', 3, 'The largest canyon in the world, located in the rocky regions of the central Earth Kingdom.'),
(10, 'Si Wong Desert', 3, 'The largest desert in the world, located in the Earth Kingdom. It is extremely difficult to navigate and is sparsely inhabited by the Si Wong tribes.'),
(11, 'Ba Sing Se', 3, 'The monolithic capital of the Earth Kingdom, encompassing nearly the entire northeast corner of the country. It was the last great Earth Kingdom stronghold after the fall of Omashu and is known as the "impenetrable city" due to its two insurmountable walls.'),
(12, 'The Serpent''s Pass', 3, 'A narrow strip of land between the East and West Lakes, linking the southern and northern halves of the Earth Kingdom. It is one of the very few direct paths to Ba Sing Se, named after the serpent that guards its passage below the lakes, making it a generally avoided entryway.'),
(13, 'The Merchant Town', 3, 'A minor trading settlement located high in the mountains of the northwestern Earth Kingdom, historically known as the site of numerous airbender murders by firebenders lured by rumors of Air Nomad relics.'),
(14, 'Chin Village', 3, 'A small town located on the cliffs of the Earth Kingdom''s southwestern coast, named for Chin the Great. It hosts the unique "Avatar Day" festival, which evolved from a celebration of hate into one of honor for the Avatar.'),
(15, 'Gaoling', 3, 'A large town located within a mountain range in the southern Earth Kingdom. It is home to both the wealthy Beifong family and the Earth Rumble tournaments. It remained untouched by the Hundred Year War due to its non-strategic location.'),
(16, 'Kyoshi Island', 3, 'A small island off the southern coast of the Earth Kingdom, famous as the birthplace of Avatar Kyoshi and home of the elite Kyoshi Warriors. It was created when Avatar Kyoshi separated the Yokoya Peninsula from the mainland to protect her people from Chin the Conqueror.'),
(17, 'Omashu', 3, 'The second largest city in the Earth Kingdom and capital of one of its provinces. It was a major stronghold and supplier of men and weaponry before its fall to the Fire Nation and renaming as New Ozai. It was later single-handedly liberated by King Bumi during the Day of Black Sun.'),
(18, 'The Plains Village', 3, 'Located in the arid grasslands of the southern Earth Kingdom, west of the Si Wong Desert. This village was often under the oppressive influence of a gang led by Gow, who posed as Earth Kingdom soldiers. It was also home to the Lee Family Pig Farm.'),
(19, 'Zaofu', 3, 'An autonomous city-state in the southwestern Earth Kingdom, home of the Metal Clan. Founded by Suyin Beifong, it is constructed entirely out of metal and is considered one of the safest cities in the world. It was temporarily annexed by the Earth Empire but later returned to Suyin''s control.'),
(20, 'Cave of Two Lovers', 3, 'Located near the city of Omashu in the Earth Kingdom, this is a secret tunnel passing through the Kolau Mountain Range. It is a giant underground labyrinth full of dangerous animals like wolfbats and badgermoles, historically leading to the discovery of the original earthbending masters, the Badgermoles.'),
(21, 'The Farming Village', 3, 'A small village located in the western Earth Kingdom, west of the Si Wong Desert. Zuko and Iroh traveled here for Iroh to receive treatment for a rash caused by the white jade plant. The Lee Family Pig Farm is located outside this village.'),
(22, 'Gaipan', 3, 'A small village located in the central Earth Kingdom that was overtaken by the Fire Nation and subsequently destroyed by a catastrophic flood after its evacuation.'),
(23, 'The Mining Village', 3, 'A medium-sized village located on the northwestern coast of the Earth Kingdom, whose inhabitants make a living by mining coal in several nearby mines.'),
(24, 'The River Village', 3, 'A village located in the western Earth Kingdom, situated between the forks of a large river. It serves as a regional trading hub and ideal location for merchants to sell their wares.'),
(25, 'The Boiling Rock', 1, 'A massive Fire Nation prison located on an island in the middle of a boiling lake on a volcanic island, used to hold the most dangerous domestic and foreign prisoners.'),
(26, 'Ember Island', 1, 'A small resort located in the outer islands of the Fire Nation, known for its luxurious resorts, vacation homes for the wealthy, and popular beaches for kuai ball games.'),
(27, 'Fire Fountain City', 1, 'A large, industrial city located on one of the many islands in the eastern half of the Fire Nation, named for the large, fire-breathing statue of Fire Lord Ozai in its center.'),
(28, 'Fire Nation Capital', 1, 'The seat of government for the Fire Nation, located on the Capital Island in the western region. It is home to the Fire Lord, the royal family, and the nobles of the Fire Nation.'),
(29, 'Hira''a', 3, 'A small settlement surrounded by mountains and lush forests, situated relatively close to the Forgetful Valley in the Earth Kingdom.'),
(30, 'Jang Hui', 1, 'A small, poor village located in the outer islands of the Fire Nation, on the Jang Hui River. This unique Fire Nation village is made up of floating houseboats connected together.'),
(31, 'Shu Jing', 1, 'A small, peaceful village located in the Fire Nation, situated on a cliff above a river and waterfalls, and surrounded by beautiful mountains.'),
(32, 'Jet''s Forest', 3, 'A dense forest located in the western Earth Kingdom, in the vicinity of a treetop hideout, and near the valley where the village of Gaipan was established.'),
(33, 'Wan Shi Tong''s Library', NULL, 'A vast and ancient library located in the Spirit World, curated by the spirit Wan Shi Tong. It contains knowledge from both the human and spirit worlds.'),
(34, 'Chuje Islands', 1, 'A small chain of islands within the Fire Nation, known for their picturesque beaches and being a popular destination for leisure.');

-- =========================================
-- Bending Styles
-- =========================================
INSERT INTO bending_styles (name, description)
VALUES
  ('Airbending', 'The bending art of the Air Nomads, originally learned from the flying bison. It focuses on speed, evasion, and defense. Its sub-skills are flight and spiritual projection.'),
  ('Waterbending', 'A bending art practiced by the Water Tribes, originally learned from the Moon. It focuses on adaptability, versatility, and turning an opponent''s energy against them. Its sub-skills are healing and bloodbending.'),
  ('Earthbending', 'A bending art from the Earth Kingdom, originally learned from badgermoles. It focuses on fortitude, strength, and neutral jing. Its sub-skills are seismic sense, metalbending, and lavabending.'),
  ('Firebending', 'The most aggressive bending art of the Fire Nation, originally learned from dragons. It focuses on power, direct attacks, and creating fire from an internal heat source. Its sub-skills are combustionbending, generating lightning, and redirecting lightning.'),
  ('Energybending', 'An ancient bending art that allows a user to manipulate life energy. It can be used to remove or restore a person''s bending, but is considered a highly dangerous technique.');

-- =========================================
-- Animals
-- =========================================
INSERT INTO animals (name, species, owner_character_id) VALUES
-- Aang's animals
('Appa', 'Sky Bison', (SELECT id FROM characters WHERE name='Aang')),
('Momo', 'Winged Lemur', (SELECT id FROM characters WHERE name='Aang')),

-- Other characters
('Bosco', 'Bear', (SELECT id FROM characters WHERE name='Katara')), -- Example owner
('Nyla', 'Shirshu', (SELECT id FROM characters WHERE name='Toph Beifong')),

-- Spirit or independent animals
('Wan Shi Tong', 'Owl Spirit', NULL),
('Tui', 'Koi Fish Spirit', NULL),
('La', 'Koi Fish Spirit', NULL),
('Hei Bai', 'Forest Spirit', NULL),
('Ancient One', 'Lion Turtle', NULL),
('The Earth Kingdom Badgermoles', 'Badgermole', NULL);

-- =========================================
-- Weapons
-- =========================================
INSERT INTO weapons (name, description)
VALUES
  ('Air Nomad glider', 'The trademark gliders of the Air Nomads. Although not a weapon, they were wielded like a staff and could be used to amplify airbending, waterbending, and earthbending.'),
  ('Wind sword', 'A sword with a blade made of air that an airbender can create using a sword handle.'),
  ('Greaves and bracers', 'Lower leg and lower arm protection respectively, colored gray and decorated with a small white circle.'),
  ('Shield', 'A hexagonal shield carried by warriors of the Southern Water Tribe, colored blue with a white trim and notches to allow for the use of a spear.'),
  ('Wolf armor', 'Protective battle gear that includes a helmet shaped like a wolf''s head.'),
  ('Axe', 'An average-sized axe with a blue-and-white blade and a medium-length white handle.'),
  ('Battle club', 'A weapon used in the Southern Water Tribe, with a base carved from a polar bear femur. It features a heavy ball, a notch for hooking weapons, and a leather strap for grip.'),
  ('Jaw blade', 'A hunting tool made from the jawbone and teeth of a large arctic wolf, with a rigid saw-like side and a scraping side. It can also amplify vibrations to detect intruders.'),
  ('Knife', 'A simple weapon with a small, single-edged blade made of metal, wielded by Gilak to threaten Sokka and later used to stab Hakoda.'),
  ('Machete', 'A long, cleaver-like cutting weapon used by Sokka to clear away vines in the Foggy Swamp.'),
  ('Spear', 'A weapon mainly used by nonbender troops. The handle is made of wood, and some types of spears have a red tuft near the base of the spearhead, both to distract opponents and to prevent blood from running down the shaft.'),
  ('Whale''s tooth scimitar', 'A scimitar made from the tooth of a whale dolphin, used by tribesmen.'),
  ('Boomerang', 'A small, L-shaped metal weapon that returns to its origin when thrown correctly. It is a treasured weapon of Sokka.'),
  ('Bow and arrows', 'A common weapon seen among the weapons stockpiled by Gilak''s army.'),
  ('Flower throwing stars', 'Waterbending-propelled throwing stars made by freezing the water inside living flowers. Used by Misu, but they were rather fragile.'),
  ('Portable water pump', 'A water pump developed during the era of Roku as a defense mechanism against firebenders.'),
  ('Tangle mine', 'Weapons made with a bamboo frame and dried animal skin, filled with skunk fish and seaweed. They float in water and detonate on contact.'),
  ('Water skin', 'A container used by waterbenders to carry water for bending in places where water is scarce.'),
  ('Armor of the Metal Clan', 'Heavy metal plate armor worn by Zaofu soldiers and security guards, designed for a clean, utilitarian aesthetic.'),
  ('Chain mail armor', 'Flexible armor made of small interconnected metal plates, designed by Sokka and crafted by the Beifong Metalbending Academy students. It can protect against chi-blocking.'),
  ('Conical military hat', 'A hat with a wide brim and a rounded or pointed top, worn by Earth Kingdom troops and the Dai Li. It can protect against firebending blasts.'),
  ('Common military armor', 'Full-body armor in various shades of green, gold, brown, and gray. Earthbender armor is designed for movement and has bare feet for increased earth sensitivity.'),
  ('Ostrich horse armor', 'Overlapping brass-colored plates worn on the heads, necks, and legs of ostrich horses used as cavalry beasts by Earth Kingdom troops.'),
  ('Collapsible wrist-shield', 'A shield that can be strapped to the wrist and collapses for easy storage, utilized by the Kyoshi Warriors.'),
  ('Blasting jelly', 'An explosive, volatile weapon used for demolition.'),
  ('Ice torpedo', 'Warheads full of blasting jelly with a lit fuse inside, invented by the mechanist to be used against the Fire Nation. Waterbenders are able to propel them because of the surrounding ice.'),
  ('Net launcher', 'A gun-like contraption used by the bison rustlers to capture baby sky bison, and later to trap Tenzin''s students when they attempted to free the young animals.'),
  ('Peanut sauce bombs', 'Explosive weapons invented by the mechanist but that he had difficulty in perfecting.'),
  ('Smoke pellets', 'A combustive weapon that explodes on impact, creating large smokescreens to confuse and distract enemies or victims, providing the opportunity to either attack or escape.'),
  ('Spirit energy cannon', 'A cannon created by the Earth Empire and mounted on the arm of the Colossus, used to convert and fire concentrated spirit energy.'),
  ('Butterfly sword', 'A short single-edged blade with a turned-up hilt for easy flipping.'),
  ('Guan Dao spear', 'A large, heavy pole weapon used by a dojo master in the Patola Mountain Range.'),
  ('Hook swords', 'Primary weapons of Jet and Tokuga, consisting of a long pole with a hook, a curved blade, and a spearhead. They can be hooked together to double their reach.'),
  ('Kama', 'A traditional farming implement similar to a sickle that can also be used as a weapon.'),
  ('Katana', 'A type of curved, slender, single-edged sword used by the Kyoshi Warriors.'),
  ('Kukri', 'A curved knife used as both a tool and a weapon, wielded by Smellerbee.'),
  ('Lochaber ax', 'A pole weapon with an axe head and a point on the back for catching, hooking, and dragging.'),
  ('Naginata', 'A pole weapon with a thick, curved, katana-like blade on its end.'),
  ('Ninjato', 'A sword with a square grip and a straight blade, used by a bartender in the Misty Palms Oasis.'),
  ('Nunchaku', 'Two short lengths of wood connected by a chain, used as a flexible striking weapon.'),
  ('Pearl-handled dagger', 'A dagger with an inscription on one side saying "Made in Earth Kingdom" and "Never give up without a fight" on the other.'),
  ('Polearm', 'A large, two-handed edged weapon with an axe-like head on a long metal or wood pole.'),
  ('Pu Dao', 'An anti-cavalry halberd used in combat during the battle for Yu Dao by the reformed Fire Nation Army.'),
  ('Qian kun ri yue dao', 'A non-paired hook sword with blades resembling the sun and moon.'),
  ('War fans', 'Collapsible iron fans used for both offense and defense, primary weapons of the Kyoshi Warriors.'),
  ('Twin war hammer', 'A sledgehammer-like weapon used to augment earthbending attacks, which can also be attached to chains for a distance attack.'),
  ('Wooden club', 'A simple yet effective wooden weapon used by Pipsqueak.'),
  ('Bow', 'A weapon that uses tension to propel arrows. It is used by the Yuyan Archers and also by Vachir with flaming arrows.'),
  ('Crossbow', 'A weapon used by the pirates consisting of a bow mounted on a stock that shoots projectiles.'),
  ('Surface-to-air rocks', 'A large earthen projectile that is the primary weapon of the Royal Earthbender Guards.'),
  ('Earthbending-powered tank', 'A stone vehicle designed by Sokka and built by the mechanist to provide both transportation and protection during the invasion of the Fire Nation.'),
  ('Large earth coins', 'Human-sized round coins used as weapons by earthbending soldiers and civilians.'),
  ('Metal plates', 'Small metal plates used as ammunition by metalbenders, capable of binding enemies, blinding them, or delivering fatal blows.'),
  ('Meteor hammer', 'A weapon consisting of two weights connected by a rope or chain, easily concealed for defense or surprise attacks.'),
  ('Rock gloves', 'Favored weapons of the Dai Li, used to great effect in battle through earthbending.'),
  ('Aang''s armor', 'An elaborate but impractical set of armor from the Fire Nation with skull motifs, blades, chains, and spikes. It was too heavy for effective combat.'),
  ('Military armor', 'Standard Fire Nation armor, typically red and black with helmets. Designs vary by region and rank and can include a skull-shaped mask for benders.'),
  ('Ballista', 'A large, crew-served crossbow-like weapon that launches heavy spear-like bolts, harpoons, or explosive shells.'),
  ('Cannon', 'A primitive, firebending-powered cannon mounted on Fire Nation airships and used to launch bombs.'),
  ('Hand cannon', 'A bronze single-shot hand cannon that uses Fire Nation explosives, created during the era of Kyoshi.'),
  ('Catapult', 'A non-handheld, crew-served mechanical device used to throw heavy projectiles a great distance. Many Fire Navy ships have ornate trebuchet-style catapults.'),
  ('Trebuchet', 'Artillery used to hurl projectiles, most commonly flaming rocks, great distances.'),
  ('Dadao', 'Large, single-edged broadswords used by some Fire Nation soldiers.'),
  ('Dual broadswords', 'A category of single-edged swords primarily used for slashing and chopping, frequently wielded by Zuko.'),
  ('Fire Nation sword', 'The standard long-bladed sword used by Fire Nation soldiers.'),
  ('Guan Dao', 'A large, heavy pole weapon used by Kahchi of the Rough Rhinos and the Chou family.'),
  ('Hammer', 'A medium-sized sledgehammer that can be used as a tool or a weapon. It can also be connected to an iron chain for medium-distance attacks.'),
  ('Jian sword', 'A type of straight sword wielded by Piandao and Sokka. Sokka''s sword was forged from a meteorite and could cut through solid metal or rock.'),
  ('Jii', 'A halberd-spear with a crescent moon-shaped blade on one or both sides, useful against both ground infantry and cavalry.'),
  ('Kanabo', 'A large, heavy club weapon with metal studs or spikes. It has enough power to easily smash bones, even with a shield.'),
  ('Poison knife', 'A dagger with a compartment for poison in its handle. Jet "discovered" this on an elderly Fire Nation citizen to incriminate him.'),
  ('San gu cha', 'A trident-shaped dagger.'),
  ('Chain', 'A weapon used by Ogodei, made of a heavy object attached to a chain with a handle. It can be used to damage buildings or tie up enemies.'),
  ('Stiletto', 'Small, arrow-like darts used by Mai, thrown to restrain an enemy by pinning their clothes to a surface.'),
  ('Throwing knives', 'Mai''s preferred weapons. She carried a variety of these blades for different types of attacks.'),
  ('Bamboo ladders', 'Flexible ladders made of green bamboo used for the quick scaling of walls.'),
  ('Poison', 'An odorless, tasteless poison that causes a painless death. Ursa''s mother, a master herbalist, taught her how to create it.'),
  ('Cosh', 'A bludgeoning weapon used by the hired muscle of the shang merchant Teiin to beat down protestors.'),
  ('Flying bison armor', 'A one-of-a-kind suit of metal and leather armor made by Sokka for Appa to protect the bison and enhance his appearance.'),
  ('Sap', 'A bludgeoning weapon used by the hired muscle of the shang merchant Teiin to beat down protestors.');

-- =========================================
-- Quotes
-- =========================================
INSERT INTO quotes (character_id, quote)
VALUES
  ((SELECT id FROM characters WHERE name = 'Katara'), 'The strength of your heart makes you who you are'),
  ((SELECT id FROM characters WHERE name = 'Aang'), 'Harsh words can''t solve problems; action will'),
  ((SELECT id FROM characters WHERE name = 'Pakku'), 'With fierce determination, passion, and hard work, you can accomplish anything. Raw talent is not enough'),
  ((SELECT id FROM characters WHERE name = 'Zuko'), 'It''ve always had to struggle and fight, it''s made me who I am'),
  ((SELECT id FROM characters WHERE name = 'Katara'), 'There''s always a right way to do things'),
  ((SELECT id FROM characters WHERE name = 'Katara'), 'Love is brightest in the dark'),
  ((SELECT id FROM characters WHERE name = 'Chong'), 'Sokka, I hope you learned a little something about not letting the plans get in the way of the journey'),
  ((SELECT id FROM characters WHERE name = 'Huu'), 'We all have the same roots, and we are all branches of the same tree'),
  ((SELECT id FROM characters WHERE name = 'Huu'), 'People we''ve loved, people we''ve lost.. but they''re not; we''re still connected to them. Time is an illusion, and so is death'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'You must never give into despair. Allow yourself to slip down that road and you surrender to your lowest instincts. In the darkest times, hope is something you give yourself. That is the meaning of inner strength.'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'There is nothing wrong with letting people who love you help you.'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'It is important to draw wisdom from many different places. If you take it from only one place, it becomes rigid and stale. Understanding others... will help you become whole.'),
  ((SELECT id FROM characters WHERE name = 'Katara'), 'Sometimes it hurts more to hope, and it hurts more to care'),
  ((SELECT id FROM characters WHERE name = 'Smeller Bee'), 'As long as I''m confident with who I am, it doesn''t matter what other people think'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'While it is great to believe in one self, a little help from others can be a great blessing'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'Sometimes life is like this dark tunnel. You can''t see the light at the end, but if you just keep moving, you will come to a better place'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'Power and perfection are overrated. I think you are wise to choose happiness and love'),
  ((SELECT id FROM characters WHERE name = 'Zuko'), 'No, it''s not. Look, Sokka, you''re going to fail a lot before things work out.Even though you''ll probably fail over and over and over again...you have to try every time. You can''t quit because you''re afraid you might fail.'),
  ((SELECT id FROM characters WHERE name = 'Aang'), 'The monks used to say that revenge is like a two-headed rat viper. While you watch your enemy go down, you''re being poisoned yourself.'),
  ((SELECT id FROM characters WHERE name = 'Lion Turtle'), 'The true mind can weather all the lies and illusions without being lost. The true heart can tough the poison of hatred without being harmed. Since beginning-less time, darkness thrives in the void, but always yields to purifying light'),
  ((SELECT id FROM characters WHERE name = 'Azula'), 'That''s a sharp outfit Chan, careful you could puncture the hull of an empire class fire nation battleship leaving thousands to drown at sea.. because it''s so sharp'),
  ((SELECT id FROM characters WHERE name = 'Sokka'), 'IT''LL QUENCH YA, IT''S THE QUENCHIEST!'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'That''s it! I have discovered my first order of business as interim Fire Lord! I will declare a National Tea Appreciation Day!'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'Life happens wherever you are, whether you make it or not.'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'Sick of tea! That''s like being sick of breathing!'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'You must look within yourself to save yourself from your other self. Only then will your true self reveal itself.'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'Are you so busy fighting you cannot see your own ship has set sail?'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'You''re looking at the rare white dragon bush. Its leaves make a tea so delicious, it''s heartbreaking. That, or it''s the white jade bush, which is poisonous. Hmmm... Delectable tea or deadly poison?'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'Remember that plant that I thought might be tea? ...It wasn''t. When the rash spreads to my throat, I will stop breathing. But look what I found! These are Pakui Berries, known to cure the poison of the white jade plant. That,  or makaola berries that cause blindness.'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'The stomach is the source of energy in your body. It is called the sea of chi. Only in my case, it is more like a vast ocean.'),
  ((SELECT id FROM characters WHERE name = 'Iroh'), 'Pride is not the opposite of shame, but its source. True humility is the only antidote to shame.'),
  ((SELECT id FROM characters WHERE name = 'Monk Gyatso'), 'We can''t concern ourselves on what was; we must act on what is.'),
  ((SELECT id FROM characters WHERE name = 'Zuko'), 'That''s rough buddy.'),
  ((SELECT id FROM characters WHERE name = 'Jeong Jeong'), 'Destiny? What would a boy know of destiny? If a fish lives it''s whole life in this river, does he know the river''s destiny? No! Only that it runs on and on, out of his control. He may follow where it flows, but he cannot see the end. He cannot imagine the ocean.'),
  ((SELECT id FROM characters WHERE name = 'Zaheer'), 'When you base your expectations only on what you see, you blind yourself to the possibilities of a new reality.'),
  ((SELECT id FROM characters WHERE name = 'Aang'), 'I laugh at gravity all the time!'),
  ((SELECT id FROM characters WHERE name = 'Huu'), 'Pants are an illusion. And so is death.'),
  ((SELECT id FROM characters WHERE name = 'Zuko'), 'I DON''T NEED ANY CALMING TEA!!!'),
  ((SELECT id FROM characters WHERE name = 'Cabbage Merchant'), 'MY CABBAGES!!'),
  ((SELECT id FROM characters WHERE name = 'King Bumi'), 'Instead of seeing what they want you to see, you got to open your brain to the possibilities'),
  ((SELECT id FROM characters WHERE name = 'King Bumi'), 'Someone very important is missing from your group... WHERE''s MOMO!'),
  ((SELECT id FROM characters WHERE name = 'King Bumi'), 'I didn''t know what or when, but I knew I''d know it when I knew it!'),
  ((SELECT id FROM characters WHERE name = 'King Bumi'), 'You need to find someone who WAITS and LISTENS before striking.'),
  ((SELECT id FROM characters WHERE name = 'King Bumi'), 'The guards will show you to your chamber. The one that used to be the bad chamber, until the recent refurbishing that is. Of course, we''ve been calling it the new chamber, but we really should number them. Uh, take them to the refurbished chamber that was once bad!'),
  ((SELECT id FROM characters WHERE name = 'Aang'), 'When we hit our lowest point, we are open to the greatest change.'),
  ((SELECT id FROM characters WHERE name = 'Aang'), 'The past can be a great teacher.');

-- =========================================
-- Character Weapons
-- =========================================
INSERT INTO character_weapons (character_id, weapon_id)
VALUES
  ((SELECT id FROM characters WHERE name = 'Aang'), (SELECT id FROM weapons WHERE name = 'Air Nomad glider')),
  ((SELECT id FROM characters WHERE name = 'Sokka'), (SELECT id FROM weapons WHERE name = 'Boomerang')),
  ((SELECT id FROM characters WHERE name = 'Sokka'), (SELECT id FROM weapons WHERE name = 'Whale''s tooth scimitar')),
  ((SELECT id FROM characters WHERE name = 'Sokka'), (SELECT id FROM weapons WHERE name = 'Machete')),
  ((SELECT id FROM characters WHERE name = 'Sokka'), (SELECT id FROM weapons WHERE name = 'Jian sword')),
  ((SELECT id FROM characters WHERE name = 'Zuko'), (SELECT id FROM weapons WHERE name = 'Dual broadswords')),
  ((SELECT id FROM characters WHERE name = 'Zuko'), (SELECT id FROM weapons WHERE name = 'Jian sword')),
  ((SELECT id FROM characters WHERE name = 'Mai'), (SELECT id FROM weapons WHERE name = 'Stiletto')),
  ((SELECT id FROM characters WHERE name = 'Mai'), (SELECT id FROM weapons WHERE name = 'Throwing knives')),
  ((SELECT id FROM characters WHERE name = 'Ursa'), (SELECT id FROM weapons WHERE name = 'Poison')),
  ((SELECT id FROM characters WHERE name = 'Suki'), (SELECT id FROM weapons WHERE name = 'Collapsible wrist-shield')),
  ((SELECT id FROM characters WHERE name = 'Suki'), (SELECT id FROM weapons WHERE name = 'War fans')),
  ((SELECT id FROM characters WHERE name = 'Kyoshi'), (SELECT id FROM weapons WHERE name = 'Collapsible wrist-shield')),
  ((SELECT id FROM characters WHERE name = 'Kyoshi'), (SELECT id FROM weapons WHERE name = 'War fans')),
  ((SELECT id FROM characters WHERE name = 'Jet'), (SELECT id FROM weapons WHERE name = 'Butterfly sword')),
  ((SELECT id FROM characters WHERE name = 'Jet'), (SELECT id FROM weapons WHERE name = 'Hook swords')),
  ((SELECT id FROM characters WHERE name = 'Jet'), (SELECT id FROM weapons WHERE name = 'Poison knife')),
  ((SELECT id FROM characters WHERE name = 'Appa'), (SELECT id FROM weapons WHERE name = 'Flying bison armor'));

-- =========================================
-- Character Bending
-- =========================================
INSERT INTO character_bending (character_id, bending_id)
VALUES
  ((SELECT id FROM characters WHERE name = 'Aang'), (SELECT id FROM bending_styles WHERE name = 'Airbending')),
  ((SELECT id FROM characters WHERE name = 'Aang'), (SELECT id FROM bending_styles WHERE name = 'Waterbending')),
  ((SELECT id FROM characters WHERE name = 'Aang'), (SELECT id FROM bending_styles WHERE name = 'Earthbending')),
  ((SELECT id FROM characters WHERE name = 'Aang'), (SELECT id FROM bending_styles WHERE name = 'Firebending')),
  ((SELECT id FROM characters WHERE name = 'Aang'), (SELECT id FROM bending_styles WHERE name = 'Energybending')),
  ((SELECT id FROM characters WHERE name = 'Gyatso'), (SELECT id FROM bending_styles WHERE name = 'Airbending')),
  ((SELECT id FROM characters WHERE name = 'Katara'), (SELECT id FROM bending_styles WHERE name = 'Waterbending')),
  ((SELECT id FROM characters WHERE name = 'Hama'), (SELECT id FROM bending_styles WHERE name = 'Waterbending')),
  ((SELECT id FROM characters WHERE name = 'Pakku'), (SELECT id FROM bending_styles WHERE name = 'Waterbending')),
  ((SELECT id FROM characters WHERE name = 'Kanna'), (SELECT id FROM bending_styles WHERE name = 'Waterbending')),
  ((SELECT id FROM characters WHERE name = 'Toph Beifong'), (SELECT id FROM bending_styles WHERE name = 'Earthbending')),
  ((SELECT id FROM characters WHERE name = 'King Bumi'), (SELECT id FROM bending_styles WHERE name = 'Earthbending')),
  ((SELECT id FROM characters WHERE name = 'Kyoshi'), (SELECT id FROM bending_styles WHERE name = 'Earthbending')),
  ((SELECT id FROM characters WHERE name = 'Kyoshi'), (SELECT id FROM bending_styles WHERE name = 'Waterbending')),
  ((SELECT id FROM characters WHERE name = 'Kyoshi'), (SELECT id FROM bending_styles WHERE name = 'Firebending')),
  ((SELECT id FROM characters WHERE name = 'Kyoshi'), (SELECT id FROM bending_styles WHERE name = 'Airbending')),
  ((SELECT id FROM characters WHERE name = 'Zuko'), (SELECT id FROM bending_styles WHERE name = 'Firebending')),
  ((SELECT id FROM characters WHERE name = 'Azula'), (SELECT id FROM bending_styles WHERE name = 'Firebending')),
  ((SELECT id FROM characters WHERE name = 'Iroh'), (SELECT id FROM bending_styles WHERE name = 'Firebending')),
  ((SELECT id FROM characters WHERE name = 'Roku'), (SELECT id FROM bending_styles WHERE name = 'Firebending')),
  ((SELECT id FROM characters WHERE name = 'Roku'), (SELECT id FROM bending_styles WHERE name = 'Airbending')),
  ((SELECT id FROM characters WHERE name = 'Roku'), (SELECT id FROM bending_styles WHERE name = 'Waterbending')),
  ((SELECT id FROM characters WHERE name = 'Roku'), (SELECT id FROM bending_styles WHERE name = 'Earthbending')),
  ((SELECT id FROM characters WHERE name = 'Ozai'), (SELECT id FROM bending_styles WHERE name = 'Firebending'));