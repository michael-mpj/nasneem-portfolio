/**
 * Nasneem Khaleel Portfolio — Service Worker
 *
 * Provides offline caching for the static portfolio site.
 * Uses a cache-first strategy for assets, network-first for navigation.
 */

const CACHE_NAME = 'nasneem-portfolio-v1';
const ASSETS_TO_CACHE = [
  '/',
  '/index.html',
  '/cv.html',
  '/css/main.css',
  '/css/print.css',
  '/js/main.js',
  '/assets/icons/favicon.svg',
  '/manifest.webmanifest'
];

// Install — cache core assets
self.addEventListener('install', (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => cache.addAll(ASSETS_TO_CACHE))
  );
  self.skipWaiting();
});

// Activate — remove stale caches
self.addEventListener('activate', (event) => {
  event.waitUntil(
    caches.keys().then((keys) =>
      Promise.all(
        keys.filter((key) => key !== CACHE_NAME).map((key) => caches.delete(key))
      )
    )
  );
  self.clients.claim();
});

// Fetch — cache-first for same-origin assets, network-first for navigation
self.addEventListener('fetch', (event) => {
  const { request } = event;

  // Skip non-GET and cross-origin requests
  if (request.method !== 'GET' || !request.url.startsWith(self.location.origin)) {
    return;
  }

  // Navigation requests (HTML) — network-first
  if (request.mode === 'navigate') {
    event.respondWith(
      fetch(request).catch(() => caches.match('/index.html'))
    );
    return;
  }

  // Asset requests — cache-first
  event.respondWith(
    caches.match(request).then((cached) => cached || fetch(request))
  );
});