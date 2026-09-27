# INFOMAN1 — Week 5 Lab Reflection

**Name:** ESPIRITU, JUDE NICCOLO  
**Student ID:** 2511020  
**Section:** BSIT-II  

---

Running SELECT statements is safe when looking around a database because they only read the data that is already stored. They are part of DQL (Data Query Language). Commands like DELETE or DROP actually change or delete stuff in your tables, which can mess up your database if you make a mistake. SELECT just shows you the information on the screen without changing anything, so you can run it as many times as you want without worrying.

For Task 4, Query 4A worked fine and showed Buddy and Max because I used quotes around 'Dog'. But in Query 4B, I took away the single quotes around Dog on purpose. MySQL got confused and thought Dog was the name of a column in the table instead of a text word. It gave me Error 1054: Unknown column 'Dog' in 'where clause'. I figured out what went wrong by reading the error message in the terminal and adding the single quotes back around the word.