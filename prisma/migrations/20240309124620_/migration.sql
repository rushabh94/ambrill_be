-- CreateTable
CREATE TABLE "employee" (
    "id" SERIAL NOT NULL,
    "emp_id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "status" VARCHAR(255) NOT NULL,
    "dob" VARCHAR(255) NOT NULL,
    "doj" VARCHAR(255) NOT NULL,
    "skills" VARCHAR(255) NOT NULL,
    "salary" VARCHAR(255) NOT NULL,
    "address" VARCHAR(255) NOT NULL,

    CONSTRAINT "employee_pkey" PRIMARY KEY ("id")
);
