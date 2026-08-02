# 🗄️ MySQL Database & Queries - Curso em Vídeo (Gustavo Guanabara)

This repository contains the modeling, creation, and resolution of practical query exercises in MySQL, utilizing the `cadastro` database proposed by professor Gustavo Guanabara of the renowned Database course from the Curso em Vídeo channel.

---

## Database Structure

The database consists of 3 main tables with Foreign Key (`FOREIGN KEY`) relationships:

* **`gafanhotos`**: Table of users/students containing profile data (Name, Occupation, Date of Birth, Gender, Weight, Height, Nationality, and Preferred Course).
* **`cursos`**: Course catalog containing workload hours, total number of classes, and release year.
* **`gafanhoto_assiste_curso`**: Associative table linking students to watched courses (Many-to-Many / N:M Relationship).

---

## How to test the project?

1. Clone or download this repository.
2. Open your MySQL client (e.g., MySQL Workbench, DBeaver, or via Terminal).
3. Import the dump file to create the database and populate the tables with records.

---

## List of Exercise (13 Challenges)

### 01. Exercise 01 Female Students List
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** A list with the names of all female students (gafanhotas).
  - **Objective:** Select and display all data for female students registered in the `gafanhotos` table.
  - **Simulated Interface:** Input: no keyboard input; the query is executed directly in MySQL. Output: tabular result in the terminal with all columns from the table, only for rows where `sexo = 'F'`.
  - **Code Logic:** Application of conditional filtering with the `WHERE` clause to restrict selected records to those where the `sexo` field equals 'F'.
</details>

### 02. Exercise 02 List of Births Between 2000 and 2015
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** A list with the data of everyone born between 01/01/2000 and 12/31/2015.
  - **Objective:** List all people (all fields in the table) born between January 1, 2000, and December 31, 2015.
  - **Simulated Interface:** No keyboard input required. The result displayed in the terminal shows all columns of the `gafanhotos` table for records that match the date filter.
  - **Code Logic:** Application of a `WHERE` clause using the `BETWEEN` operator on the `nascimento` field, setting the range with dates '2000-01-01' and '2015-12-31', and retrieving all columns using `SELECT *`.
</details>

### 03. Exercise 03 Male Programmers List
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** A list with the names of all men who are programmers.
  - **Objective:** List all available data for male individuals whose profession is "Programmer" (the query displays all columns).
  - **Simulated Interface:** No keyboard input required. The result is displayed in the terminal with all columns of the `gafanhotos` table for records that satisfy both filters.
  - **Code Logic:** Application of a `WHERE` clause with two conditions combined by the `AND` operator: `sexo = "M"` and `profissao = "Programador"`, and complete projection of all fields using `SELECT *`.
</details>

### 04. Exercise 04 Brazilian Women With Name Starting With J
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** A list with the data of all women born in Brazil whose names start with "J".
  - **Objective:** List all information for female individuals of Brazilian nationality whose names start with the letter "J".
  - **Simulated Interface:** No keyboard input required. The result displays in the terminal all columns of the `gafanhotos` table for records that satisfy all three filters simultaneously.
  - **Code Logic:** Application of a `WHERE` clause with three conditions combined by `AND`: `sexo = "F"`, `nacionalidade = "Brasil"`, and `nome LIKE "J%"` (searches for names starting with "J"), alongside complete projection using `SELECT *`.
</details>

### 05. Exercise 05 Men With Silva In Name Non Brazilian And Under 100kg
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** A list with the name and nationality of all men who have "Silva" in their name, were not born in Brazil, and weigh less than 100kg.
  - **Objective:** Display name, nationality, and weight for records in the `gafanhotos` table that simultaneously satisfy: male gender, containing "Silva" anywhere in the name, nationality other than "Brasil", and weight under 100 kg.
  - **Simulated Interface:** No keyboard input required. The result is a terminal listing showing only the `nome`, `nacionalidade`, and `peso` columns for the filtered records.
  - **Code Logic:** Application of a `WHERE` clause with four conditions combined by `AND`: `sexo = "M"`, `nome LIKE "%Silva%"` (partial match), `nacionalidade <> "Brasil"`, and `peso < "100"` (numeric value comparison handled as a string), projecting only the `nome`, `nacionalidade`, and `peso` columns.
</details>

### 06. Exercise 06 Max Height Of Brazilian Men
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** What is the tallest height among men living in Brazil?
  - **Objective:** Calculate and display the maximum height value among all records in the `gafanhotos` table whose gender is male and nationality is "Brasil".
  - **Simulated Interface:** No keyboard input required. The result displayed in the terminal is a single numeric value corresponding to the maximum height found.
  - **Code Logic:** Application of the `MAX()` aggregation function on the `altura` column, filtering records through a `WHERE` clause with the conditions `sexo = "M"` and `nacionalidade = "Brasil"`.
</details>

### 07. Exercise 07 Average Weight Of Registered Gafanhotos
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** What is the average weight of the registered gafanhotos?
  - **Objective:** Calculate and display the arithmetic mean of the weight of all records in the `gafanhotos` table, without any filters.
  - **Simulated Interface:** No keyboard input is necessary. The result is a single numeric value displayed in the terminal, representing the average weight of the gafanhotos.
  - **Code Logic:** Application of the `AVG()` aggregation function directly on the `peso` column of the `gafanhotos` table, which scans all rows, sums the weights, and divides by the total number of records.
</details>

### 08. Exercise 08 Lowest Weight Among Non Brazilian Women 1990 2000
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** What is the lowest weight among women who were born outside of Brazil and between 01/01/1990 and 12/31/2000?
  - **Objective:** Find and display the minimum weight value among all records in the gafanhotos table that simultaneously satisfy: female gender, nationality other than "Brasil", and birth date between January 1, 1990, and December 31, 2000.
  - **Simulated Interface:** No keyboard input required. The result is a single numeric value displayed in the terminal, representing the lowest weight found in this specific group.
  - **Code Logic:** Application of the `MIN()` aggregation function on the peso column, filtering records through a `WHERE` clause with three conditions combined with `AND: sexo = "F"`, `nacionalidade <> "Brasil"`, and `nascimento BETWEEN "1990-01-01" AND "2000-12-31"`.
</details>

### 09. Exercise 09 Women Taller Than 1.90m
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** How many women are taller than 1.90m?
  - **Objective:** Count the total number of records in the `gafanhotos` table that are female and have a height greater than 1.90 meters.
  - **Simulated Interface:** No keyboard input is required. The result is a single integer displayed in the terminal, representing the number of women who meet this condition.
  - **Code Logic:** Application of the `COUNT(*)` aggregation function after filtering the rows with the `WHERE` clause, imposing two conditions combined with `AND`: `sexo = "F"` and `altura > "1.90"`.
</details>

### 10. Exercise 10 Professions And Their Counts
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** A list of the gafanhotos' professions and their respective counts.
  - **Objective:** Display each distinct profession present in the `gafanhotos` table along with the number of people who practice that profession.
  - **Simulated Interface:** No keyboard input required. The result in the terminal presents two columns: `profissao` and the total record count for each group, sorted alphabetically by profession.
  - **Code Logic:** Grouping data with `GROUP BY profissao`, counting rows per group with `COUNT(*)`, and final sorting by `profissao` in ascending order via `ORDER BY profissao`.
</details>

### 11. Exercise 11 Quantity Of Men And Women Born After 2005
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** How many male and female gafanhotos were born after 01/01/2005?
  - **Objective:** Count and display, separately, the number of male and female gafanhotos whose birth date is after January 1, 2005.
  - **Simulated Interface:** No keyboard input is required. The result in the terminal shows two rows (one for each gender present in the filtered group) with the `sexo` column and the corresponding total record count.
  - **Code Logic:** Application of a filter with `WHERE nascimento > "2005-01-01"`, followed by grouping by gender using `GROUP BY sexo` and counting rows per group with `COUNT(*)`.
</details>

### 12. Exercise 12 Countries With More Than 3 Gafanhotos Born Outside Brazil
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** A list of gafanhotos born outside of Brazil, showing the country of origin and the total number of people born there. We are only interested in countries that had more than 3 gafanhotos with that nationality.
  - **Objective:** Display each nationality other than "Brasil" and the respective quantity of gafanhotos, only for those countries where the number of born gafanhotos is greater than or equal to 3.
  - **Simulated Interface:** No keyboard input required. The result in the terminal shows two columns: `nacionalidade` (country of origin) and the total counted records, only for the groups that satisfy the quantity condition.
  - **Code Logic:** Initial filtering with `WHERE nacionalidade <> "Brasil"`, grouping by `nacionalidade` with `GROUP BY`, and restricting the groups using `HAVING COUNT(nacionalidade) >= 3`, then displaying the nationality and the person count per country.
</details>

### 13. Exercise 13 Heights Above Average With Weight Greater Than 100Kg
<details>
  <summary><b>Click to expand project details</b></summary>
  
  - **Task:** A list grouped by the gafanhotos' height, showing how many people weigh more than 100kg and are above the average height of all registered individuals.
  - **Objective:** For each height value that is higher than the general average height of all gafanhotos, count how many people with that height weigh more than 100 kg and display this information.
  - **Simulated Interface:** No keyboard input required. The result in the terminal presents two columns: `altura` (distinct height value that meets the criteria) and the number of gafanhotos (`count(*)`) corresponding to that specific height, having a weight above 100 kg and a height above the general average.
  - **Code Logic:** Initial filter with `WHERE peso > 100`, grouping by height (`GROUP BY altura`), and restricting groups with `HAVING altura > (subquery)`, where the subquery `(SELECT AVG(altura) FROM gafanhotos)` calculates the average height of all table records. Thus, only height groups that exceed this average are displayed, along with the count of gafanhotos satisfying the weight filter.
</details>
