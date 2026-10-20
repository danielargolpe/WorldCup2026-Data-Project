# World Cup 2026: Database design, Machine Learning & Analytics
This project focuses on building a PostgreSQL relational database for the FIFA World Cup 2026, with plans to extend it into a data analytics project incorporating Python-based exploratory data analysis, machine learning, and an interactive Power BI dashboard.

## Project structure
* **`DB/`**: SQL scripts for database schema `2026` creation, data loading, data validation, and analytical queries.
* **`ML_pipeline/`**: Planned Notebooks and Python scripts for data extraction, exploratory data analysis (EDA), machine learning model development.
* **`dashboard/`**: Planned dashboard for tournament analysis, team performance, and player statistics.

## Database architecture (ERD)
The Entity-Relationship Diagram (ERD) illustrates the relational structure of the **World Cup 2026 database** The database is designed around relational principles to reduce data redundancy, maintain data integrity, and support future analytical queries.
> You can see the full Entity-Relationship Diagram (ERD) file directly here: **[ERD_WorldCup_2026.png](DB/ERD_WorldCup_2026.png)**

## Key Design Decisions
- **Entity separation:** Teams, players, referees, and stadiums are stored in separate tables to organize data and reduce unnecessary duplication.
- **Semantic clarity:** Column names such as `stadium_country` and `referee_country` clearly identify the information stored in each field.
- **Referential integrity:** Primary and foreign keys establish relationships between players and teams, and allow matches to reference teams, referees, and stadiums.
- **Data validation:** SQL queries are used to check record counts, missing values, and data consistency.

## Database Status
The PostgreSQL database has been created, and the following tables have been populated and validated:
- **`teams`**: 48 national teams.
- **`players`**: 1,248 player records, including player names, positions, birth dates, clubs, and team references.
- **`referees`**: 52 referees.
- **`stadiums`**: 16 tournament venues.
The `matches` and `match_statistics` tables are part of the database structure. Loading match data and conducting further analysis remain as next steps.

## Technologies
- **Database:** PostgreSQL
- **Database Management:** pgAdmin
- **Programming Language:** Python
- **Data Analysis:** Pandas, NumPy, Scikit-learn
- **Development Environment:** Jupyter Notebook, Ubuntu/Linux
- **Version Control:** Git and GitHub
- **Planned Business Intelligence:** Power BI