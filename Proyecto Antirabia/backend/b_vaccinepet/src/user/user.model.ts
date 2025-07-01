import { ObjectType, Field, ID } from '@nestjs/graphql';

@ObjectType()
export class User {
  @Field(() => ID)
  id: string;

  @Field()
  nombre: string;

  @Field()
  usuario: string;

  @Field()
  contrasena: string;

  @Field()
  createdAt: Date;
}
