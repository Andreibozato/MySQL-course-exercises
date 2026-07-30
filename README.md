# 🗄️ MySQL Database & Queries - Curso em Vídeo (Gustavo Guanabara)

This repository contains the modeling, creation, and resolution of practical query exercises in MySQL, utilizing the `cadastro` database proposed by professor Gustavo Guanabara of the renowned Database course from the Curso em Vídeo channel.

---

## Database Structure

The database consists of 3 main tables with Foreign Key (`FOREIGN KEY`) relationships:

* **`gafanhotos`**: Table of users/students containing profile data (Name, Occupation, Date of Birth, Gender, Weight, Height, Nationality, and Preferred Course).
* **`cursos`**: Course catalog containing workload hours, total number of classes, and release year.
* **`gafanhoto_assiste_curso`**: Associative table linking students to watched courses (Many-to-Many / N:M Relationship).

---
