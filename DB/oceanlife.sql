-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema oceanlifedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `oceanlifedb` ;

-- -----------------------------------------------------
-- Schema oceanlifedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `oceanlifedb` DEFAULT CHARACTER SET utf8 ;
USE `oceanlifedb` ;

-- -----------------------------------------------------
-- Table `ocean_life`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ocean_life` ;

CREATE TABLE IF NOT EXISTS `ocean_life` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `image_url` VARCHAR(2500) NULL,
  `geographic_location` TEXT(500) NULL,
  `special_abilities` TEXT(500) NULL,
  `size` DOUBLE NULL,
  `diet` TEXT(400) NULL,
  `varities` TEXT(500) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS oceanuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'oceanuser'@'localhost' IDENTIFIED BY 'oceanuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'oceanuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `ocean_life`
-- -----------------------------------------------------
START TRANSACTION;
USE `oceanlifedb`;
INSERT INTO `ocean_life` (`id`, `name`, `image_url`, `geographic_location`, `special_abilities`, `size`, `diet`, `varities`) VALUES (1, 'Swordfish', 'https://p7.hiclipart.com/preview/67/26/341/swordfish-black-sea-seafood-sea.jpg', 'Swordfish are found around the world in tropical, temperate, and sometimes cold waters of the Atlantic, Indian, and Pacific Oceans. They are found in the Gulf Stream of the Western North Atlantic, extending north into the Grand Banks of Newfoundland.', 'These fish are uniquely adapted to tolerate a broad range of settings, including cold water, warm water, and depths ranging from 3,000 feet to the surface.', The swordfish\'\'s bill is longer than that of other billfishes and their bodies larger. The largest recorded swordfish were 14.9 feet long and 1,430 pounds! The average swordfish, though, is about 10 feet long, with females reaching larger sizes than males when fully grown., 'Swordfish feed primarily on small bony fish and cephalopods. They opportunistically feed throughout the water column, taking prey at the surface, in the middle of the water column and at the ocean bottom. They may use their sails to herd fish.', 'There are three varities of swordfish. The Atlantic swordfish, Mediterranean swordfish and Pacific swordfish.');
INSERT INTO `ocean_life` (`id`, `name`, `image_url`, `geographic_location`, `special_abilities`, `size`, `diet`, `varities`) VALUES (2, 'Shark', 'https://p1.hiclipart.com/preview/61/119/622/great-white-shark-megalodon-bull-shark-poster-shark-attack-white-sharks-fish-cartilaginous-fish-png-clipart.jpg', 'They are found in just about every kind of ocean habitat, including the deep sea, open ocean, coral reefs, and under the Arctic ice.', 'Sharks do not have bones.\nSharks use their gills to filter oxygen from the water. They are a special type of fish known as \"elasmobranchs\", which translates into fish made of cartilaginous tissues—the clear gristly stuff that your ears and nose tip are made of. ', Sharks come in all sizes. The largest is the whale shark, which has been known to get as large as 18 meters (60 feet). The smallest fits in your hand., 'As a group, sharks and batoids eat almost anything: fishes, crustaceans, molluscs, marine mammals, and other sharks. While some sharks are probably not very selective feeders, certain sharks eat some foods more than others.', '\nSharks | Smithsonian Ocean\n500 species\n500+ Species. With over 500 species of sharks, there are many different shark sizes and shapes. The largest shark (and also largest fish) is the gentle whale shark (Rhincodon typus), which can reach lengths of 39 feet (12 meters).');
INSERT INTO `ocean_life` (`id`, `name`, `image_url`, `geographic_location`, `special_abilities`, `size`, `diet`, `varities`) VALUES (3, 'Turtle', 'https://p7.hiclipart.com/preview/862/43/677/loggerhead-sea-turtle-hawksbill-sea-turtle-tortoise-turtle.jpg', 'Sea turtles live in almost every ocean basin throughout the world, nesting on tropical and subtropical beaches. They migrate long distances to feed, often crossing entire oceans. Some loggerheads nest in Japan and migrate to Baja California Sur, Mexico to forage before returning home again.', 'Sea turtles are deep divers and can stay underwater for long periods of time. As reptiles, sea turtles breathe air, but they have the ability, under natural conditions, to remain submerged for hours at a time. They even sleep underwater.', Adults are 3 to 4 feet in carapace length (83 – 114 cm). The green turtle is the largest of the Cheloniidae family. The largest green turtle ever found was 5 feet (152 cm) in length and 871 pounds (395 kg). Weight: Adults weigh between 240 and 420 pounds (110 – 190 kg)., 'Loggerhead: Hatchlings are omnivores (meaning they eat both animals and plants) but adults are carnivores, favoring crabs, whelks, and conchs. Green: Fully grown sea turtles are herbivores and like to hang around coral reefs to scrape off seagrass and algae. Hatchlings, however, are omnivorous.', 'here are more than 350 species of turtles living on land—on all continents on Earth except Antarctica—and in both salt water and fresh water.');
INSERT INTO `ocean_life` (`id`, `name`, `image_url`, `geographic_location`, `special_abilities`, `size`, `diet`, `varities`) VALUES (4, 'Anglerfish', 'https://www.vhv.rs/dpng/d/36-363172_real-angler-fish-png-transparent-png.png', 'Most anglerfish live in the murky depths of the Atlantic and Antarctic oceans, up to a mile below the surface, although some live in shallow, tropical environments.', 'The deep sea anglerfish\'s lure is filled with bacteria that make their own light. Using a muscular skin flap, a deep sea anglerfish can either hide or reveal its lighted lure. By pulsing the light and moving the lure back and forth, they successfully attract pelagic crustaceans, fishes, and other prey.', Most anglerfish are less than a foot long, but some can be up to 3.3 feet (1 meter) in length! The largest anglerfish caught in the world weighed 126 pounds and 6 ounces., 'Anglerfish can also attract smaller fish to them, and they serve as easy targets once they are lured in close. Small fish, crustaceans, and snails make up most of an anglerfish\'s diet, though they are not incredibly picky eaters.', '\nThere are over 300 species of anglerfish living at various ocean depths.');
INSERT INTO `ocean_life` (`id`, `name`, `image_url`, `geographic_location`, `special_abilities`, `size`, `diet`, `varities`) VALUES (5, 'Dolphin', 'https://w7.pngwing.com/pngs/897/393/png-transparent-gray-dolphin-dolphin-dolphin-marine-mammal-mammal-animals-thumbnail.png', 'Dolphin habitats can be are found around the world, from tropical to temperate regions. Although they are warm-blooded, they tend to avoid oceans near the Arctic and Antarctic. The bottlenose dolphin, one of the most well-known species, prefers water between 50 and 90 degrees Fahrenheit.', 'Sound travels much better in water than light does and so it makes more sense for dolphins to sense their surroundings with sound. Their echolocation abilities are phenomenal; they can determine extraordinary details about everything around them. They use echolocation to hunt and navigate even in dark or murky water.', Dolphins vary in size and weight depending on species. The largest dolphin is the killer whale (Oscines Orca), which can be up to 23 feet long and weigh up to 4.5 tons. The smallest dolphin is the Heaviside\'s dolphin (Cephalorhynchus heavisidii), which is typically around 3.5 feet long and weighs about 88 pounds., 'Dolphins are carnivores and eat other animals. In the wild their diet consists of a variety of fish, squid, jellyfish, shrimp and octopus. These animals are so clever, they are often spotted trailing fishing boats with the hopes of scooping up the leftovers!', 'Currently there are 49 dolphin and porpoise species which are grouped into six families: the oceanic dolphin family is by far the largest with 38 members; the porpoise family has seven members; and there are four river dolphin families, each containing just one species.');
INSERT INTO `ocean_life` (`id`, `name`, `image_url`, `geographic_location`, `special_abilities`, `size`, `diet`, `varities`) VALUES (6, 'Whale', 'https://e7.pngegg.com/pngimages/27/40/png-clipart-sit-hip-whale-whale-great-whales.png', 'They can be found in temperate oceans and tropical waters around the equator, as well as in the freezing Arctic and Antarctic oceans. Some whale species can be found in seas, including the North Sea and the Mediterranean. Others migrate from one area to another to get to their feeding or mating grounds.', 'Whale brains contain specialized brain cells called spindle neurons. These are associated with advanced abilities such as recognising, remembering, reasoning, communicating, perceiving, adapting to change, problem-solving and understanding. ', A blue whale can grow to more than 100 feet long and weigh over 150 tons. Compare this to the fin whale, the second largest animal ever: typically 80 feet long and 60 tons—less than half the blue whale\'s weight., 'Whales eat a variety of species from the entire food chain from tiny zooplankton to other large mammals. Some species feed on swarms of zooplankton (copepods and euphausiids, or \"krill\"). Others feed on schooling fish. The sperm whale feeds on squid.', '\nThere are 91 species of whales in total that scientists know about, and they fall into two main types: Baleen and toothed. There are 15 species of baleen whales and 76 species of toothed ones. Toothed whales have teeth with which they eat their prey, while baleen whales have plates that strain prey from the water.');
INSERT INTO `ocean_life` (`id`, `name`, `image_url`, `geographic_location`, `special_abilities`, `size`, `diet`, `varities`) VALUES (7, 'Eel', 'https://w1.pngwing.com/pngs/152/122/png-transparent-fish-eel-unagi-european-eel-rayfinned-fishes-japanese-eel-electric-eel-moray-eel-asp-anguilla.png', 'Eels can be found in oceans across the globe, and many species can be found in freshwater habitats as well. Some species range into the frigid waters at the poles. Each species has its own unique distribution and range.', 'Special organs in the eel\'s body release powerful electric charges of up to 650 volts—that\'s more than five times the power of a standard United States wall socket! Although electric eels have the power to be the bullies of the Amazon, they are actually not very aggressive animals.', Adult Size: Adult females may reach a size of up to 6 feet, but normally attain a length between 2 to 3-1/2 feet in length. Males do not attain the large size of females, usually growing to 1-1/2 to 2 feet in length., 'Eels are primarily predatory fish with carnivorous diets. Some eel species are cannibalistic. Their diet typically consists of smaller fish, invertebrates, crustaceans, shrimp, crabs and sea urchins.', 'There are 19 main types of eels. Each type of eel can be categorized as freshwater or saltwater eels. Eels are ray-finned fish that belong to the order Anguilliformes. In this order, there are 4 suborders, 20 families, 111 genera, and 800 species.');
INSERT INTO `ocean_life` (`id`, `name`, `image_url`, `geographic_location`, `special_abilities`, `size`, `diet`, `varities`) VALUES (8, 'Crab', 'https://e7.pngegg.com/pngimages/190/371/png-clipart-black-and-red-crab-crab-front-food-seafood-thumbnail.png', 'Crabs live in more different places than any other sea animal. They are found almost everywhere in the ocean, including smoking volcanic vents thousands of feet below the surface. They also live under the ice in Antarctica. One type of crab even lives on land and climbs trees.', 'Crabs can walk in all directions, but mostly walk and run sideways. Crabs are decapods, meaning they have 10 legs. Female crabs can release 1000 to 2000 eggs at once. The lifespan of a small crab averages around 3-4 years, but larger species such as the giant Japanese spider crab can live as long as 100 years.', The Japanese spider crab is the largest crab in the world. Living near Japan, the Japanese spider crab (Macrocheira kaempferi) has the longest legs of any arthropod. It is possible for the distances between their claws to measure up to 12 ft. They have a carapace width of 16 inches and can weigh up to 42 lbs., 'Crabs eat an omnivorous diet. Smaller crabs eat algae, seaweed, worms, small clams, and shrimp. Larger crabs can eat squid, snails, mussels, other crabs and small fish. Some species of crabs can eat hard foods like barnacles, starfish and even sand dollars.', 'There are approximately 4,500 species of crab worldwide ranging in size from tiny pea crabs (no more than a few millimeters across) to Japanese Spider Crabs, which can get to be 12 feet across and can live up to 100 years.');
INSERT INTO `ocean_life` (`id`, `name`, `image_url`, `geographic_location`, `special_abilities`, `size`, `diet`, `varities`) VALUES (9, 'Octopus', 'https://w1.pngwing.com/pngs/752/753/png-transparent-octopus-seafood-common-octopus-tentacle-fish.png', 'Octopuses live in coastal marine waters and spend much of their time in dens—small holes and crevices in rocks and coral.', 'Octopuses can open clamshells, maneuver rocks—even dismantle the filtration systems of an aquarium tank. They can also develop opinions about people; one routinely squirted water down the back of a keeper it seemed to dislike. Another shot a jet of water at a light to cause a commotion.', This octopus is impressive in size. A full-grown giant Pacific octopus can weigh more than 50 pounds. The heaviest on record was a creature weighing 200 pounds and measuring nearly 20 feet across., 'Newly hatched octopuses will eat small foods such as copepods, larval crabs, and sea stars. Adult octopuses feed on crabs, clams, snails, small fishes, and even other octopuses. All species of octopus have venom of varying levels of toxicity, which they inject using a beak that is similar to a bird\'s.', 'There are around 300 species of octopus and they are found in every ocean. Most live on the seafloor, but some, like the paper nautilus, drift nearer to the surface. ');
INSERT INTO `ocean_life` (`id`, `name`, `image_url`, `geographic_location`, `special_abilities`, `size`, `diet`, `varities`) VALUES (10, 'Seahorse', 'https://w7.pngwing.com/pngs/283/852/png-transparent-yellow-seahorse-pacific-seahorse-longsnout-seahorse-syngnathidae-graphy-nine-fish-animal-syngnathidae-stock-photography-thumbnail.png', 'Seahorses are mainly found in shallow tropical and temperate salt water throughout the world, from about 45°S to 45°N. They live in sheltered areas such as seagrass beds, estuaries, coral reefs, and mangroves. Four', 'Special structures in their skin cells, called chromatophores, give seahorses the ability to change color. Seahorses use camouflage, the ability to blend into their surroundings, when they are escaping from predators and when they are sneaking up on prey of their own.', Seahorses range in size—from as small as a pine nut to as large as a banana. The largest seahorse species is Hippocampus abdominalis , or the big-bellied seahorse, which can reach more than a foot long (35 cm) and lives in the waters off Southern Australia and New Zealand., 'Seahorses mainly eat small crustaceans like amphipods and other invertebrates. Adult seahorses eat 30 to 50 times a day if available. They do not have a stomach or teeth, instead, they suck their prey in through a tubular snout, or a fused jaw, and pass it through an inefficient digestive system.', 'Seahorse: any of the species of small marine fish in the genus Hippocampus. There are at least 47 different species of seahorses.');

COMMIT;

