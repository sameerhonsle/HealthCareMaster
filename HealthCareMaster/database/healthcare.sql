/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.1.37-MariaDB : Database - healthcare
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`healthcare` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `healthcare`;

/*Table structure for table `prescription` */

DROP TABLE IF EXISTS `prescription`;

CREATE TABLE `prescription` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `addtional` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `medicine` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `symtoms` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `prescription` */

insert  into `prescription`(`id`,`address`,`addtional`,`city`,`country`,`dob`,`email`,`first_name`,`gender`,`last_name`,`medicine`,`phone_no`,`postal`,`state`,`symtoms`,`age`) values (24,'12 guntha, ashok nagar  ','don\'t drink cold water, and take rest properly.','maheshwar','india','17-02-1994','pawan@gmail.com','pawan','Male','sharma','1).Panadol(tab)- once in a day after lunch.\r\n2). ibuprofen(tab)- twice in a day after meal. ','8965321456','4563217','madhya','Chills and shivering, Headache','25'),(27,'tilak nagar near precident tower.','don\'t drink cold water, and take rest properly.','gwalior','India',NULL,'poonam@gmail.com','poonam',NULL,'singh','1).Panadol(tab)- once in a day after lunch.\r\n2). ibuprofen(tab)- twice in a day after meal.','896532145','474001','madhya pradesh','1).Headache\r\n2). Nausea or vomiting\r\n3). Chills, sometimes with shaking.','35'),(25,'ekta colony , gangwal house.','1). take hot milk with turmeric.','pune','India',NULL,'rahul@gmail.com','rahul','Male','verma','1).Panadol(tab)- once in a day after lunch.\r\n2). ibuprofen(tab)- twice in a day after meal.','08965324589','5698741','maharashtra','1). Chills and shivering.\r\n2). Headache.\r\n3). Muscle aches.','38'),(26,'nigdi pradhikaran','avoid cold drinks and sour things','pune','India',NULL,'aditi@gmail.com','aditi',NULL,'pathak','1) Coscopan(syrup) -  2-2 spoon twice in day after meal.\r\n2) pantagone 500mg(tab)- take two time after meal.  ','08965478523','5698741','maharashtra','1).Frequent throat clearing and sore throat.\r\n2). Heartburn or a sour taste in your mouth.','50'),(28,'saket nagar','avoid cold drinks and sour things','indore','India',NULL,'varun45@gmail.com','varun',NULL,'jain','1).Panadol(tab)- once in a day after lunch.\r\n2). ibuprofen(tab)- twice in a day after meal.','869532566','78965412','madhya pradesh','1). Chills and shivering.\r\n2). Headache.\r\n3). Muscle aches.','34');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
