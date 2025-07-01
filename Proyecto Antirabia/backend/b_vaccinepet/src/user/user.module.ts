// src/user/user.module.ts
import { Module } from '@nestjs/common';
import { UserService } from './user.service';
import { UserResolver } from './user.resolver';
import { PrismaModule } from '../prisma/prisma.module'; // 👈 importa PrismaModule

@Module({
  imports: [PrismaModule], // 👈 agrégalo aquí
  providers: [UserService, UserResolver],
})
export class UserModule {}
