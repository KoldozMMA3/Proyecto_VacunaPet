import { Resolver, Mutation, Args, Query } from '@nestjs/graphql';
import { UserService } from './user.service';
import { User } from './user.model'; // Definido con @ObjectType()
import { InputType, Field } from '@nestjs/graphql';

@InputType()
class CreateUserInput {
  @Field() nombre: string;
  @Field() usuario: string;
  @Field() contrasena: string;
}

@Resolver(() => User)
export class UserResolver {
  constructor(private userService: UserService) {}

  @Mutation(() => User)
  async register(@Args('input') input: CreateUserInput) {
    return this.userService.create(input.nombre, input.usuario, input.contrasena);
  }

  @Mutation(() => User, { nullable: true })
  async login(@Args('usuario') usuario: string, @Args('contrasena') contrasena: string) {
    const user = await this.userService.findByUsuario(usuario);
    if (user && user.contrasena === contrasena) return user;
    return null;
  }
}
