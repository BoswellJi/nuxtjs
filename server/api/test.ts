import { PrismaClient } from '../generated/prisma-client';

const prisma = new PrismaClient();

export default defineEventHandler(async event => {
  const users = await prisma.user.create({
    data: {
      email: 'newus111er@example.com',
      name: 'New User',
    },
  });
  return users;
});
