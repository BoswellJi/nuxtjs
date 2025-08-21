import prisma from '../lib/prisma';

export default defineEventHandler(async event => {
  const users = await prisma.user.create({
    data: {
      email: 'newus111er@example.com',
      name: 'New User',
    },
  });
  return users;
});
