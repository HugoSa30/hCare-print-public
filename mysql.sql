CREATE DATABASE  IF NOT EXISTS `hcareprint` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hcareprint`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: hcareprint
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aetitleconfig`
--

DROP TABLE IF EXISTS `aetitleconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aetitleconfig` (
  `Id` int NOT NULL,
  `CallingAetitle` varchar(255) DEFAULT NULL,
  `CalledAetitle` varchar(255) DEFAULT NULL,
  `Company` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `AetitleConfig_Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aetitleconfig`
--

LOCK TABLES `aetitleconfig` WRITE;
/*!40000 ALTER TABLE `aetitleconfig` DISABLE KEYS */;
INSERT INTO `aetitleconfig` VALUES (0,'Default','Default',NULL,NULL,NULL),(38,'DCMPRINT_SCU','DCMPRINT_SCP','','',''),(39,'erer','eeeeee1','','',''),(40,'12121','1212','','',''),(41,'1212','12','','',''),(42,'dsfs','sdds','','','');
/*!40000 ALTER TABLE `aetitleconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aetitletranslations`
--

DROP TABLE IF EXISTS `aetitletranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aetitletranslations` (
  `SourceAetitle` varchar(255) NOT NULL,
  `NewAetitle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aetitletranslations`
--

LOCK TABLES `aetitletranslations` WRITE;
/*!40000 ALTER TABLE `aetitletranslations` DISABLE KEYS */;
INSERT INTO `aetitletranslations` VALUES ('adad','adad');
/*!40000 ALTER TABLE `aetitletranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorizedaetitles`
--

DROP TABLE IF EXISTS `authorizedaetitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorizedaetitles` (
  `Aetitle` varchar(255) NOT NULL,
  PRIMARY KEY (`Aetitle`),
  UNIQUE KEY `AuthorizedAetitles_Aetitle` (`Aetitle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorizedaetitles`
--

LOCK TABLES `authorizedaetitles` WRITE;
/*!40000 ALTER TABLE `authorizedaetitles` DISABLE KEYS */;
/*!40000 ALTER TABLE `authorizedaetitles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfileannotations`
--

DROP TABLE IF EXISTS `cfgfileannotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfileannotations` (
  `id` int NOT NULL,
  `Lines` int DEFAULT '2',
  `CharacterSet` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfileannotations`
--

LOCK TABLES `cfgfileannotations` WRITE;
/*!40000 ALTER TABLE `cfgfileannotations` DISABLE KEYS */;
INSERT INTO `cfgfileannotations` VALUES (1,2,'ISO_IR 100','Sample Annotation Layout'),(2,2,'ISO_IR 100','Sample Annotation Layout');
/*!40000 ALTER TABLE `cfgfileannotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfileconfiginfo`
--

DROP TABLE IF EXISTS `cfgfileconfiginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfileconfiginfo` (
  `id` int NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '(NULL)',
  `Description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Setup` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Trailer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfileconfiginfo`
--

LOCK TABLES `cfgfileconfiginfo` WRITE;
/*!40000 ALTER TABLE `cfgfileconfiginfo` DISABLE KEYS */;
INSERT INTO `cfgfileconfiginfo` VALUES (1,'SPOT_DIAGLINES','Use custom halftone procedure (diagonal lines)','currentscreen /DiagLineSpotSave exch def /DiagLineAngleSave exch def\n  45 {exch pop abs 1 exch sub} bind setscreen','currentscreen pop pop DiagLineAngleSave DiagLineSpotSave setscreen'),(2,'SPOT_HORZLINES','Use custom halftone procedure (diagonal lines)','currentscreen /DiagLineSpotSave exch def /DiagLineAngleSave exch def\n  45 {exch pop abs 1 exch sub} bind setscreen','currentscreen pop pop DiagLineAngleSave DiagLineSpotSave setscreen'),(3,'SPOT_DOTS','Use custom halftone procedure (diagonal lines)','currentscreen /DiagLineSpotSave exch def /DiagLineAngleSave exch def\n  45 {exch pop abs 1 exch sub} bind setscreen','currentscreen pop pop DiagLineAngleSave DiagLineSpotSave setscreen');
/*!40000 ALTER TABLE `cfgfileconfiginfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfiledestination`
--

DROP TABLE IF EXISTS `cfgfiledestination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfiledestination` (
  `id` int NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '(NULL)',
  `Description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Setup` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Trailer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfiledestination`
--

LOCK TABLES `cfgfiledestination` WRITE;
/*!40000 ALTER TABLE `cfgfiledestination` DISABLE KEYS */;
INSERT INTO `cfgfiledestination` VALUES (1,'MAGAZINE','Print Destination Magazine','% PS code to select magazine as destination would follow here...','% PS code to clean up magazine as destination would follow here...'),(2,'PROCESSOR','Print Destination Magazine','% PS code to select magazine as destination would follow here...','% PS code to clean up magazine as destination would follow here...');
/*!40000 ALTER TABLE `cfgfiledestination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfiledimse`
--

DROP TABLE IF EXISTS `cfgfiledimse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfiledimse` (
  `id` int NOT NULL,
  `BasicGrayscaleMetaSOPClass` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `BasicColorMetaSOPClass` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Annotation` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PrintJob` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PresentationLUT` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Printer` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PostScriptDirectory` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `StoredPrintDirectory` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ServerSidePLUTDirectory` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LenientMode` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IgnoreMagnificationType` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IgnoreConfigurationInformation` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AcceptColorByPixel` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OverrideBorderDensity` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OverrideEmptyImageDensity` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IgnoreMinMaxDensity` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ImplicitOnly` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MaxPDU` int DEFAULT '32768',
  `SuppressEventReports` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AlwaysForkPrintJob` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CreateStoredPrintFiles` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `RenameStoredPrintFiles` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `StoreImagesAsSecondaryCapture` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `KeepImagesInFile` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SuppressPostScriptGeneration` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `LimitParallelAssociations` int DEFAULT '0',
  `RejectSurplusAssociations` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AcceptNonMatchingPresentationLUT` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SuppressNSetResponseDataset` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SuppressNCreateReponseDataset` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IgnoreMissingPlanarConfiguration` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IgnoreEmptyAttributes` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IgnoreInvalidFilmSessionInstance` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SynchronizeSpooling` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OverrideMonochromeOne` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SuppressMemoryAllocationWarning` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SuppressEmptyPageWarning` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OverrideMinDensity` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OverrideMaxDensity` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  KEY `FKCfgFileDim257660` (`id`),
  CONSTRAINT `FKCfgFileDim257660` FOREIGN KEY (`id`) REFERENCES `cfgfiletcpip` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfiledimse`
--

LOCK TABLES `cfgfiledimse` WRITE;
/*!40000 ALTER TABLE `cfgfiledimse` DISABLE KEYS */;
INSERT INTO `cfgfiledimse` VALUES (1,'YES','YES','YES','YES','YES','YES','C:/ProgramData/hCarePrint//','C:/ProgramData/hCarePrint//','C:/ProgramData/hCarePrint//','YES','YES','NO','YES',NULL,NULL,'NO','NO',32768,'NO','NO','YES','NO','YES','YES','NO',20,'NO','NO','NO','NO','NO','NO','NO','YES','NO','NO','NO',NULL,NULL);
/*!40000 ALTER TABLE `cfgfiledimse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfilefonts`
--

DROP TABLE IF EXISTS `cfgfilefonts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfilefonts` (
  `id` int NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '(NULL)',
  `Description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DocumentFonts` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Setup` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Trailer` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SelectFont` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DocumentFontsIR` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '(NULL)',
  `SetupIR` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TrailerIR` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfilefonts`
--

LOCK TABLES `cfgfilefonts` WRITE;
/*!40000 ALTER TABLE `cfgfilefonts` DISABLE KEYS */;
/*!40000 ALTER TABLE `cfgfilefonts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfilelayouts`
--

DROP TABLE IF EXISTS `cfgfilelayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfilelayouts` (
  `id` int NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '(NULL)',
  `Description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ImageDistance` int DEFAULT '15',
  `TrimWidth` int DEFAULT '5',
  `TrimGray` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IncludeFile` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ForceGray` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ImageType` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Orientation` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PageSize` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Trim` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `BorderDensity` int DEFAULT '40',
  `EmptyImageDensity` int DEFAULT '80',
  `ConfigurationInformation` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Annotation` int DEFAULT '1',
  `MinDensity` int DEFAULT '20',
  `MaxDensity` int DEFAULT '300',
  `Magnification` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Smoothing` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfilelayouts`
--

LOCK TABLES `cfgfilelayouts` WRITE;
/*!40000 ALTER TABLE `cfgfilelayouts` DISABLE KEYS */;
INSERT INTO `cfgfilelayouts` VALUES (1,'STANDARD','DICOM standard format',0,0,'0.0',NULL,'YES',NULL,'PORTRAIT','A4','NO',0,1000,NULL,1,20,300,'BILINEAR','SMOOTHING'),(4,'SUPERSLIDE','DICOM standard format',15,5,'0.5','offis2.eps','NO','RGC','PORTRAIT','24CMX24CM','YES',40,80,NULL,1,20,300,'BILINEAR','SMOOTHING'),(5,'CUSTOM-1','DICOM standard format',15,5,'0.5','offis2.eps','NO','RGC','PORTRAIT','24CMX24CM','YES',40,80,NULL,1,20,300,'BILINEAR','SMOOTHING'),(2,'COL','DICOM standard format',0,0,'0.0',NULL,'YES',NULL,'PORTRAIT','A4','NO',0,1000,NULL,1,20,300,'BILINEAR','SMOOTHING'),(3,'ROW','DICOM standard format',0,0,'0.0',NULL,'YES',NULL,'PORTRAIT','A4','NO',0,1000,NULL,1,20,300,'BILINEAR','SMOOTHING');
/*!40000 ALTER TABLE `cfgfilelayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfileline`
--

DROP TABLE IF EXISTS `cfgfileline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfileline` (
  `id` int NOT NULL,
  `StartX` int DEFAULT '36',
  `StartY` int DEFAULT '130',
  `Font` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Size` int DEFAULT '20',
  `Gray` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfileline`
--

LOCK TABLES `cfgfileline` WRITE;
/*!40000 ALTER TABLE `cfgfileline` DISABLE KEYS */;
INSERT INTO `cfgfileline` VALUES (1,36,130,'Helvetica',20,0),(2,36,130,'Helvetica',14,0);
/*!40000 ALTER TABLE `cfgfileline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfilemediumtype`
--

DROP TABLE IF EXISTS `cfgfilemediumtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfilemediumtype` (
  `id` int NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '(NULL)',
  `Description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Setup` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Trailer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfilemediumtype`
--

LOCK TABLES `cfgfilemediumtype` WRITE;
/*!40000 ALTER TABLE `cfgfilemediumtype` DISABLE KEYS */;
INSERT INTO `cfgfilemediumtype` VALUES (1,'PAPER','Select paper as medium type','% PS code to select magazine as destination would follow here...','% PS code to clean up magazine as destination would follow here...'),(2,'PAPER1','Select paper as medium type','% PS code to select magazine as destination would follow here...','% PS code to clean up magazine as destination would follow here...');
/*!40000 ALTER TABLE `cfgfilemediumtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfilepages`
--

DROP TABLE IF EXISTS `cfgfilepages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfilepages` (
  `id` int NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '(NULL)',
  `Description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `SizeX` int DEFAULT '595',
  `SizeY` int DEFAULT '842',
  `SkipX` int DEFAULT '20',
  `SkipY` int DEFAULT '20',
  `OffsetX` int DEFAULT '0',
  `OffsetY` int DEFAULT '0',
  `BoundingBoxX` int DEFAULT '595',
  `BoundingBoxY` int DEFAULT '842',
  `IncludeFile` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Setup` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Trailer` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfilepages`
--

LOCK TABLES `cfgfilepages` WRITE;
/*!40000 ALTER TABLE `cfgfilepages` DISABLE KEYS */;
INSERT INTO `cfgfilepages` VALUES (1,'A4','Page size A4',595,842,15,70,0,0,595,842,NULL,NULL,NULL),(2,'A4LOGO','Page size A4 with EPS logo printed on page',595,777,20,20,0,65,595,842,'offis2.eps',NULL,NULL),(3,'8INX10IN','8x10 inch printed on A4',576,720,20,20,10,61,595,842,NULL,NULL,NULL),(4,'10INX12IN','10x12 inch',720,864,20,20,0,0,NULL,NULL,NULL,NULL,NULL),(5,'10INX14IN','10x14 inch',720,1008,20,20,0,0,NULL,NULL,NULL,NULL,NULL),(6,'11INX14IN','11x14 inch',792,1008,20,20,0,0,NULL,NULL,NULL,NULL,NULL),(7,'14INX14IN','14x14 inch',1008,1008,20,20,0,0,NULL,NULL,NULL,NULL,NULL),(8,'14INX17IN','14x17 inch',1008,1224,20,20,0,0,NULL,NULL,NULL,NULL,NULL),(9,'24CMX24CM','24x24 cm',680,680,20,60,0,0,680,680,NULL,NULL,NULL),(10,'24CMX30CM','24x30 cm',680,850,20,20,0,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cfgfilepages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfileserverlut`
--

DROP TABLE IF EXISTS `cfgfileserverlut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfileserverlut` (
  `id` int NOT NULL,
  `AETitle` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PresentationLUTFile` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfileserverlut`
--

LOCK TABLES `cfgfileserverlut` WRITE;
/*!40000 ALTER TABLE `cfgfileserverlut` DISABLE KEYS */;
INSERT INTO `cfgfileserverlut` VALUES (1,'PLUT_TEST_SCU','gamma.lut'),(2,'121','gamma.lut');
/*!40000 ALTER TABLE `cfgfileserverlut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfilesession`
--

DROP TABLE IF EXISTS `cfgfilesession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfilesession` (
  `id` int NOT NULL,
  `Copies` int DEFAULT '1',
  `Priority` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MediumType` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Destination` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Label` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Illumination` int DEFAULT '150',
  `ReflectedAmbientLight` int DEFAULT '0',
  `UseGSDF` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Characteristics` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  KEY `FKCfgFileSes416933` (`id`),
  CONSTRAINT `FKCfgFileSes416933` FOREIGN KEY (`id`) REFERENCES `cfgfiletcpip` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfilesession`
--

LOCK TABLES `cfgfilesession` WRITE;
/*!40000 ALTER TABLE `cfgfilesession` DISABLE KEYS */;
INSERT INTO `cfgfilesession` VALUES (1,1,'MED','PAPER','MAGAZINE','Identisoft Teste #',150,0,'NO','./printer.dat');
/*!40000 ALTER TABLE `cfgfilesession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfgfiletcpip`
--

DROP TABLE IF EXISTS `cfgfiletcpip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfgfiletcpip` (
  `id` int NOT NULL,
  `Port` int NOT NULL DEFAULT '3100',
  `ServerAETitle` varchar(255) NOT NULL DEFAULT 'DCMPRINT_SCP',
  `CheckAETitles` varchar(255) NOT NULL DEFAULT 'YES',
  `PrinterName` varchar(255) NOT NULL DEFAULT 'Identisoft Printer',
  `Manufacturer` varchar(255) NOT NULL DEFAULT 'Identisoft',
  `ModelName` varchar(255) NOT NULL DEFAULT '001',
  `SerialNumber` varchar(255) NOT NULL DEFAULT '00000001',
  `SoftwareVersions` varchar(255) NOT NULL DEFAULT '0.0.2',
  `DateOfLastCalibration` int NOT NULL DEFAULT '20210415',
  `TimeOfLastCalibration` int NOT NULL DEFAULT '1200',
  `SupportsColorImage` varchar(255) NOT NULL DEFAULT 'YES',
  `UseCMYK` varchar(255) NOT NULL DEFAULT 'YES',
  `PrintMonochromeImagesAsColor` varchar(255) NOT NULL DEFAULT 'NO',
  `EnableASCII85` varchar(255) NOT NULL DEFAULT 'NO',
  `EnableInterpolation` varchar(255) NOT NULL DEFAULT 'NO',
  `EnableRLE` varchar(255) NOT NULL DEFAULT 'NO',
  `ScreenFrequency` int NOT NULL DEFAULT '120',
  `DownscalingPolicy` varchar(255) NOT NULL DEFAULT 'OFF',
  `DownscalingPolicyFactor` varchar(255) NOT NULL DEFAULT '1.0',
  `DownscalingInterpolation` varchar(255) NOT NULL DEFAULT 'CT',
  `Command` varchar(255) DEFAULT 'copy f lpt1 /b',
  PRIMARY KEY (`id`),
  UNIQUE KEY `CfgFileTcpip_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfgfiletcpip`
--

LOCK TABLES `cfgfiletcpip` WRITE;
/*!40000 ALTER TABLE `cfgfiletcpip` DISABLE KEYS */;
INSERT INTO `cfgfiletcpip` VALUES (1,3100,'DCMPRINT_SCP','NO','Identisoft Printer','Identisoft','DCMPRINT','00000001','0.0.2',20210415,1200,'YES','YES','NO','NO','NO','NO',240,'OFF','1.0','CT',NULL);
/*!40000 ALTER TABLE `cfgfiletcpip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultprinterrouting`
--

DROP TABLE IF EXISTS `defaultprinterrouting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defaultprinterrouting` (
  `Printer` varchar(255) DEFAULT NULL,
  `NoDefaultPrinter` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultprinterrouting`
--

LOCK TABLES `defaultprinterrouting` WRITE;
/*!40000 ALTER TABLE `defaultprinterrouting` DISABLE KEYS */;
INSERT INTO `defaultprinterrouting` VALUES ('teste',0);
/*!40000 ALTER TABLE `defaultprinterrouting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmpapersizes`
--

DROP TABLE IF EXISTS `filmpapersizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmpapersizes` (
  `AetitleId` int NOT NULL,
  `FilmSize` varchar(255) NOT NULL DEFAULT 'A4',
  `PaperSize` varchar(255) NOT NULL DEFAULT 'A4',
  `DefFilmSize` varchar(255) NOT NULL DEFAULT 'A4',
  `StorePageOrientation` int NOT NULL DEFAULT '0',
  `StorePaperSize` varchar(255) NOT NULL DEFAULT 'A4',
  `StoreLayout` varchar(255) NOT NULL DEFAULT '1x1',
  `StoreStandard` varchar(255) NOT NULL DEFAULT 'STANDARD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmpapersizes`
--

LOCK TABLES `filmpapersizes` WRITE;
/*!40000 ALTER TABLE `filmpapersizes` DISABLE KEYS */;
INSERT INTO `filmpapersizes` VALUES (0,'A4','A4','A4',0,'A4','1x1','STANDARD'),(38,'A4;A5','A4;A5','A4',0,'A4','1x1x1','ROW'),(39,'A4','A4','A4',0,'A4','1x1','STANDARD'),(40,'A4','A4','A4',0,'A4','1x1','STANDARD'),(41,'A4','A4','A4',0,'A4','1x1','STANDARD'),(42,'A4','A4','A4',0,'A4','1x1','STANDARD');
/*!40000 ALTER TABLE `filmpapersizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imageorientation`
--

DROP TABLE IF EXISTS `imageorientation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imageorientation` (
  `AetitleId` int NOT NULL,
  `CorreImageOrientation` int NOT NULL DEFAULT '0',
  `RotateImages` int NOT NULL DEFAULT '0',
  `Portrait` int NOT NULL DEFAULT '0',
  UNIQUE KEY `UQ__ImageOri__54E6EB4C8714E52B` (`AetitleId`),
  CONSTRAINT `FKImageOrien472152` FOREIGN KEY (`AetitleId`) REFERENCES `aetitleconfig` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imageorientation`
--

LOCK TABLES `imageorientation` WRITE;
/*!40000 ALTER TABLE `imageorientation` DISABLE KEYS */;
INSERT INTO `imageorientation` VALUES (0,0,0,0),(38,0,0,0),(39,0,0,0),(40,0,0,0),(41,0,0,0),(42,0,0,0);
/*!40000 ALTER TABLE `imageorientation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagequality`
--

DROP TABLE IF EXISTS `imagequality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagequality` (
  `AetitleId` int NOT NULL,
  `Gamma` float(24,0) NOT NULL DEFAULT '1',
  `Brightness` int NOT NULL DEFAULT '50',
  `Contrast` int NOT NULL DEFAULT '50',
  `Sharpening` int NOT NULL DEFAULT '0',
  `Blur` int NOT NULL DEFAULT '0',
  `ImageGrayscale` int NOT NULL DEFAULT '0',
  `ReportsGrayscale` int NOT NULL DEFAULT '0',
  `ForceColor` int NOT NULL DEFAULT '0',
  UNIQUE KEY `UQ__ImageQua__54E6EB4CA97ED006` (`AetitleId`),
  CONSTRAINT `FKImageQuali634154` FOREIGN KEY (`AetitleId`) REFERENCES `aetitleconfig` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagequality`
--

LOCK TABLES `imagequality` WRITE;
/*!40000 ALTER TABLE `imagequality` DISABLE KEYS */;
INSERT INTO `imagequality` VALUES (0,1,50,50,0,0,0,0,0),(38,1,50,50,0,0,0,0,0),(39,1,50,50,0,0,0,0,0),(40,1,50,50,0,0,0,0,0),(41,1,50,50,0,0,0,0,0),(42,1,50,50,0,0,0,0,0);
/*!40000 ALTER TABLE `imagequality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutionsettings`
--

DROP TABLE IF EXISTS `institutionsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institutionsettings` (
  `Name` varchar(255) NOT NULL DEFAULT 'Identisoft',
  `AccessionNumberRegex` varchar(255) DEFAULT NULL,
  `patientIdRegex` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutionsettings`
--

LOCK TABLES `institutionsettings` WRITE;
/*!40000 ALTER TABLE `institutionsettings` DISABLE KEYS */;
INSERT INTO `institutionsettings` VALUES ('Identisoft','','');
/*!40000 ALTER TABLE `institutionsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `Id` int NOT NULL,
  `User` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Name` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `LogIn_Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'1841692202463212213613017825022311201752372614217924973','481191056010343111181161116232240159629195181239197228',NULL),(2,'53106254312119176768487772419414170230578440171','53106254312119176768487772419414170230578440171',NULL),(3,'$MYHASH$V1$10000$JTMsErrPiqCOkR1bbkHqKJCv32u6rzjc2/4wylmqC6GQtDcW','$MYHASH$V1$10000$8c8RO6goOVhOXFO3c3s3mEraIWpLvHzKHFtPNGqjMrcwmBdt',NULL);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logsstatistics`
--

DROP TABLE IF EXISTS `logsstatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logsstatistics` (
  `EventLogs` int NOT NULL DEFAULT '0',
  `LogFilesTime` int NOT NULL DEFAULT '10',
  `LogDirectory` varchar(255) NOT NULL DEFAULT './logs',
  `PrintingStatistics` varchar(255) NOT NULL DEFAULT './statistics'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logsstatistics`
--

LOCK TABLES `logsstatistics` WRITE;
/*!40000 ALTER TABLE `logsstatistics` DISABLE KEYS */;
INSERT INTO `logsstatistics` VALUES (0,10,'./logs','./statistics');
/*!40000 ALTER TABLE `logsstatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagesf`
--

DROP TABLE IF EXISTS `pagesf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagesf` (
  `AetitleId` int NOT NULL,
  `FooterL` varchar(255) NOT NULL DEFAULT '0',
  `FooterR` varchar(255) NOT NULL DEFAULT '0',
  `FooterLspace` int NOT NULL DEFAULT '36',
  `FooterRspace` int NOT NULL DEFAULT '322',
  `FooterUspace` int NOT NULL DEFAULT '36',
  `FooterFsize` int NOT NULL DEFAULT '20',
  UNIQUE KEY `UQ__PagesF__54E6EB4C58EE08A7` (`AetitleId`),
  CONSTRAINT `FKPagesF920209` FOREIGN KEY (`AetitleId`) REFERENCES `aetitleconfig` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagesf`
--

LOCK TABLES `pagesf` WRITE;
/*!40000 ALTER TABLE `pagesf` DISABLE KEYS */;
INSERT INTO `pagesf` VALUES (0,'0','0',16,16,20,20),(38,'testing','123',16,16,20,8),(39,'0','0',36,322,36,20),(40,'0','0',36,322,36,20),(41,'0','0',36,322,36,20),(42,'0','0',36,322,36,20);
/*!40000 ALTER TABLE `pagesf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagesh`
--

DROP TABLE IF EXISTS `pagesh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagesh` (
  `AetitleId` int NOT NULL,
  `HeaderL` varchar(255) NOT NULL DEFAULT '0',
  `HeaderR` varchar(255) NOT NULL DEFAULT '0',
  `HeaderLspace` int NOT NULL DEFAULT '36',
  `HeaderRspace` int NOT NULL DEFAULT '322',
  `HeaderUspace` int NOT NULL DEFAULT '794',
  `HeaderFsize` int NOT NULL DEFAULT '20',
  UNIQUE KEY `UQ__PagesH__54E6EB4CC009C26E` (`AetitleId`),
  CONSTRAINT `FKPagesH920211` FOREIGN KEY (`AetitleId`) REFERENCES `aetitleconfig` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagesh`
--

LOCK TABLES `pagesh` WRITE;
/*!40000 ALTER TABLE `pagesh` DISABLE KEYS */;
INSERT INTO `pagesh` VALUES (0,'0','0',16,16,20,20),(38,'IDENTISOFT','{date}',16,16,20,8),(39,'0','0',36,322,794,20),(40,'0','0',36,322,794,20),(41,'0','0',36,322,794,20),(42,'0','0',36,322,794,20);
/*!40000 ALTER TABLE `pagesh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paperdim`
--

DROP TABLE IF EXISTS `paperdim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paperdim` (
  `Name` varchar(255) NOT NULL,
  `Dim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paperdim`
--

LOCK TABLES `paperdim` WRITE;
/*!40000 ALTER TABLE `paperdim` DISABLE KEYS */;
INSERT INTO `paperdim` VALUES ('A3','(297x420)'),('A4','(210x297)'),('A5','(146x210)'),('Tabloid','(279x431)'),('USLetter','(216x279)');
/*!40000 ALTER TABLE `paperdim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printerrouting`
--

DROP TABLE IF EXISTS `printerrouting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `printerrouting` (
  `Id` int NOT NULL,
  `CalledAetitle` varchar(255) NOT NULL,
  `CallingAetitle` varchar(255) NOT NULL,
  `Printer` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `PrinterRouting_Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printerrouting`
--

LOCK TABLES `printerrouting` WRITE;
/*!40000 ALTER TABLE `printerrouting` DISABLE KEYS */;
/*!40000 ALTER TABLE `printerrouting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printjob`
--

DROP TABLE IF EXISTS `printjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `printjob` (
  `Id` int NOT NULL,
  `CallingAetitle` varchar(255) NOT NULL DEFAULT 'Default',
  `CalledAetitle` varchar(255) NOT NULL DEFAULT 'Default',
  `Name` varchar(500) NOT NULL DEFAULT 'Default',
  `Priority` int NOT NULL DEFAULT '0',
  `Status` int NOT NULL DEFAULT '0',
  `PatientName` varchar(255) NOT NULL DEFAULT 'Default',
  `PatientID` varchar(255) NOT NULL DEFAULT 'Default',
  `PatientBirthDate` varchar(255) NOT NULL DEFAULT 'Default',
  `PatientSex` varchar(255) NOT NULL DEFAULT 'Default',
  `PatientComments` varchar(255) NOT NULL DEFAULT 'Default',
  `StudyID` varchar(255) NOT NULL DEFAULT 'Default',
  `StudyDate` varchar(255) NOT NULL DEFAULT 'Default',
  `StudyTime` varchar(255) NOT NULL DEFAULT 'Default',
  `StudyModality` varchar(255) NOT NULL DEFAULT 'Default',
  `StudyDescription` varchar(255) NOT NULL DEFAULT 'Default',
  `StudyInstanceUID` varchar(255) NOT NULL DEFAULT 'Default',
  `BodyPartExamined` varchar(255) NOT NULL DEFAULT 'Defualt',
  `ReferringPhysicianName` varchar(255) NOT NULL DEFAULT 'Default',
  `ConsultingPhysicianName` varchar(255) NOT NULL DEFAULT 'Default',
  `PerformingPhysicianName` varchar(255) NOT NULL DEFAULT 'Default',
  `NameOfPhysiciansReadingStudy` varchar(255) NOT NULL DEFAULT 'Default',
  `AccessionNumber` varchar(255) NOT NULL DEFAULT 'Default',
  `SeriesDescription` varchar(255) NOT NULL DEFAULT 'Default',
  `PrinterUsed` varchar(255) DEFAULT NULL,
  `Copies` int NOT NULL DEFAULT '1',
  `CreationDateTime` varchar(255) NOT NULL DEFAULT '00h00|00/00/0000',
  `PrintDateTime` varchar(255) NOT NULL DEFAULT '00h00|00/00/0000',
  `HasReport` int NOT NULL DEFAULT '0',
  `NeedReport` int NOT NULL DEFAULT '0',
  `HasStore` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `PrintJob_Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printjob`
--

LOCK TABLES `printjob` WRITE;
/*!40000 ALTER TABLE `printjob` DISABLE KEYS */;
INSERT INTO `printjob` VALUES (1,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.25756.1637075255.354',1,0,'Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Defualt','Default','Default','Default','Default','Default','Default',NULL,1,'15h7m35|16/11/2021','00h00|00/00/0000',0,0,0),(2,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.25756.1637075435.369',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h10m35|16/11/2021','15h11m11|16/11/2021',0,0,1),(3,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.25756.1637075529.384',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h12m9|16/11/2021','15h12m32|16/11/2021',0,0,1),(4,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.25756.1637075705.399',1,0,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT',NULL,1,'15h15m5|16/11/2021','00h00|00/00/0000',0,0,1),(6,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.17444.1637076051.454',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h20m51|16/11/2021','15h21m5|16/11/2021',0,0,1),(7,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.17444.1637076224.477',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h23m44|16/11/2021','15h24m4|16/11/2021',0,0,1),(8,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.17444.1637076389.492',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h26m29|16/11/2021','15h26m42|16/11/2021',0,0,1),(9,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.17444.1637076512.505',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h28m32|16/11/2021','15h28m44|16/11/2021',0,0,1),(10,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.17444.1637076618.518',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h30m18|16/11/2021','15h30m31|16/11/2021',0,0,1),(11,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.17444.1637077362.536',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h42m42|16/11/2021','15h43m0|16/11/2021',0,0,1),(12,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.17444.1637077513.548',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h45m13|16/11/2021','15h45m45|16/11/2021',0,0,1),(13,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.17444.1637077551.560',1,0,'Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Defualt','Default','Default','Default','Default','Default','Default',NULL,1,'15h45m51|16/11/2021','00h00|00/00/0000',0,0,0),(14,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.17444.1637077615.580',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h46m55|16/11/2021','15h47m15|16/11/2021',0,0,1),(15,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.17444.1637077645.600',1,0,'Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Defualt','Default','Default','Default','Default','Default','Default',NULL,1,'15h47m25|16/11/2021','00h00|00/00/0000',0,0,0),(16,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.17444.1637077697.613',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h48m17|16/11/2021','15h48m31|16/11/2021',0,0,1),(17,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.21436.1637078066.643',1,0,'Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Defualt','Default','Default','Default','Default','Default','Default',NULL,1,'15h54m26|16/11/2021','00h00|00/00/0000',0,0,0),(18,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.23840.1637078105.441',1,0,'Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Defualt','Default','Default','Default','Default','Default','Default',NULL,1,'15h55m5|16/11/2021','00h00|00/00/0000',0,0,0),(19,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.25220.1637078206.877',1,0,'Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Default','Defualt','Default','Default','Default','Default','Default','Default',NULL,1,'15h56m46|16/11/2021','00h00|00/00/0000',0,0,0),(20,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.25220.1637078316.890',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'15h58m36|16/11/2021','15h58m49|16/11/2021',0,0,1),(21,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.25220.1637078524.902',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'16h2m4|16/11/2021','16h2m25|16/11/2021',0,0,1),(22,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.25220.1637078530.914',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'16h2m10|16/11/2021','16h2m24|16/11/2021',0,0,1),(23,'DCMPRINT_SCU','DCMPRINT_SCP','1.2.276.0.7230010.3.1.4.3104307640.25220.1637078724.927',1,2,'MARIA DE LURDES RIBEIRO DA SILVA','167129','19531007','F','Default','20210728140000','20210728','135408','DX','Extrem.inferiores1','2.25.330180067383164864657474403494494719928','KNEE','','Default','','Default','A000018731','Joelho LAT','teste',1,'16h5m24|16/11/2021','16h5m36|16/11/2021',0,0,1);
/*!40000 ALTER TABLE `printjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printscaling`
--

DROP TABLE IF EXISTS `printscaling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `printscaling` (
  `AetitleId` int NOT NULL,
  `PrintMagnification` int NOT NULL DEFAULT '0',
  `ImageSize` int NOT NULL DEFAULT '0',
  UNIQUE KEY `UQ__PrintSca__54E6EB4C152674E0` (`AetitleId`),
  CONSTRAINT `FKPrintScali38082` FOREIGN KEY (`AetitleId`) REFERENCES `aetitleconfig` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printscaling`
--

LOCK TABLES `printscaling` WRITE;
/*!40000 ALTER TABLE `printscaling` DISABLE KEYS */;
INSERT INTO `printscaling` VALUES (0,0,0),(38,0,0),(39,0,0),(40,0,0),(41,0,0),(42,0,0);
/*!40000 ALTER TABLE `printscaling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceparameters`
--

DROP TABLE IF EXISTS `serviceparameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceparameters` (
  `AetitleId` int NOT NULL,
  `BGrayscale` int NOT NULL DEFAULT '1',
  `BColor` int NOT NULL DEFAULT '1',
  `PLUT` int NOT NULL DEFAULT '1',
  `DStore` int NOT NULL DEFAULT '1',
  `StorePrint` int NOT NULL DEFAULT '0',
  UNIQUE KEY `UQ__ServiceP__54E6EB4CC44DCC8A` (`AetitleId`),
  CONSTRAINT `FKServicePar369091` FOREIGN KEY (`AetitleId`) REFERENCES `aetitleconfig` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceparameters`
--

LOCK TABLES `serviceparameters` WRITE;
/*!40000 ALTER TABLE `serviceparameters` DISABLE KEYS */;
INSERT INTO `serviceparameters` VALUES (0,1,1,1,1,0),(38,1,1,1,1,0),(39,1,1,1,1,0),(40,1,1,1,1,0),(41,1,1,1,1,0),(42,1,1,1,1,0);
/*!40000 ALTER TABLE `serviceparameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `Port` int NOT NULL DEFAULT '3101',
  `AETitle` varchar(255) NOT NULL DEFAULT 'HCARE_PRINT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (3101,'HCARE_PRINT');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store2print`
--

DROP TABLE IF EXISTS `store2print`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store2print` (
  `Id` int NOT NULL,
  `CallingAetitle` varchar(255) NOT NULL DEFAULT 'Default',
  `CalledAetitle` varchar(255) NOT NULL DEFAULT 'Default',
  `FileCount` int NOT NULL DEFAULT '0',
  `Config` varchar(500) NOT NULL DEFAULT '0',
  `CreationDateTime` varchar(255) NOT NULL DEFAULT '00h00m00|00/00/0000',
  `ModifyDateTime` varchar(255) NOT NULL DEFAULT '00h00m00|00/00/0000',
  `IsSent` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Store2Print_Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store2print`
--

LOCK TABLES `store2print` WRITE;
/*!40000 ALTER TABLE `store2print` DISABLE KEYS */;
INSERT INTO `store2print` VALUES (0,'DCMPRINT_SCU','DCMPRINT_SCP',1,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt38.cfg','15h5m56|16/11/2021','15h5m56|16/11/2021',1),(1,'DCMPRINT_SCU','DCMPRINT_SCP',1,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt38.cfg','15h10m26|16/11/2021','15h10m26|16/11/2021',1),(2,'DCMPRINT_SCU','DCMPRINT_SCP',1,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt38.cfg','15h13m44|16/11/2021','15h13m44|16/11/2021',1),(3,'DCMPRINT_SCU','DCMPRINT_SCP',1,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt38.cfg','15h19m48|16/11/2021','15h19m48|16/11/2021',1),(4,'DCMPRINT_SCU','DCMPRINT_SCP',6,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt38.cfg','15h21m53|16/11/2021','15h22m40|16/11/2021',1),(5,'DCMPRINT_SCU','DCMPRINT_SCP1',4,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt0.cfg','15h22m54|16/11/2021','15h23m11|16/11/2021',1),(6,'DCMPRINT_SCU','DCMPRINT_SCP',1,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt38.cfg','15h25m24|16/11/2021','15h25m24|16/11/2021',1),(7,'DCMPRINT_SCU','DCMPRINT_SCP1',1,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt0.cfg','15h25m30|16/11/2021','15h25m30|16/11/2021',1),(8,'DCMPRINT_SCU','DCMPRINT_SCP',2,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt38.cfg','15h27m27|16/11/2021','15h27m28|16/11/2021',1),(9,'DCMPRINT_SCU','DCMPRINT_SCP',2,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt38.cfg','15h29m15|16/11/2021','15h29m16|16/11/2021',1),(10,'DCMPRINT_SCU','DCMPRINT_SCP1',2,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt0.cfg','15h29m18|16/11/2021','15h29m19|16/11/2021',1),(11,'DCMPRINT_SCU','DCMPRINT_SCP',1,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt38.cfg','15h47m14|16/11/2021','15h47m14|16/11/2021',1),(12,'DCMPRINT_SCU','DCMPRINT_SCP',3,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt38.cfg','15h57m20|16/11/2021','15h57m31|16/11/2021',1),(13,'DCMPRINT_SCU','DCMPRINT_SCP',2,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt38.cfg','16h4m6|16/11/2021','16h4m22|16/11/2021',1),(14,'DCMPRINT_SCU','DCMPRINT_SCP1',2,'C:\\ProgramData\\hCarePrint\\temp\\tcpprt0.cfg','16h4m8|16/11/2021','16h4m26|16/11/2021',1);
/*!40000 ALTER TABLE `store2print` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storedata`
--

DROP TABLE IF EXISTS `storedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storedata` (
  `AetitleId` int NOT NULL,
  `WaitForStore` int NOT NULL DEFAULT '0',
  `WaitTimeout` int NOT NULL DEFAULT '30',
  `Front` varchar(255) DEFAULT NULL,
  `Back` varchar(255) DEFAULT NULL,
  `White` varchar(255) DEFAULT NULL,
  `Report` varchar(255) DEFAULT NULL,
  `IsBooklet` int NOT NULL DEFAULT '0',
  `NeedReport` int NOT NULL DEFAULT '0',
  `ReportLocation` int NOT NULL DEFAULT '0',
  KEY `FKStoreData679659` (`AetitleId`),
  CONSTRAINT `FKStoreData679659` FOREIGN KEY (`AetitleId`) REFERENCES `aetitleconfig` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storedata`
--

LOCK TABLES `storedata` WRITE;
/*!40000 ALTER TABLE `storedata` DISABLE KEYS */;
INSERT INTO `storedata` VALUES (38,1,30,NULL,NULL,NULL,NULL,0,0,0),(0,0,30,NULL,NULL,NULL,NULL,0,0,0),(39,0,30,NULL,NULL,NULL,NULL,0,0,0),(41,0,30,NULL,NULL,NULL,NULL,0,0,0),(42,0,30,NULL,NULL,NULL,NULL,0,0,0),(40,0,30,NULL,NULL,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `storedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeouts`
--

DROP TABLE IF EXISTS `timeouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeouts` (
  `DBCleaningOperationsCheck` int NOT NULL DEFAULT '120',
  `RemoveJobs` int NOT NULL DEFAULT '30',
  `RemoveJobsWaitingReport` int NOT NULL DEFAULT '45',
  `KeepStudies` int NOT NULL DEFAULT '3',
  `TimeLimitPrint` int NOT NULL DEFAULT '90',
  `ServiceRestart1` int DEFAULT NULL,
  `ServiceRestart2` int DEFAULT NULL,
  `ServiceRestart3` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeouts`
--

LOCK TABLES `timeouts` WRITE;
/*!40000 ALTER TABLE `timeouts` DISABLE KEYS */;
INSERT INTO `timeouts` VALUES (120,30,45,3,90,0,0,0);
/*!40000 ALTER TABLE `timeouts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-17 16:24:49
