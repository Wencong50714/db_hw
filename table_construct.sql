CREATE TABLE "owner" (
  "id" integer PRIMARY KEY,
  "name" text,
  "phone" text,
  "gender" text,
  "address" text
);

CREATE TABLE "pet" (
  "id" integer PRIMARY KEY,
  "age" integer,
  "breed" text,
  "note" text,
  "registration_data" timestamp,
  "owner_id" integer,
  FOREIGN KEY ("owner_id") REFERENCES "owner" ("id")
);

CREATE TABLE "order" (
  "id" integer PRIMARY KEY,
  "time" timestamp,
  "amount" float,
  "status" text,
  "product_id" integer,
  "owner_id" integer,
  FOREIGN KEY ("owner_id") REFERENCES "owner" ("id")
);

CREATE TABLE "product_info" (
  "name" text PRIMARY KEY,
  "price" float
);

CREATE TABLE "product" (
  "id" integer PRIMARY KEY,
  "stock_quantity" integer,
  "name" text,
  FOREIGN KEY ("name") REFERENCES "product_info" ("name")
);

CREATE TABLE "contains" (
  "order_id" integer,
  "product_id" integer,
  FOREIGN KEY ("order_id") REFERENCES "order" ("id"),
  FOREIGN KEY ("product_id") REFERENCES "order" ("id")
);

CREATE TABLE "employee" (
  "id" integer PRIMARY KEY,
  "name" text,
  "position" text,
  "working_hours" integer
);

CREATE TABLE "service_type" (
  "type" text PRIMARY KEY,
  "price" float
);

CREATE TABLE "service" (
  "id" integer PRIMARY KEY,
  "employee_id" integer,
  "type" text,
  FOREIGN KEY ("employee_id") REFERENCES "employee" ("id"),
  FOREIGN KEY ("type") REFERENCES "service_type" ("type")
);


CREATE TABLE "appointment" (
  "id" integer PRIMARY KEY,
  "appoint_time" timestamp,
  "order_time" timestamp,
  "owner_id" integer,
  FOREIGN KEY ("owner_id") REFERENCES "owner" ("id")
);

CREATE TABLE "include" (
  "service_id" integer,
  "appoint_id" integer,
  FOREIGN KEY ("appoint_id") REFERENCES "appointment" ("id"),
  FOREIGN KEY ("service_id") REFERENCES "service" ("id")
);
