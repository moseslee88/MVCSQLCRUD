-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema basketballdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `basketballdb` ;

-- -----------------------------------------------------
-- Schema basketballdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `basketballdb` DEFAULT CHARACTER SET utf8 ;
USE `basketballdb` ;

-- -----------------------------------------------------
-- Table `Team`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Team` ;

CREATE TABLE IF NOT EXISTS `Team` (
  `id` INT NOT NULL,
  `team_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Player`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Player` ;

CREATE TABLE IF NOT EXISTS `Player` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `team` VARCHAR(45) NULL,
  `position` VARCHAR(45) NULL,
  `Pts_per_game` DOUBLE NOT NULL,
  `rebounds_per_game` DOUBLE NOT NULL,
  `assists_per_game` DOUBLE NOT NULL,
  `fieldgoalpercentage` DOUBLE NULL,
  `salary` INT NULL,
  `Team_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Player_Team`
    FOREIGN KEY (`Team_id`)
    REFERENCES `Team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Player_Team_idx` ON `Player` (`Team_id` ASC);

SET SQL_MODE = '';
GRANT USAGE ON *.* TO nbaballplayer@localhost;
 DROP USER nbaballplayer@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'nbaballplayer'@'localhost' IDENTIFIED BY 'nbaballplayer';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'nbaballplayer'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Team`
-- -----------------------------------------------------
START TRANSACTION;
USE `basketballdb`;
INSERT INTO `Team` (`id`, `team_name`) VALUES (1, 'Atlanta Hawks');
INSERT INTO `Team` (`id`, `team_name`) VALUES (2, 'Boston Celtics');
INSERT INTO `Team` (`id`, `team_name`) VALUES (3, 'Brooklyn Nets');
INSERT INTO `Team` (`id`, `team_name`) VALUES (4, 'Charlotte Hornets');
INSERT INTO `Team` (`id`, `team_name`) VALUES (5, 'Chicago Bulls');
INSERT INTO `Team` (`id`, `team_name`) VALUES (6, 'Cleveland Cavaliers');
INSERT INTO `Team` (`id`, `team_name`) VALUES (7, 'Dallas Mavericks');
INSERT INTO `Team` (`id`, `team_name`) VALUES (8, 'Denver Nuggets');
INSERT INTO `Team` (`id`, `team_name`) VALUES (9, 'Detroit Pistons');
INSERT INTO `Team` (`id`, `team_name`) VALUES (10, 'Golden State Warriors');
INSERT INTO `Team` (`id`, `team_name`) VALUES (11, 'Houston Rockets');
INSERT INTO `Team` (`id`, `team_name`) VALUES (12, 'Indiana Pacers');
INSERT INTO `Team` (`id`, `team_name`) VALUES (13, 'Los Angeles Clippers');
INSERT INTO `Team` (`id`, `team_name`) VALUES (14, 'Los Angeles Lakers');
INSERT INTO `Team` (`id`, `team_name`) VALUES (15, 'Memphis Grizzlies');
INSERT INTO `Team` (`id`, `team_name`) VALUES (16, 'Miami Heat');
INSERT INTO `Team` (`id`, `team_name`) VALUES (17, 'Milwaukee Bucks');
INSERT INTO `Team` (`id`, `team_name`) VALUES (18, 'Minnesota Timberwolves');
INSERT INTO `Team` (`id`, `team_name`) VALUES (19, 'New Orleans Pelicans');
INSERT INTO `Team` (`id`, `team_name`) VALUES (20, 'New York Knicks');
INSERT INTO `Team` (`id`, `team_name`) VALUES (21, 'Oklahoma City Thunder');
INSERT INTO `Team` (`id`, `team_name`) VALUES (22, 'Orlando Magic');
INSERT INTO `Team` (`id`, `team_name`) VALUES (23, 'Philadelphia 76ers');
INSERT INTO `Team` (`id`, `team_name`) VALUES (24, 'Phoenix Suns');
INSERT INTO `Team` (`id`, `team_name`) VALUES (25, 'Portland Trail Blazers');
INSERT INTO `Team` (`id`, `team_name`) VALUES (26, 'Sacramento Kings');
INSERT INTO `Team` (`id`, `team_name`) VALUES (27, 'San Antonio Spurs');
INSERT INTO `Team` (`id`, `team_name`) VALUES (28, 'Toronto Raptors');
INSERT INTO `Team` (`id`, `team_name`) VALUES (29, 'Utah Jazz');
INSERT INTO `Team` (`id`, `team_name`) VALUES (30, 'Washington Wizards  ');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Player`
-- -----------------------------------------------------
START TRANSACTION;
USE `basketballdb`;
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (1, 'Jordan Clarkson', 'Los Angeles Lakers', 'sg', 14.7, 3.0, 2.6, 44.5, 12500000, 14);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (2, 'Brandon Ingram', 'Los Angeles Lakers', 'sf', 9.4, 4.0, 2.1, 40.2, 5281680, 14);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (3, 'Dennis Schroder', 'Atlanta Hawks', 'pg', 13.5, 3.1, 6.3, 45.1, 2708582, 1);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (4, 'Kent Bazemore', 'Atlanta Hawks', 'sg', 11.0, 3.2, 2.4, 40.9, 15730338, 1);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (5, 'Isaiah Thomas', 'Boston Celtics', 'pg', 28.9, 2.7, 5.9, 46.3, 6587132, 2);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (6, 'Al Horford', 'Boston Celtics', 'c', 14.0, 6.8, 5.0, 47.3, 26540100, 2);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (7, 'Sean Kilpatrick', 'Brooklyn Nets', 'sg', 13.1, 4.0, 2.2, 41.5, 980431, 3);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (8, 'Isaiah Whitehead', 'Brooklyn Nets', 'pg', 7.4, 2.5, 2.6, 40.2, 1074145, 3);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (9, 'Frank Kaminsky', 'Charlotte Hornets', 'c', 11.7, 4.5, 2.2, 39.9, 2730000, 4);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (10, 'Kemba Walker', 'Charlotte Hornets', 'pg', 23.2, 3.9, 5.5, 44.4, 12000000, 4);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (11, 'Dwyane Wade', 'Chicago Bulls', 'sg', 18.3, 4.5, 3.8, 43.4, 23200000, 5);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (12, 'Nikola Mirotic', 'Chicago Bulls', 'pf', 10.6, 5.5, 1.1, 41.3, 5782450, 5);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (14, 'Kyrie Irving', 'Cleveland Cavaliers', 'pg', 25.2, 3.2, 5.8, 47.3, 17638063, 6);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (15, 'Dirk Nowitzki', 'Dallas Mavericks', 'pf', 14.2, 6.5, 1.5, 43.7, 25000000, 7);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (16, 'Harrison Barnes', 'Dallas Mavericks', 'sf', 19.2, 5.0, 1.5, 46.8, 22116750, 7);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (17, 'Stephen Curry', 'Golden State Warriors', 'pg', 25.3, 4.5, 6.6, 46.8, 34682550, 10);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (18, 'Kevin Durant', 'Golden State Warriors', 'sf', 25.1, 8.3, 4.8, 53.7, 26540100, 10);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (19, 'Blake Griffin', 'Los Angeles Clippers', 'pf', 21.6, 8.1, 4.9, 49.3, 20140838, 13);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (20, 'DeAndre Jordan', 'Los Angeles Clippers', 'c', 12.7, 13.8, 1.2, 71.4, 21165675, 13);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (21, 'Nikola Jokic', 'Denver Nuggets', 'c', 16.7, 9.8, 4.9, 57.8, 1358500, 8);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (22, 'Emmanuel Mudiay', 'Denver Nuggets', 'pg', 11.0, 3.2, 3.9, 37.7, 3241800, 8);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (23, 'Andre Drummond', 'Detroit Pistons', 'c', 13.6, 13.8, 1.1, 53.0, 22116750, 9);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (24, 'Reggie Jackson', 'Detroit Pistons', 'pg', 14.5, 2.2, 5.2, 41.9, 14956522, 9);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (25, 'Chris Paul', 'Houston Rockets', 'pg', 18.1, 5.0, 9.2, 47.6, 24599495, 11);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (26, 'James Harden', 'Houston Rockets', 'sg', 29.1, 8.1, 11.2, 44.0, 28299339, 11);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (13, 'Lebron James', 'Cleveland Cavaliers', 'sf', 26.4, 8.6, 8.7, 54.8, 30963450, 6);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (27, 'Al Jefferson', 'Indiana Pacers', 'pf', 8.1, 4.2, 0.9, 49.9, 10230179, 12);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (28, 'Myles Turner', 'Indiana Pacers', 'c', 14.5, 7.3, 1.3, 51.1, 2463840, 12);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (29, 'Vince Carter', 'Memphis Grizzlies', 'sf', 8.0, 3.1, 1.8, 39.4, 4264057, 15);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (30, 'Mike Conley', 'Memphis Grizzlies', 'pg', 20.5, 3.5, 6.3, 46.0, 26540100, 15);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (31, 'Hassan Whiteside', 'Miami Heat', 'c', 17.0, 14.1, 0.7, 55.7, 22116750, 16);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (32, 'Goran Dragic', 'Miami Heat', 'pg', 20.3, 3.8, 5.8, 47.5, 15890000, 16);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (33, 'Giannis Antetokounmpo', 'Milwaukee Bucks', 'sf', 22.9, 8.8, 5.4, 52.1, 22471910, 17);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (34, 'Jabari Parker', 'Milwaukee Bucks', 'PF', 20.1, 6.2, 2.8, 49.0, 5374320, 17);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (35, 'Karl Anthony-Towns Jr.', 'Minnesota Timberwolves', 'C', 25.1, 12.3, 2.7, 54.2, 5960160, 18);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (36, 'Andrew Wiggins', 'Minnesota Timberwolves', 'sf', 23.6, 4.0, 2.3, 45.2, 6006600, 18);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (37, 'Anthony Davis', 'New Orleans Pelicans', 'pf', 28.0, 11.8, 2.1, 50.5, 22116750, 19);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (38, 'Jrue Holiday', 'New Orleans Pelicans', 'pg', 15.4, 3.9, 7.3, 45.4, 11286518, 19);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (39, 'Carmelo Anthony', 'New York Knicks', 'sf', 22.4, 5.9, 2.9, 43.3, 24559380, 20);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (40, 'Kristaps PorzinGod Porzingis', 'New York Knicks', 'pf', 18.1, 7.2, 1.5, 45.0, 4317720, 20);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (41, 'Steven Adams', 'Oklahoma City Thunder', 'c', 11.3, 7.7, 1.1, 57.1, 3140517, 21);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (42, 'Russell Westbrook', 'Oklahoma City Thunder', 'pg', 31.6, 10.7, 10.4, 42.5, 26540100, 21);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (43, 'Evan Fournier', 'Orlando Magic', 'sf', 17.2, 3.1, 3.0, 43.9, 17000000, 22);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (44, 'Aaron Gordon', 'Orlando Magic', 'pf', 12.7, 5.1, 1.9, 45.4, 4351320, 22);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (45, 'Joel Embiid', 'Philadelphia 76ers', 'c', 20.2, 7.8, 2.1, 46.6, 4826160, 23);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (46, 'Robert Covington', 'Philadelphia 76ers', 'sf', 7.8, , , NULL, 1015696, 23);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (47, DEFAULT, 'Phoenix Suns', 'pg', DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 24);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (48, 'Devin Booker', 'Phoenix Suns', 'sg', 22.2, DEFAULT, DEFAULT, NULL, 2223600, 24);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (49, DEFAULT, 'Portland Trail Blazers', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 25);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (50, DEFAULT, 'Portland Trail Blazers', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 25);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (51, DEFAULT, 'Sacramento Kings', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 26);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (52, DEFAULT, 'Sacramento Kings', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 26);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (53, DEFAULT, 'San Antonio Spurs', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 27);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (54, DEFAULT, 'San Antonio Spurs', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 27);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (55, DEFAULT, 'Toronto Raptors', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 28);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (56, DEFAULT, 'Toronto Raptors', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 28);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (57, DEFAULT, 'Utah Jazz', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 29);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (58, DEFAULT, 'Utah Jazz', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 29);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (59, DEFAULT, 'Washington Wizards', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 30);
INSERT INTO `Player` (`id`, `name`, `team`, `position`, `Pts_per_game`, `rebounds_per_game`, `assists_per_game`, `fieldgoalpercentage`, `salary`, `Team_id`) VALUES (60, DEFAULT, 'Washington Wizards', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL, 30);

COMMIT;

