import { defineConfig } from "astro/config";
import sitemap from "@astrojs/sitemap";

// https://astro.build/config
export default defineConfig({
  site: "https://fyarza.github.io",
  base: "porfolio-minimalista",
  integrations: [
    sitemap({
      filter: (page) => !page.includes("/ats"),
    }),
  ],
});
