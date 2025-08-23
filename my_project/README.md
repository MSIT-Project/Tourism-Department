Welcome to your new dbt assignment!
🔎 What is dbt?

dbt stands for Data Build Tool.

It’s an open-source tool that helps data teams transform raw data into clean, reliable datasets.

Instead of manually cleaning data in spreadsheets or writing unorganized SQL scripts, dbt gives you a structured way to:

Model your data with SQL (write transformations as .sql files).

Test data quality (check for duplicates, nulls, unexpected values).

Document your data models so others can understand them.

Version control transformations with Git (just like software development).

Think of dbt as the “engineering framework” for analytics — it applies software best practices (modularity, testing, documentation) to data work.

🚀 Using the starter project

Your starter dbt project already has example files. To try it out, run these commands in your terminal:

dbt run
👉 This compiles and executes all your models (SQL transformations). It takes raw data from your warehouse, applies your SQL logic, and saves the cleaned/processed results back into the warehouse.

dbt test
👉 This runs all the tests defined in your project. Tests check data quality (for example, “no null values in primary key” or “unique values in an ID column”).

Running these two commands is the foundation of dbt:

dbt run = build the models

dbt test = validate the models

📚 Resources to Learn More

📖 dbt Docs
 – Official documentation with tutorials.

💬 Discourse
 – Community Q&A for common problems.

👥 Slack Community
 – Live discussions and support from other dbt users.

📅 dbt Events
 – Meetups, trainings, and conferences.

📝 dbt Blog
 – Updates, tutorials, and best practices from the dbt team.

👉 So in short: dbt = a tool to transform, test, and document your data in the warehouse, using only SQL and software-engineering best practices.
