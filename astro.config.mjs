import { defineConfig } from "astro/config";
import sitemap from "@astrojs/sitemap";

// GitHub Pages sigue usando estos valores si no hay variables.
// En EasyPanel define SITE y BASE_PATH=/ para servir el sitio en la raíz del dominio.
const site = process.env.SITE ?? "https://fyarza.github.io";
const base = process.env.BASE_PATH ?? "porfolio-minimalista";

// https://astro.build/config
export default defineConfig({
  site,
  base,
  integrations: [
    sitemap({
      filter: (page) => !page.includes("/ats"),
    }),
  ],
});
