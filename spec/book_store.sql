DROP TABLE IF EXISTS "public"."books";

CREATE SEQUENCE IF NOT EXISTS books_id_seq;

CREATE TABLE "public"."books"(
    "id" SERIAL,
    "title" text,
    "author" text,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."books" ("id", "title", "author") VALUES
(1, 'Nineteen Eighty-Four', 'George Orwell'),
(2, 'Mrs Dalloway', 'Virginia Woolf'),
(3, 'Emma', 'Jane Austen'),
(4, 'Dracula', 'Bram Stoker'),
(5, 'The Age of Innocence', 'Edith Wharton');