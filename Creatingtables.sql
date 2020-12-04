-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "New_York_Times" (
    "ISBN" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    CONSTRAINT "pk_New_York_Times" PRIMARY KEY (
        "ISBN"
     )
);

CREATE TABLE "Oprahs" (
    "ISBN" VARCHAR   NOT NULL,
    "bookclub_month" INT   NOT NULL,
    "bookclub_year" INT   NOT NULL,
    CONSTRAINT "pk_Oprahs" PRIMARY KEY (
        "ISBN"
     )
);

CREATE TABLE "Book_description" (
    "ISBN" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "author" VARCHAR   NOT NULL,
    "number_of_pages" INT   NOT NULL,
    "publication_date" DATE   NOT NULL,
    "genre" VARCHAR   NOT NULL,
    "language" VARCHAR   NOT NULL,
    "avg_rating" DECIMAL   NOT NULL,
    CONSTRAINT "pk_Book_description" PRIMARY KEY (
        "ISBN"
     )
);

ALTER TABLE "New_York_Times" ADD CONSTRAINT "fk_New_York_Times_ISBN" FOREIGN KEY("ISBN")
REFERENCES "Book_description" ("ISBN");

ALTER TABLE "Oprahs" ADD CONSTRAINT "fk_Oprahs_ISBN" FOREIGN KEY("ISBN")
REFERENCES "Book_description" ("ISBN");

