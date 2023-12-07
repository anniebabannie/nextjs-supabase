/*
  Warnings:

  - You are about to drop the `CampaignPlayers` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "CampaignPlayers" DROP CONSTRAINT "CampaignPlayers_campaignId_fkey";

-- DropForeignKey
ALTER TABLE "CampaignPlayers" DROP CONSTRAINT "CampaignPlayers_userId_fkey";

-- DropTable
DROP TABLE "CampaignPlayers";

-- CreateTable
CREATE TABLE "CampaignPlayer" (
    "userId" INTEGER NOT NULL,
    "campaignId" INTEGER NOT NULL,

    CONSTRAINT "CampaignPlayer_pkey" PRIMARY KEY ("userId","campaignId")
);

-- AddForeignKey
ALTER TABLE "CampaignPlayer" ADD CONSTRAINT "CampaignPlayer_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CampaignPlayer" ADD CONSTRAINT "CampaignPlayer_campaignId_fkey" FOREIGN KEY ("campaignId") REFERENCES "Campaign"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
