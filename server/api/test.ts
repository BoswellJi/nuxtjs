import prisma from '@@/server/lib/prisma';

export default defineEventHandler(async () => {
  const classList = await prisma.class.findFirst();

  if (classList) {
    const id = classList.id.toString();
    return {
      id: id,
      name: classList.class_name,
      created_at: classList.created_at,
    };
  }

  return {};
});
