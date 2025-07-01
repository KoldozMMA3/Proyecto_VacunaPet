import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { User } from '@prisma/client';

@Injectable()
export class UserService {
  constructor(private prisma: PrismaService) {}

  async create(nombre: string, usuario: string, contrasena: string): Promise<User> {
    return this.prisma.user.create({
      data: { nombre, usuario, contrasena },
    });
  }

  async findByUsuario(usuario: string): Promise<User | null> {
    return this.prisma.user.findUnique({ where: { usuario } });
  }
}
