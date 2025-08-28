-- CreateTable
CREATE TABLE "public"."Class" (
    "id" BIGSERIAL NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "class_name" VARCHAR NOT NULL,

    CONSTRAINT "Class_pkey" PRIMARY KEY ("id","class_name")
);
