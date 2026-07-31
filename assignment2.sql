-- Databricks notebook source


CREATE OR REPLACE TABLE well_production (
    WellID INT,
    WellName STRING,
    Field STRING,
    Region STRING,
    OperatorName STRING,
    WellType STRING,
    Status STRING,
    SpudDate DATE,
    DepthMeters INT,
    OilProduced_bbl INT,
    GasProduced_mcf INT,
    OperatingCost DECIMAL(10,2)
);

-- COMMAND ----------



INSERT INTO well_production VALUES
(1,'Falcon-1','Permian Basin','Texas','ExxonMobil','Oil','Active','2019-03-12',3200,15000,22000,85000.00),
(2,'Falcon-2','Permian Basin','Texas','ExxonMobil','Gas','Active','2020-06-25',2900,2000,95000,62000.00),
(3,'Raven-1','Eagle Ford','Texas','Chevron','Oil','Active','2018-11-02',3400,18000,21000,91000.00),
(4,'Raven-2','Eagle Ford','Texas','Chevron','Oil','Shut-in','2017-04-19',3100,0,0,12000.00),
(5,'Osprey-1','Bakken','North Dakota','ConocoPhillips','Oil','Active','2016-09-08',2800,18500,12000,78000.00),
(6,'Osprey-2','Bakken','North Dakota','ConocoPhillips','Gas','Active','2021-01-15',3050,1500,110000,55000.00),
(7,'Kestrel-1','Marcellus','Pennsylvania','EQT Corp','Gas','Active','2015-07-30',2600,500,150000,48000.00),
(8,'Kestrel-2','Marcellus','Pennsylvania','EQT Corp','Gas','Abandoned','2014-02-11',2500,0,0,9000.00),
(9,'Phoenix-1','Haynesville','Louisiana','BP','Gas','Active','2020-10-05',3600,1200,175000,72000.00),
(10,'Phoenix-2','Haynesville','Louisiana','BP','Oil','Active','2019-05-20',3300,14000,25000,83000.00),
(11,'Titan-1','Anadarko','Oklahoma','Shell','Oil','Active','2018-08-14',3000,16000,18000,80000.00),
(12,'Titan-2','Anadarko','Oklahoma','Shell','Gas','Shut-in','2017-11-22',2950,1000,85000,45000.00);


SELECT * FROM well_production;

-- COMMAND ----------



SELECT
    Field,
    SUM(OilProduced_bbl) AS Total_Oil,
    SUM(GasProduced_mcf) AS Total_Gas
FROM well_production
WHERE Status = 'Active'
GROUP BY Field;

-- COMMAND ----------



SELECT
    OperatorName,
    AVG(OperatingCost) AS Average_OperatingCost
FROM well_production
GROUP BY OperatorName
ORDER BY Average_OperatingCost DESC;

-- COMMAND ----------



SELECT
    Region,
    COUNT(*) AS Total_Wells
FROM well_production
GROUP BY Region
HAVING COUNT(*) > 2;

-- COMMAND ----------



SELECT
    Field,
    SUM(OilProduced_bbl) AS Total_Oil
FROM well_production
GROUP BY Field
ORDER BY Total_Oil DESC
LIMIT 3;

-- COMMAND ----------


SELECT
    WellType,
    MIN(DepthMeters) AS Minimum_Depth,
    MAX(DepthMeters) AS Maximum_Depth
FROM well_production
WHERE Status <> 'Abandoned'
GROUP BY WellType;

-- COMMAND ----------



-- COMMAND ----------

