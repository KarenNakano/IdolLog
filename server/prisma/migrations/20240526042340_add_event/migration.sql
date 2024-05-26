-- CreateTable
CREATE TABLE "User" (
    "UserID" TEXT NOT NULL,
    "User Name" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("UserID")
);

-- CreateTable
CREATE TABLE "Group" (
    "Group id" BIGINT NOT NULL,
    "Group Name" TEXT NOT NULL,

    CONSTRAINT "Group_pkey" PRIMARY KEY ("Group id")
);

-- CreateTable
CREATE TABLE "Event" (
    "Event id" BIGINT NOT NULL,
    "user id" TEXT NOT NULL,
    "venue id" BIGINT NOT NULL,
    "Group id" BIGINT NOT NULL,
    "Date" TIMESTAMP(3) NOT NULL,
    "venue time" TIMESTAMP(3) NOT NULL,
    "start time" TIMESTAMP(3) NOT NULL,
    "end time" TIMESTAMP(3) NOT NULL,
    "seat" TEXT NOT NULL,
    "seat memo" TEXT NOT NULL,
    "transportation method" TEXT NOT NULL,
    "place of departure" TEXT NOT NULL,
    "destination" TEXT NOT NULL,
    "transportation cost" BIGINT NOT NULL,
    "traffic conditions" TEXT NOT NULL,
    "accommodation" TEXT NOT NULL,
    "AccommodationCost" BIGINT NOT NULL,
    "Accommodation memo" TEXT NOT NULL,
    "visa" BOOLEAN NOT NULL,
    "visa cost" BIGINT NOT NULL,
    "What you need when enter the country" TEXT NOT NULL,
    "goods" TEXT NOT NULL,
    "goods cost" BIGINT NOT NULL,
    "others cost" BIGINT NOT NULL,
    "others details" TEXT NOT NULL,
    "total cost" BIGINT NOT NULL,
    "memo" TEXT NOT NULL,
    "images" BYTEA NOT NULL,

    CONSTRAINT "Event_pkey" PRIMARY KEY ("Event id")
);

-- CreateTable
CREATE TABLE "Venue" (
    "venue id" BIGINT NOT NULL,
    "venue name" TEXT NOT NULL,

    CONSTRAINT "Venue_pkey" PRIMARY KEY ("venue id")
);

-- AddForeignKey
ALTER TABLE "Event" ADD CONSTRAINT "Event_user id_fkey" FOREIGN KEY ("user id") REFERENCES "User"("UserID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Event" ADD CONSTRAINT "Event_Group id_fkey" FOREIGN KEY ("Group id") REFERENCES "Group"("Group id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Event" ADD CONSTRAINT "Event_venue id_fkey" FOREIGN KEY ("venue id") REFERENCES "Venue"("venue id") ON DELETE RESTRICT ON UPDATE CASCADE;
