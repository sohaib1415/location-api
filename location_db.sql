/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.34-MariaDB : Database - location_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`location_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `location_db`;

/*Table structure for table `areas` */

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `areas_town_id_foreign` (`town_id`),
  CONSTRAINT `areas_town_id_foreign` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `areas` */

insert  into `areas`(`id`,`title`,`description`,`town_id`,`created_at`,`updated_at`) values (1,'possimus','Blanditiis dignissimos eveniet culpa explicabo consequatur saepe. Beatae illum quo enim et perspiciatis tempora. Assumenda autem asperiores quia blanditiis voluptatem voluptas ut. Omnis iure magnam placeat dolor. Sed explicabo commodi est quasi incidunt aut officiis.',4,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(2,'ut','Provident dolorem architecto eius quia voluptatum. Natus quia excepturi recusandae deleniti modi perspiciatis officia. Error voluptates quaerat dolores sit eligendi.',8,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(3,'ut','In facilis est consequatur. Ad et voluptatum mollitia sed accusamus aliquam ad. Mollitia nihil dignissimos earum harum ut maiores consequatur itaque.',10,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(4,'tempore','Eaque et non sequi. Tempora praesentium ea beatae. Dolorem nemo accusantium nesciunt mollitia eum. Officiis et repellat dolore qui rerum magni nulla.',6,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(5,'in','Ullam voluptatem cum esse rerum possimus. Ut inventore atque iure fugiat. Optio reiciendis ex tenetur laboriosam aut at dolorem. Beatae ullam vero at necessitatibus voluptatem necessitatibus nostrum.',6,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(6,'ea','Repudiandae facilis provident voluptatum dolores eum quia. Repellendus distinctio quos consequuntur. Doloribus officiis sunt aut aut aut consequatur aliquam. Voluptatibus provident provident cumque.',2,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(7,'ut','Ut est qui id in vel. Porro eveniet libero qui labore.',6,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(8,'quae','Dolor ut molestias nesciunt rerum in. Rerum repudiandae eaque voluptas autem magni. Reprehenderit enim porro accusamus cum.',10,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(9,'optio','Qui totam totam rem temporibus facilis quibusdam ipsam. Iusto eius quidem porro voluptatibus voluptatem beatae deleniti autem. Et quo fugiat similique voluptatibus accusantium quia id.',5,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(10,'aspernatur','Qui et molestias a dicta laborum aut ducimus. Tenetur dolores maiores alias fugit aut. Itaque unde et eum architecto. Explicabo aut odit quis eligendi sint nihil.',9,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(11,'unde','Veritatis autem odio sit quaerat deserunt voluptatem. Eum eum voluptatem facere et sed a necessitatibus est. Id aliquam cupiditate magnam ratione aut aut.',5,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(12,'itaque','Neque sunt quis aliquam ipsum qui ipsa dignissimos. Culpa fugiat consectetur voluptatem quam voluptatem dolorem. Fuga magni quisquam vitae sed sunt. Unde ullam dolores vitae hic ut.',5,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(13,'nihil','Magni exercitationem quia velit in sunt velit. At commodi mollitia incidunt praesentium. Sit amet est nulla sit. Nemo at natus ex delectus laboriosam.',10,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(14,'porro','Aut ratione consectetur illo vel illo iste vel. Voluptas consequuntur porro ea eveniet impedit dolor nobis. Dolorum ex dolor culpa tenetur vero iste. Alias ut atque voluptate omnis ut.',8,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(15,'ut','Autem dignissimos veritatis nam omnis et hic. Aut voluptatem est sint quia eum iste suscipit omnis. Est quis animi omnis quod dolores. Rem rerum hic deleniti iste totam doloremque quidem.',10,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(16,'est','Placeat consectetur repudiandae enim ipsam earum porro. Natus dolorum qui omnis omnis quis tenetur. Aspernatur vel eos dolorem dolor qui maxime minus.',7,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(17,'maxime','Quisquam veritatis quibusdam dolores voluptates vel atque nihil. Aut cumque nesciunt nulla eum voluptatibus sed officiis. Atque placeat vel corporis libero deserunt molestiae voluptas. Quasi voluptas aspernatur rem voluptas.',10,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(18,'et','Occaecati laboriosam aperiam voluptate occaecati ex eligendi minima. Qui incidunt ea omnis quis dolore voluptas esse. Laboriosam inventore incidunt nihil architecto quos totam modi. Et quam quisquam enim sequi aut quia vitae.',5,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(19,'id','Voluptatem nam expedita velit excepturi alias ducimus. Veritatis sed eum quo sunt. Eum pariatur veniam aut qui aut odit dolorem.',7,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(20,'voluptatem','Sit voluptatem sint sed aut aut nesciunt quia. Ut ut nihil sint sunt aut molestiae nemo. Nisi veritatis maxime dignissimos et sit quis ipsam eaque.',10,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(21,'area title','aa',1,'2019-04-01 20:10:47','2019-04-01 20:10:47'),(22,'area title','aa',1,'2019-04-01 20:18:21','2019-04-01 20:18:21'),(23,'area title','aa',1,'2019-04-01 20:18:42','2019-04-01 20:18:42'),(24,'area title','aa',1,'2019-04-01 20:19:49','2019-04-01 20:19:49'),(25,'area title','aa',1,'2019-04-01 20:20:54','2019-04-01 20:20:54'),(26,'area title',NULL,40,'2019-04-02 19:18:38','2019-04-02 19:18:38'),(27,'TG-30287 oracle database + deployment changes',NULL,17,'2019-04-02 19:21:40','2019-04-02 19:21:40'),(28,'TG-30287 oracle database + deployment changes',NULL,17,'2019-04-02 19:21:46','2019-04-02 19:21:46'),(29,'TG-30287 container related files',NULL,14,'2019-04-02 19:22:11','2019-04-02 19:22:11'),(30,'TG-30287 oracle database + deployment changes',NULL,16,'2019-04-02 19:23:11','2019-04-02 19:23:11');

/*Table structure for table `locations` */

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `letter` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locations_area_id_foreign` (`area_id`),
  CONSTRAINT `locations_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `locations` */

insert  into `locations`(`id`,`number`,`letter`,`longitude`,`latitude`,`description`,`area_id`,`created_at`,`updated_at`) values (1,4,'Sint et quaerat repellendus et sint. Dicta rerum necessitatibus ut temporibus explicabo accusantium in. Optio sit natus molestias magnam omnis laudantium. Tenetur dolores velit hic eum nisi.','et','sed','Porro qui soluta optio laudantium sed eveniet qui recusandae. Quaerat omnis soluta quia blanditiis asperiores et dolor. Incidunt laboriosam et qui tempora illo blanditiis quibusdam.',10,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(2,8,'Minima et autem non sit praesentium amet. Necessitatibus inventore quia voluptas quo cum assumenda natus. Aspernatur sit beatae non molestiae. Consequatur necessitatibus nesciunt voluptas assumenda doloremque placeat dolorem. Amet nihil nobis praesentium magni at qui est.','et','odio','Labore reprehenderit laboriosam quia rerum qui impedit officiis debitis. Quibusdam culpa perspiciatis fuga eos harum. Itaque doloribus debitis quis dicta.',6,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(3,5,'Modi expedita accusantium doloribus ut rerum illum. Aut nobis ratione aperiam mollitia ea eos velit. Quod sunt autem nisi labore dolor. Exercitationem sint amet atque ut molestiae voluptatibus.','commodi','nemo','Tenetur eveniet ut facilis magnam ratione similique. Impedit rerum vitae neque in soluta. Nesciunt repudiandae nobis rem deleniti. Necessitatibus alias repellat minus vero nisi illo.',9,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(4,3,'Non provident eius facilis labore. Maiores optio reiciendis magnam ex et amet. Voluptatem et reprehenderit distinctio reiciendis voluptatem a perferendis. Id maxime reprehenderit ipsam quam est eum consequatur.','et','facilis','Et veritatis iusto vel repellendus sint. Velit aspernatur omnis deserunt dolorum nobis adipisci. Quam quasi et vel provident a harum.',20,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(5,1,'Quae ab quo eum consectetur aut. Suscipit voluptates consequatur dolorum a consequatur.','ipsum','omnis','Quasi eius dolore eos eveniet rerum molestiae. Est aut ea voluptas et earum in perspiciatis. Odio est qui quibusdam optio magnam facere. Labore voluptas natus aut laboriosam.',16,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(6,1,'Eveniet et consequatur ratione ullam quasi totam. Dolorum quo et recusandae hic. Expedita in qui ad vitae illum labore. Deserunt nam iure libero rerum quis officia non.','exercitationem','sequi','Necessitatibus omnis dignissimos sapiente ex laboriosam aut sint. Et cum unde voluptates exercitationem incidunt harum.',10,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(7,8,'Deleniti sed aut dignissimos excepturi consequuntur. Vel sint quasi laborum deserunt aliquid voluptatibus.','occaecati','ea','Repudiandae quis minima adipisci minima itaque delectus suscipit. Quia accusantium inventore asperiores ullam debitis rerum dolorum. Amet minus hic voluptates.',18,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(8,7,'Voluptas nostrum ratione quod cumque ipsum labore minus. Vel voluptatem neque aut maiores molestiae ipsum nisi. Aliquam est voluptate exercitationem ea delectus cumque. Eum et velit ut quam facere architecto dolore.','voluptatem','voluptatem','Quidem adipisci quis quibusdam debitis est nihil. Ratione consequatur autem est qui. Illum voluptatem repellendus quod.',7,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(9,4,'Non et natus eos tempora. Aut beatae quia vero enim doloremque.','rerum','ut','Adipisci est dolor eaque quas. Numquam et corrupti quia quia quos vel voluptatem.',6,'2019-03-29 20:11:03','2019-03-29 20:11:03'),(10,5,'Numquam suscipit error natus harum sed blanditiis labore. Quisquam quo vel perferendis dolores et eius similique.','quibusdam','fugiat','Quas est quam vel iusto voluptatibus nemo maiores. Quae cupiditate iure odit vitae excepturi dolorem vero maiores. Et exercitationem provident natus labore accusamus assumenda et in. Eius nihil quisquam dolor eligendi quam quas voluptate.',6,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(11,3,'Rerum et ab quaerat quas et quia possimus eum. Odio non qui suscipit vitae accusamus. Ea itaque reprehenderit tempora iusto adipisci molestias itaque.','animi','eligendi','Et ipsa sequi laboriosam nesciunt facilis. Et magnam ad occaecati voluptas voluptas excepturi architecto dignissimos. Repellat reiciendis error quisquam et quasi odit dolor. Quas quia impedit consequatur.',13,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(12,7,'Maxime culpa voluptatem ipsa fuga. Nostrum voluptas enim harum qui reprehenderit ut. Inventore et quas consequatur voluptatem sapiente et.','ut','soluta','Modi vel esse sed reiciendis quas ducimus. Sequi enim nam cumque totam totam. Exercitationem magni cupiditate et sapiente.',6,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(13,8,'Velit rerum quibusdam accusantium qui occaecati maxime. Tempora occaecati aut et assumenda reiciendis labore occaecati. Amet aut consequatur qui accusantium et facere impedit voluptate. Et enim eos dolorem maxime animi placeat dolorum.','beatae','suscipit','Sint consequuntur molestiae quia aliquam magni. Dolorem labore magnam ipsum illo fugit at perferendis atque. Molestias temporibus odio aliquid natus reiciendis id placeat.',1,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(14,1,'Numquam temporibus reiciendis vel dolores magnam. At tempore quis et et. Soluta id laboriosam amet maxime enim numquam inventore.','excepturi','eos','Necessitatibus qui eaque excepturi sit eos. Sit aut harum omnis eum quia deserunt et. Omnis numquam doloribus ut ut excepturi ut quo. Vel autem recusandae odit.',12,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(15,1,'Assumenda illo vel est et ipsa dolorem iste. In sit deserunt minima et corporis quisquam rerum. Repellat in odio ex tempore. Et est sed eos consequuntur ratione.','quibusdam','id','Saepe quod dolor et. Sint commodi architecto deleniti sed. Pariatur nemo rerum blanditiis eligendi aut hic perspiciatis. Eius quis sunt delectus.',14,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(16,5,'Ut suscipit unde expedita reprehenderit quidem necessitatibus porro. Fuga sapiente aliquid explicabo. Quasi eum enim provident rem ratione architecto autem.','et','rerum','Omnis eum odio natus id accusamus. Voluptas cum earum sequi delectus odit recusandae consequatur. Dolorem omnis nisi sint ducimus est error voluptatibus.',20,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(17,8,'Perferendis quis qui sequi error. Molestiae enim voluptatem molestias nam voluptate. Rem est eligendi quaerat sed.','magni','dolores','Autem quis aut odio adipisci sit id dolorum. Est quaerat ea eius qui asperiores dolores voluptas. Nemo natus enim autem molestiae dolores consequuntur. Ad libero occaecati enim et.',11,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(18,4,'Omnis et repellat minus repellat sunt. Sit voluptates rem voluptas molestiae numquam. Praesentium culpa praesentium quam quae maxime.','consequatur','inventore','Id rerum quo vel ut et molestiae voluptatem. Necessitatibus blanditiis commodi adipisci tenetur omnis maiores et nisi. Ea occaecati eos molestias voluptatem. Qui quia voluptates vitae dolor.',19,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(19,9,'Hic ut sunt consequuntur tempora qui ut voluptas. Repudiandae modi sint sunt nemo. Voluptas at dolorem occaecati molestiae autem ut voluptas.','enim','necessitatibus','Corporis provident et laudantium omnis ut at. Velit et assumenda nobis tempora ut qui molestiae perspiciatis. Suscipit nulla quam magni molestiae reprehenderit reiciendis rem. Beatae corporis rerum rerum eligendi.',11,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(20,1,'Reprehenderit iure quis ea doloribus et nesciunt voluptatem. Quasi nemo aspernatur aut qui magni id soluta. Possimus laborum eos autem id facilis.','pariatur','excepturi','Qui alias eos non velit nostrum nesciunt. Rerum aut iste ducimus natus. Ad quasi eum itaque maxime.',3,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(21,8,'Error doloribus suscipit non. Doloremque rerum placeat quia eum doloribus. Dolore expedita sunt odio ea tempora. Est ab voluptatem ut asperiores quaerat ipsam.','doloribus','dolorum','Quisquam aliquam sit ipsam pariatur eligendi ut. Ut officia adipisci tempore qui sunt. Nam libero eveniet ut ea.',8,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(22,4,'Velit non ullam deserunt voluptatem quod facilis. Voluptas molestias qui impedit eos voluptatem.','numquam','et','Minus facere impedit voluptates ea. Necessitatibus non rerum voluptas ab. Eligendi quas eos veniam quo architecto. Modi unde labore quia dolor voluptas consequatur.',1,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(23,6,'Voluptatem sequi quos repudiandae perspiciatis non ut. Assumenda temporibus voluptatem ut eum vel neque ea suscipit. Aut eum repellat sunt.','eligendi','illum','Expedita animi quos fugit laboriosam. Fuga sit illum ea. Dolorum delectus placeat quia ipsum voluptatum laboriosam quibusdam.',15,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(24,3,'Et explicabo ullam consequatur nihil consectetur delectus velit. Fugiat et maxime ut eos dolor quae accusantium. Dignissimos a aliquam at dolore aspernatur et atque soluta. Qui qui ea aut exercitationem illo quis porro unde.','autem','adipisci','Et vitae ullam quia quos veritatis amet ipsa soluta. Aut cumque ad quibusdam laudantium harum minus. Dicta laborum quia porro non sint enim itaque. At rerum voluptatem quaerat aperiam at.',1,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(25,8,'Reprehenderit enim dolor quam error ullam itaque. Est et dignissimos dolorem possimus dolor a odio beatae. Vel pariatur cum assumenda consequatur sed est quidem ullam. Cum magni deleniti minus ut qui nostrum qui doloribus.','inventore','quia','Quis et dolor exercitationem sunt velit repellat totam. Reiciendis facilis accusantium occaecati. Sint amet vitae vitae. Similique illo doloribus non eos.',20,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(26,7,'Est consequatur quasi ducimus ullam voluptas. Unde ut exercitationem eius dolor architecto ea perspiciatis. Omnis voluptas qui non vero veniam. Sit ea quidem dolorem nisi aut et qui impedit.','ut','perferendis','Quis adipisci voluptas eveniet voluptatem et. Explicabo provident odit aut molestiae voluptatem cum beatae. Voluptatem voluptatem nihil minus quae unde voluptas dicta. Repellendus rerum est voluptatem fugiat est.',9,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(27,8,'Explicabo quaerat deleniti magnam consequatur. Ea sunt deleniti iste est in. Dolorem reprehenderit adipisci numquam in et. Et dolorem ducimus ut ut.','non','qui','Laudantium dolorem fuga suscipit rerum. Quos officiis cumque consequatur deserunt tempora fuga sunt. Rem natus tempore sint harum autem quis. Ut omnis qui asperiores possimus aut.',2,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(28,4,'Explicabo atque ea inventore sunt. Incidunt beatae maxime quo consequatur molestias. Et reiciendis sit culpa. Est hic ut ut sint quaerat.','voluptates','aut','Ipsa incidunt ut odit vitae alias nostrum quis. Quisquam at voluptatibus occaecati itaque voluptatem sed saepe. Unde quod ea hic possimus.',19,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(29,2,'Recusandae eos vitae est consequatur ab. Dolorem culpa fugiat molestiae distinctio voluptatum qui eligendi. Quos omnis cupiditate ratione minima placeat laborum iure. Reprehenderit iste recusandae qui voluptatum architecto et.','et','voluptatum','Qui sit autem reiciendis ut inventore laboriosam. Rerum inventore quo nisi minima consequuntur. Aspernatur facilis sit dolores nulla odio.',12,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(30,6,'Tenetur autem voluptate et dignissimos quis autem omnis voluptatem. Excepturi velit et et. Eum fugiat est consequatur necessitatibus et. Dolorem et autem officia nostrum voluptas culpa suscipit. Est hic omnis corrupti numquam.','explicabo','quae','Nesciunt nemo minima ipsa. Aut sit repellendus omnis sed non dolorum rerum. Consequatur odit impedit vitae ipsam.',6,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(31,9,'Eveniet repellat ipsum ullam eum nisi. Explicabo impedit maxime cumque id ipsum quo. Et quam libero magni. Delectus accusamus est aut velit laborum recusandae. Similique vero et nobis qui tenetur maxime.','qui','nostrum','Quas eum ut commodi tenetur. Delectus repellat architecto doloribus veniam corrupti iste voluptate libero. Voluptatem temporibus dolores aut est fugiat.',19,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(32,4,'Non soluta quae quia ut qui. Ut ea maxime itaque. Mollitia unde aspernatur quasi similique vero. Dolor accusamus sint sapiente quasi.','tempora','voluptate','Quam necessitatibus saepe ipsa rerum consequatur mollitia delectus. Iusto dignissimos dolore exercitationem et voluptate enim. Quidem fugit possimus velit non consequuntur.',2,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(33,1,'Doloribus laboriosam ut animi cumque iste. Cupiditate magnam nostrum quibusdam omnis. Ut excepturi et quasi voluptatem.','qui','eligendi','Harum quos ratione unde ut. Earum labore at eum atque molestiae. Ut qui corrupti accusantium. Quia ut quia architecto alias.',6,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(34,5,'Optio voluptates aut unde quas. Et repellendus dolorem corporis omnis aperiam sed. Sit dolorem non ipsum est. Sapiente porro voluptatem sit at cum id.','rerum','ipsam','Sit culpa deleniti dolorem dolorem ut. Eum beatae dolor quia eos. Soluta quaerat quam accusantium neque illum esse totam.',11,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(35,3,'Doloremque explicabo sit quos perspiciatis est. Eaque dolores accusamus quia aliquid sequi quos. Quia incidunt quas quasi fugiat magnam quae. Enim sed possimus assumenda maxime.','consequatur','ut','Quia ut rerum rerum ex rem sit quidem. Ab et beatae itaque ab aut corporis et omnis. Perspiciatis pariatur qui atque quo.',19,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(36,9,'Aliquid aliquam quidem id aut minus est non. Et animi ea aut dolorem perferendis ut. Sint fugiat explicabo quasi architecto repellat iusto.','fuga','numquam','Velit quibusdam voluptatem voluptas at laboriosam. Ut expedita amet natus labore minima nostrum et blanditiis. Et eos dolorem est sint voluptatem ad.',13,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(37,8,'Quo temporibus rerum eos dignissimos qui aliquam. Totam laudantium modi et voluptatem dicta. Rem molestiae tempora est quas.','suscipit','consectetur','Inventore consectetur error occaecati nisi eum sint et delectus. Qui et sit earum voluptatem enim sequi perferendis. Repudiandae quos quisquam modi.',3,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(38,1,'Et ad aliquam aut consectetur dolor minus. Itaque quis ipsam voluptatum tempore in omnis. Nobis quo vel consequatur consectetur aut illo. Ullam hic facere facilis provident reiciendis dolores.','est','sequi','Consequatur excepturi ut aspernatur. Laudantium itaque ab voluptates nostrum. Rerum repudiandae nam qui nesciunt distinctio quis. Quam atque quo architecto asperiores expedita tempora dignissimos.',1,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(39,9,'Ut illo debitis aliquid velit cum. Corporis ab et velit quod. Veritatis corporis aut perferendis quia quod. Rerum quis et repellat est nihil est.','voluptates','temporibus','Ullam cum suscipit doloribus et sint dolores. Commodi unde qui possimus laudantium saepe magnam. Et sit dolore mollitia quis iusto iusto officia. Id sunt voluptates saepe quo et.',5,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(40,3,'Vitae itaque dolor ut at. Nemo omnis itaque corporis dolorem qui. Nihil beatae quidem iste similique voluptatem et reprehenderit voluptas.','maxime','id','Adipisci libero et non praesentium sint. Perferendis aperiam cum quo enim animi fugit. Optio consequuntur optio voluptas voluptatem reiciendis ad architecto praesentium.',13,'2019-03-29 20:11:04','2019-03-29 20:11:04'),(41,50,'aa','5.2','2.5','asd',1,'2019-04-01 20:22:18','2019-04-01 20:22:18'),(42,50,'aa','5.2','2.5','qwd',3,'2019-04-01 20:22:31','2019-04-01 20:22:31'),(43,50,'aa','5.2','2.5',NULL,18,'2019-04-02 19:19:05','2019-04-02 19:19:05');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (77,'2014_10_12_000000_create_users_table',1),(78,'2014_10_12_100000_create_password_resets_table',1),(79,'2019_03_29_101237_create_towns_table',1),(80,'2019_03_29_102023_create_areas_table',1),(81,'2019_03_29_102045_create_locations_table',1),(82,'2016_06_01_000001_create_oauth_auth_codes_table',2),(83,'2016_06_01_000002_create_oauth_access_tokens_table',2),(84,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),(85,'2016_06_01_000004_create_oauth_clients_table',2),(86,'2016_06_01_000005_create_oauth_personal_access_clients_table',2);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values (1,NULL,'Laravel Personal Access Client','15rrmO0pSf3at40KyVlHnsX2w3TdBgdEO1KyjTVD','http://localhost',1,0,0,'2019-03-29 21:49:21','2019-03-29 21:49:21'),(2,NULL,'Laravel Password Grant Client','jgdzb0u8WDSA06NIamC11qxmCEFsPl2OvI3YlzR6','http://localhost',0,1,0,'2019-03-29 21:49:21','2019-03-29 21:49:21');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values (1,1,'2019-03-29 21:49:21','2019-03-29 21:49:21');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `towns` */

DROP TABLE IF EXISTS `towns`;

CREATE TABLE `towns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `towns` */

insert  into `towns`(`id`,`title`,`description`,`created_at`,`updated_at`) values (1,'tenetur','Dicta corrupti tempore consequatur qui velit voluptas. Temporibus soluta tenetur et voluptas maiores. Ipsam perferendis cupiditate eum qui. Mollitia sint autem possimus autem commodi error.','2019-03-29 20:11:02','2019-03-29 20:11:02'),(2,'non','Voluptate minus enim maxime cumque ab at. Et labore reprehenderit a consequatur vel et saepe. Nostrum et inventore temporibus. Corrupti laudantium nisi quam.','2019-03-29 20:11:02','2019-03-29 20:11:02'),(3,'eum','Autem aut eaque quis error. Voluptatem facilis et excepturi vitae natus nulla modi. Quod nesciunt a voluptatibus enim repudiandae accusantium. Omnis rem sit ipsum inventore quia adipisci iure architecto.','2019-03-29 20:11:02','2019-03-29 20:11:02'),(4,'cumque','Porro dignissimos ut quis. Quia deserunt sunt eum. Eum saepe sunt esse. Quia et sequi magnam aspernatur.','2019-03-29 20:11:02','2019-03-29 20:11:02'),(5,'assumenda','Eum maiores laborum et iusto accusamus quasi aliquam. Repellat ad beatae asperiores facere animi. Qui sit enim aut illo dignissimos placeat officiis. Vitae quia id voluptatem id.','2019-03-29 20:11:02','2019-03-29 20:11:02'),(6,'et','Iste omnis ea quas sed voluptatem. Dolores soluta deserunt vel et nemo. Culpa ab enim necessitatibus. Molestiae earum qui perferendis autem alias est voluptate praesentium.','2019-03-29 20:11:02','2019-03-29 20:11:02'),(7,'nemo','Voluptatem et sit ipsa molestiae. Ut ea sed voluptatum nisi ullam dignissimos nihil. Tempora et placeat sed rem odio qui error. Laudantium sed optio a.','2019-03-29 20:11:02','2019-03-29 20:11:02'),(8,'autem','Quae rerum quaerat dolorem blanditiis dolores ipsam. Reprehenderit ipsa rem ut blanditiis itaque consequatur totam eius. Quos earum et laborum ratione ut ut ex autem. Non ut voluptate eligendi in sit magnam.','2019-03-29 20:11:02','2019-03-29 20:11:02'),(9,'ut','Dicta consectetur delectus voluptatem odio magnam voluptatum. Ut omnis expedita inventore in ea dolores explicabo dolorem. Impedit velit dolores aut corrupti.','2019-03-29 20:11:02','2019-03-29 20:11:02'),(10,'delectus','Dicta harum aut animi molestiae. Similique quo et dolor fugit deleniti. Et qui id consequatur deleniti. Quis et doloribus quae ut blanditiis alias expedita.','2019-03-29 20:11:02','2019-03-29 20:11:02'),(11,'TG-30287 container related files','asdasd','2019-04-01 19:19:08','2019-04-01 19:19:08'),(12,'Senior Software Engineer','asdasdasdasd','2019-04-01 19:24:26','2019-04-01 19:24:26'),(13,'TG-30287 container related files','aa','2019-04-01 19:41:05','2019-04-01 19:41:05'),(14,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:46:04','2019-04-01 19:46:04'),(15,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:46:54','2019-04-01 19:46:54'),(16,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:47:31','2019-04-01 19:47:31'),(17,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:48:27','2019-04-01 19:48:27'),(18,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:49:26','2019-04-01 19:49:26'),(19,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:50:35','2019-04-01 19:50:35'),(20,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:51:20','2019-04-01 19:51:20'),(21,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:54:04','2019-04-01 19:54:04'),(22,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:54:34','2019-04-01 19:54:34'),(23,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:55:23','2019-04-01 19:55:23'),(24,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:55:44','2019-04-01 19:55:44'),(25,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 19:56:00','2019-04-01 19:56:00'),(26,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 20:02:51','2019-04-01 20:02:51'),(27,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 20:03:01','2019-04-01 20:03:01'),(28,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 20:04:30','2019-04-01 20:04:30'),(29,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 20:05:04','2019-04-01 20:05:04'),(30,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 20:06:11','2019-04-01 20:06:11'),(31,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 20:06:47','2019-04-01 20:06:47'),(32,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 20:09:37','2019-04-01 20:09:37'),(33,'TG-30287 oracle database + deployment changes','asdasdasdasd','2019-04-01 20:10:34','2019-04-01 20:10:34'),(34,'Senior Software Engineer','asdasdasdasd','2019-04-02 06:28:13','2019-04-02 06:28:13'),(35,'test town',NULL,'2019-04-02 18:57:04','2019-04-02 18:57:04'),(36,'test2',NULL,'2019-04-02 19:05:00','2019-04-02 19:05:00'),(37,'test3',NULL,'2019-04-02 19:06:34','2019-04-02 19:06:34'),(38,'test4',NULL,'2019-04-02 19:11:51','2019-04-02 19:11:51'),(39,'test5',NULL,'2019-04-02 19:17:57','2019-04-02 19:17:57'),(40,'test5',NULL,'2019-04-02 19:18:17','2019-04-02 19:18:17');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,'Sohaib Danish','sohaib1415@gmail.com',NULL,'$2y$10$P8kl2CJ42AdY4ohnvMXhCOViTVeuq2B6tFRHQrr6LP5Idd9ZJBpki',NULL,'2019-04-01 15:14:17','2019-04-01 15:14:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
