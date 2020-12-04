-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Genre" (
    "ISBN" VARCHAR   NOT NULL,
    "genre" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Genre" PRIMARY KEY (
        "ISBN"
     )
);

CREATE TABLE "Rating" (
    "ISBN" VARCHAR   NOT NULL,
    "avg_rating" VARCHAR   NOT NULL,
    "ratings_count" VARCHAR   NOT NULL,
    "text_ratings_count" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Rating" PRIMARY KEY (
        "ISBN"
     )
);

CREATE TABLE "Language" (
    "ISBN" VARCHAR   NOT NULL,
    "lang" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Language" PRIMARY KEY (
        "ISBN"
     )
);

CREATE TABLE "New_York_Times" (
    "ISBN" VARCHAR   NOT NULL,
    "is_best_seller" VARCHAR   NOT NULL,
    "year" VARCHAR   NOT NULL,
    CONSTRAINT "pk_New_York_Times" PRIMARY KEY (
        "ISBN"
     )
);

CREATE TABLE "Oprahs" (
    "ISBN" VARCHAR   NOT NULL,
    "bookclub_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Oprahs" PRIMARY KEY (
        "ISBN"
     )
);

CREATE TABLE "Book_description" (
    "ISBN" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "author" VARCHAR   NOT NULL,
    "number_of_pages" VARCHAR   NOT NULL,
    "publication_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Book_description" PRIMARY KEY (
        "ISBN"
     )
);

ALTER TABLE "Genre" ADD CONSTRAINT "fk_Genre_ISBN" FOREIGN KEY("ISBN")
REFERENCES "Language" ("ISBN");

ALTER TABLE "Rating" ADD CONSTRAINT "fk_Rating_ISBN" FOREIGN KEY("ISBN")
REFERENCES "Language" ("ISBN");

ALTER TABLE "New_York_Times" ADD CONSTRAINT "fk_New_York_Times_ISBN" FOREIGN KEY("ISBN")
REFERENCES "Oprahs" ("ISBN");

ALTER TABLE "Book_description" ADD CONSTRAINT "fk_Book_description_ISBN" FOREIGN KEY("ISBN")
REFERENCES "Rating" ("ISBN");

