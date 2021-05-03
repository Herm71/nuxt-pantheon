export default {
    // Target (https://go.nuxtjs.dev/config-target)
    target: 'static',

    // Global page headers (https://go.nuxtjs.dev/config-head)
    head: {
        title: 'nuxt-pantheon',
        meta: [
            { charset: 'utf-8' },
            { name: 'viewport', content: 'width=device-width, initial-scale=1' },
            { hid: 'description', name: 'description', content: '' },
        ],
        link: [{ rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }],
        script: [{ src: 'https://kit.fontawesome.com/5957a2b1a4.js' }],
    },

    // Global CSS (https://go.nuxtjs.dev/config-css)
    css: [
        '~assets/scss/main.scss'
    ],

    // Plugins to run before rendering page (https://go.nuxtjs.dev/config-plugins)
    plugins: [],

    // Auto import components (https://go.nuxtjs.dev/config-components)
    components: true,

    // Modules for dev and build (recommended) (https://go.nuxtjs.dev/config-modules)
    buildModules: [
        // https://go.nuxtjs.dev/eslint
        '@nuxtjs/eslint-module',
        // https://go.nuxtjs.dev/stylelint
        '@nuxtjs/stylelint-module',
        // https://go.nuxtjs.dev/tailwindcss
        '@nuxtjs/tailwindcss',
        // https://github.com/nuxt-community/router-extras-module
        '@nuxtjs/router-extras',
    ],

    // Modules (https://go.nuxtjs.dev/config-modules)
    modules: [
        '@nuxtjs/style-resources',
        '@nuxtjs/axios',
    ],
    // Axios options
    axios: {
        baseURL: 'http://localhost:3000/',
    },
    publicRuntimeConfig: {
        axios: {
            browserBaseURL: process.env.BROWSER_BASE_URL
        }
    },

    privateRuntimeConfig: {
        axios: {
            baseURL: process.env.BASE_URL
        }
    },
    styleResources: {
        scss: ['./assets/scss/*.scss']
    },

    // Build Configuration (https://go.nuxtjs.dev/config-build)
    build: {},
}