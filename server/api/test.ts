import prisma from '@@/lib/prisma';

export default defineEventHandler(async () => {
  return {
    user: (await prisma.authz_menu.findFirst())?.create_time,
  };
});
