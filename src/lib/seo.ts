const site = () => (import.meta.env.SITE ?? "").replace(/\/$/, "");
const base = () => import.meta.env.BASE_URL.replace(/\/$/, "");

/** Ruta absoluta pública (site + base + path). */
export function absoluteUrl(path: string): string {
  if (path.startsWith("http://") || path.startsWith("https://")) return path;

  const origin = site();
  const basePath = base();
  let normalized = path.startsWith("/") ? path : `/${path}`;

  if (
    basePath &&
    !normalized.startsWith(`${basePath}/`) &&
    normalized !== basePath
  ) {
    normalized = `${basePath}${normalized}`;
  }

  return `${origin}${normalized}`;
}

/** Meta description corta para SEO y redes sociales. */
export function truncateDescription(text: string, max = 160): string {
  const trimmed = text.trim();
  if (trimmed.length <= max) return trimmed;
  const slice = trimmed.slice(0, max - 1);
  const lastSpace = slice.lastIndexOf(" ");
  const cut = lastSpace > max * 0.6 ? slice.slice(0, lastSpace) : slice;
  return `${cut.trimEnd()}…`;
}
