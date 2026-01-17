
<div align="center">
<h2>
    <em>Portafolio Personal</em> - Federico Antonio Yarza Castillo
</h2>
<p>
Portafolio web minimalista construido con Astro que muestra mi experiencia como Full Stack Developer
</p>
<p>
Visita el sitio: <a href="https://fyarza.github.io/porfolio-minimalista/">https://fyarza.github.io/porfolio-minimalista/</a>
</p>
<p>
Esquema del JSON de CV basado en <a href="https://jsonresume.org/schema/">jsonresume.org</a>
</p>
<p>
Basado en el diseño de <a href="https://github.com/BartoszJarocki/cv">Bartosz Jarocki</a>
</p>
</div>

<div align="center">
    <a href="#🚀-empezar">
        Empezar
    </a>
    <span>&nbsp;✦&nbsp;</span>
    <a href="#🧞-comandos">
        Comandos
    </a>
    <span>&nbsp;✦&nbsp;</span>
    <a href="#🌐-versiones">
        Versiones
    </a>
    <span>&nbsp;✦&nbsp;</span>
    <a href="#🔑-licencia">
        Licencia
    </a>
    <span>&nbsp;✦&nbsp;</span>
    <a href="https://github.com/fyarza">
        GitHub
    </a>
    <span>&nbsp;✦&nbsp;</span>
    <a href="https://linkedin.com/in/federico-antonio-yarza-castillo-351621163">
        LinkedIn
    </a>
</div>

<p></p>

<div align="center">

![Astro Badge](https://img.shields.io/badge/Astro-BC52EE?logo=astro&logoColor=fff&style=flat)
![TypeScript Badge](https://img.shields.io/badge/TypeScript-3178C6?logo=typescript&logoColor=fff&style=flat)
![License Badge](https://img.shields.io/badge/License-MIT-green?style=flat)

</div>

<img src="portada.png" alt="Preview del Portafolio de Federico Yarza"></img>

## 👨‍💻 Sobre el Proyecto

Este es mi portafolio personal construido con **Astro**, mostrando mi experiencia como **Full Stack Developer con más de 8 años de experiencia** en el desarrollo de software mobile y web.

### Características

- ✅ **Responsive Design** - Se adapta a todos los dispositivos
- ✅ **Bilingüe** - Versiones en español e inglés (`/` y `/en`)
- ✅ **Optimizado para impresión** - Genera PDFs perfectos
- ✅ **Hotkey Navigation** - Navegación rápida con atajos de teclado (Cmd/Ctrl + K)
- ✅ **GitHub Pages** - Desplegado automáticamente en cada push

## 🛠️ Stack Tecnológico

- [**Astro**](https://astro.build/) - El framework web de la nueva época.
- [**TypeScript**](https://www.typescriptlang.org/) - JavaScript con sintaxis de tipado.
- [**Hotkeypad**](https://github.com/ssleptsov/hotkeypad) - Menú desplegable con atajos de teclado hecho en puro JavaScript.

## 🚀 Empezar

### 1. Clonar el repositorio

```bash
git clone https://github.com/fyarza/porfolio-minimalista.git
cd porfolio-minimalista
```

### 2. Instalar dependencias

Este proyecto usa [pnpm](https://pnpm.io/installation) como gestor de dependencias:

```bash
# Activa pnpm en MacOS, WSL & Linux:
corepack enable
corepack prepare pnpm@latest --activate

# Instala las dependencias
pnpm install
```

### 3. Personalizar tu contenido

Edita los archivos JSON para agregar tu información:

- `cv.json` - Versión en español de tu CV
- `cv_english.json` - Versión en inglés de tu CV

### 4. Ejecutar en desarrollo

```bash
pnpm dev
```

Abre [**http://localhost:4321**](http://localhost:4321/) en tu navegador para ver el resultado 🚀

## 🧞 Comandos

|     | Comando          | Acción                                        |
| :-- | :--------------- | :-------------------------------------------- |
| ⚙️  | `dev` o `start` | Lanza un servidor de desarrollo local en  `localhost:4321`.  |
| ⚙️  | `build`          | Hace un empaquetado de producción en `./dist/`.      |
| ⚙️  | `preview`        | Vista previa de la build de producción en local. |
| ⚙️  | `check`          | Valida tipos con Astro Check (opcional). |

## 🌐 Versiones del Sitio

Este portafolio está disponible en dos idiomas:

- **Español**: [https://fyarza.github.io/porfolio-minimalista/](https://fyarza.github.io/porfolio-minimalista/)
- **English**: [https://fyarza.github.io/porfolio-minimalista/en](https://fyarza.github.io/porfolio-minimalista/en)

## 📦 Estructura del Proyecto

```
├── public/          # Archivos estáticos (imágenes, favicon)
├── src/
│   ├── components/  # Componentes reutilizables
│   │   ├── sections/ # Secciones del CV
│   │   └── ...
│   ├── layouts/     # Layouts de página
│   ├── pages/       # Páginas (index.astro, en.astro)
│   └── ...
├── cv.json          # Datos del CV en español
├── cv_english.json  # Datos del CV en inglés
└── astro.config.mjs # Configuración de Astro
```

## 🚢 Despliegue

Este proyecto está configurado para desplegarse automáticamente en **GitHub Pages** usando GitHub Actions.

Cada push a la rama `main` dispara el workflow de despliegue automático.

Para configurar en tu propio repositorio:

1. Edita `astro.config.mjs` con tu URL de GitHub Pages
2. Asegúrate de que el workflow `.github/workflows/deploy.yml` existe
3. Configura GitHub Pages en Settings → Pages → Source: GitHub Actions

## 📝 Licencia

[MIT](LICENSE.txt) - Creado por [**Federico Antonio Yarza Castillo**](https://github.com/fyarza)

---

<div align="center">

💻 Desarrollado con ❤️ usando [Astro](https://astro.build/)

[GitHub](https://github.com/fyarza) • [LinkedIn](https://linkedin.com/in/federico-antonio-yarza-castillo-351621163)

</div>