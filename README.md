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
