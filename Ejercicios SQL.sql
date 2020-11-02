/*EJERCICIOS DE BASE DE DATOS*/
/*UTILIZANDO LA BASE DE DATOS world ESCRIBIR LAS SIGUIENTES CONSULTAS*/


/*
  
  1 - mostrar todos los lenguajes de cada pais de sudamerica

	SELECT country.Name, countrylanguage.Language, country.Continent
	FROM country
	INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode  AND country.Continent = 'South America'; 
*/

/*

  2 - Mostrar las primeras 20 ciudades de argentina, uruguay y chile,
      con su nombre, su districto y su población, ordenadas por nombre descendente, cuyo nombre empiece con M o P
      
	SELECT Name, District, Population, CountryCode
	FROM `city` 
	WHERE  (CountryCode ='ARG' OR CountryCode ='URY' OR CountryCode ='CHL')  
	AND (Name LIKE 'M%' OR Name LIKE 'P%')  
	ORDER BY Name DESC
	LIMIT 0,20;      
      
                
      
*/

/*



  3 - ¿Cuantos lenguajes existen investigar Count
	
	SELECT COUNT(DISTINCT countrylanguage.Languaje) AS cantLenguage
	FROM countrylanguaje;

  3 bis - ¿Cuales son los 10 lenguajes hablados en mas paises 
  
  	SELECT Language, COUNT(Language)
	FROM countrylanguage
	GROUP BY Language
	ORDER BY COUNT(Language) DESC 
	LIMIT 0,10;
  
  
  
*/

/*

  
  4 - ¿Cuanta gente vive en Europa? investigar SUM

	SELECT SUM(Population) AS 'cantPersonasEuropa' 
	FROM `country` 
	WHERE Continent = 'Europe';



*/
 
/*

  5 - ¿Que continente tiene mas habitantes?
	
	SELECT Continent, SUM(Population) FROM `country` WHERE Continent = 'North America' 
	UNION 
	SELECT Continent, SUM(Population) FROM `country` WHERE Continent = 'South America' 
	UNION 
	SELECT Continent, SUM(Population) FROM `country` WHERE Continent = 'Asia' 
	UNION 
	SELECT Continent, SUM(Population) FROM `country` WHERE Continent = 'Africa' 
	UNION
	SELECT Continent, SUM(Population) FROM `country` WHERE Continent = 'Europe' 
	UNION 
	SELECT Continent, SUM(Population) FROM `country` WHERE Continent = 'Oceania' 
	UNION
	SELECT Continent, SUM(Population) FROM `country` WHERE Continent = 'Antarctica' 
	ORDER BY `SUM(Population)` DESC 
	  
  
*/
/*

  6 - ¿Que idioma oficial se habla en Guadalajara?
  
  	SELECT city.Name, countrylanguage.Language
	FROM city
	INNER JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode  
	AND countrylanguage.IsOfficial = 'T' 
	AND city.Name = 'Guadalajara'; 
  
  
*/



/*

  7 - Agregar el lenguage 'Cordobes' para Argentina
  	
  	INSERT INTO CountryLanguage (CountryCode, Language, IsOfficial)
  	VALUES ('ARG','Cordobes','F'); 
  
*/


/*


  8 - Cambiar el nombre del pais Falkland Islands por Islas Malvinas(ARG) 
  
	UPDATE country
	SET Name = 'Islas Malvinas(ARG)'
	WHERE Code = 'FLK';
	
*/

/*

  
  9 - eliminar todas las ciudades con menos de 500 habitantes y sin districto

	DELETE FROM city WHERE Population < 500 AND District = '–';


*/
