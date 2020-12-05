-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "new_york_times" (
    "isbn" VARCHAR   NOT NULL,
    "bestseller_year" INT   NOT NULL,
    CONSTRAINT "pk_new_york_times" PRIMARY KEY (
        "isbn"
     )
);

CREATE TABLE "oprahs" (
    "isbn" VARCHAR   NOT NULL,
    "bookclub_month" INT   NOT NULL,
    "bookclub_year" INT   NOT NULL,
    CONSTRAINT "pk_oprahs" PRIMARY KEY (
        "isbn"
     )
);

CREATE TABLE "book_description" (
    "isbn" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "author" VARCHAR   NOT NULL,
    "number_of_pages" INT   NOT NULL,
    "publication_date" DATE   NOT NULL,
    "language_code" VARCHAR   NOT NULL,
    "avg_rating" DECIMAL   NOT NULL,
    CONSTRAINT "pk_book_description" PRIMARY KEY (
        "isbn"
     )
);

ALTER TABLE "new_york_times" ADD CONSTRAINT "fk_new_york_times_isbn" FOREIGN KEY("isbn")
REFERENCES "book_description" ("isbn");

ALTER TABLE "oprahs" ADD CONSTRAINT "fk_oprahs_isbn" FOREIGN KEY("isbn")
REFERENCES "book_description" ("isbn");