-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ProyectoAnalisisDeDatos2023
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ProyectoAnalisisDeDatos2023
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ProyectoAnalisisDeDatos2023` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `ProyectoAnalisisDeDatos2023` ;

-- -----------------------------------------------------
-- Table `ProyectoAnalisisDeDatos2023`.`DIM_Agencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoAnalisisDeDatos2023`.`DIM_Agencia` (
  `ID_AGENCIA` BIGINT NULL DEFAULT NULL,
  `NOMBRE` TEXT NULL DEFAULT NULL,
  `DEPARTAMENTO` TEXT NULL DEFAULT NULL,
  `MUNICIPIO` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ProyectoAnalisisDeDatos2023`.`DIM_Fecha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoAnalisisDeDatos2023`.`DIM_Fecha` (
  `ID_FECCOBRO` TEXT NULL DEFAULT NULL,
  `Day` TEXT NULL DEFAULT NULL,
  `Month` TEXT NULL DEFAULT NULL,
  `Year` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ProyectoAnalisisDeDatos2023`.`DIM_Hora`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoAnalisisDeDatos2023`.`DIM_Hora` (
  `ID_HORCOBRO` TEXT NULL DEFAULT NULL,
  `Hora` TEXT NULL DEFAULT NULL,
  `Min` TEXT NULL DEFAULT NULL,
  `Sec` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ProyectoAnalisisDeDatos2023`.`DIM_Operador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoAnalisisDeDatos2023`.`DIM_Operador` (
  `ID_OPERADOR` BIGINT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ProyectoAnalisisDeDatos2023`.`DIM_Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoAnalisisDeDatos2023`.`DIM_Producto` (
  `ProductID` BIGINT NULL DEFAULT NULL,
  `PRODUCTO` TEXT NULL DEFAULT NULL,
  `ID_PRODUCTO` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ProyectoAnalisisDeDatos2023`.`DIM_RECIBO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoAnalisisDeDatos2023`.`DIM_RECIBO` (
  `ID_RECIBO` BIGINT NULL DEFAULT NULL,
  `TIPO` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ProyectoAnalisisDeDatos2023`.`OPERACIONES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoAnalisisDeDatos2023`.`OPERACIONES` (
  `ID_Operacion` BIGINT NULL DEFAULT NULL,
  `VALOREFECTIVO` DOUBLE NULL DEFAULT NULL,
  `VALORCHEQUE` DOUBLE NULL DEFAULT NULL,
  `VALOROTROSMEDIOS` DOUBLE NULL DEFAULT NULL,
  `VALORTOTAL` DOUBLE NULL DEFAULT NULL,
  `ID_FECCOBRO` TEXT NULL DEFAULT NULL,
  `ID_HORCOBRO` TEXT NULL DEFAULT NULL,
  `ID_AGENCIA` BIGINT NULL DEFAULT NULL,
  `ProductID` BIGINT NULL DEFAULT NULL,
  `ID_OPERADOR` BIGINT NULL DEFAULT NULL,
  `ID_RECIBO` BIGINT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ProyectoAnalisisDeDatos2023`.`rawData`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProyectoAnalisisDeDatos2023`.`rawData` (
  `OPERACION` BIGINT NULL DEFAULT NULL,
  `RECIBO` BIGINT NULL DEFAULT NULL,
  `FECCOBRO` TEXT NULL DEFAULT NULL,
  `HORCOBRO` TEXT NULL DEFAULT NULL,
  `AGENCIA` BIGINT NULL DEFAULT NULL,
  `NOMBRE` TEXT NULL DEFAULT NULL,
  `TIPO` TEXT NULL DEFAULT NULL,
  `DEPARTAMENTO` TEXT NULL DEFAULT NULL,
  `MUNICIPIO` TEXT NULL DEFAULT NULL,
  `PRODUCTO` TEXT NULL DEFAULT NULL,
  `OPERADOR` BIGINT NULL DEFAULT NULL,
  `VALOREFECTIVO` DOUBLE NULL DEFAULT NULL,
  `VALORCHEQUE` DOUBLE NULL DEFAULT NULL,
  `VALOROTROSMEDIOS` DOUBLE NULL DEFAULT NULL,
  `VALORTOTAL` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
