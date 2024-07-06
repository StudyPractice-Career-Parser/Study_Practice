CREATE TABLE "vacancies" (
  "id" SERIAL PRIMARY KEY,
  "url" string NOT NULL,
  "name" string NOT NULL,
  "min_payment" int,
  "max_payment" int,
  "description" text,
  "is_active" boolean DEFAULT true,
  "employer_name" string NOT NULL,
  unique(url, name, employer_name)
);

CREATE TABLE "resume" (
  "id" SERIAL PRIMARY KEY,
  "first_name" string,
  "middle_name" string,
  "last_name" string,
  "specializations" string[],
  "age" int NOT NULL,
  "experience" int
);
