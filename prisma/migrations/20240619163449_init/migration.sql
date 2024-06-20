-- CreateTable
CREATE TABLE "app_user" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "full_name" TEXT NOT NULL,
    "phone_number" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "username" TEXT,
    "address_id" INTEGER,

    CONSTRAINT "app_user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "address" (
    "id" SERIAL NOT NULL,
    "street_name" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "building_number" TEXT NOT NULL,
    "app_userId" INTEGER NOT NULL,

    CONSTRAINT "address_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "app_user_email_key" ON "app_user"("email");

-- CreateIndex
CREATE UNIQUE INDEX "app_user_phone_number_key" ON "app_user"("phone_number");

-- CreateIndex
CREATE UNIQUE INDEX "address_app_userId_key" ON "address"("app_userId");

-- AddForeignKey
ALTER TABLE "address" ADD CONSTRAINT "address_app_userId_fkey" FOREIGN KEY ("app_userId") REFERENCES "app_user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
