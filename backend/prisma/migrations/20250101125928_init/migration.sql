/*
  Warnings:

  - You are about to alter the column `contact` on the `ahente` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.

*/
-- DropIndex
DROP INDEX `Ahente_userId_fkey` ON `ahente`;

-- DropIndex
DROP INDEX `Product_ahenteId_fkey` ON `product`;

-- AlterTable
ALTER TABLE `ahente` MODIFY `contact` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `Ahente` ADD CONSTRAINT `Ahente_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Product` ADD CONSTRAINT `Product_ahenteId_fkey` FOREIGN KEY (`ahenteId`) REFERENCES `Ahente`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;