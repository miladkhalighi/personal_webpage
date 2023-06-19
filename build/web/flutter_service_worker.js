'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "8e7ad115dab9b9debc7e5f89a54e29ce",
"index.html": "a94d7cb41be553a63faf36a6cc3655af",
"/": "a94d7cb41be553a63faf36a6cc3655af",
"main.dart.js": "02c82988e4a11368f2cc247cc29aed10",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "aa336800122268b0e3c26b08a36d2335",
"assets/AssetManifest.json": "0348fac37f4953c28da4e640f20c817e",
"assets/NOTICES": "9dbbc7b4be12323716b44ed1680a04b8",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.smcbin": "d33fab608f583e31e5f471c445971769",
"assets/fonts/MaterialIcons-Regular.otf": "62ec8220af1fb03e1c20cfa38781e17e",
"assets/assets/images/graduation_hat.png": "74b9ac14da2ed2f1725fca41e239a166",
"assets/assets/images/android.svg": "5da4686068117b13de7793eb02cb0276",
"assets/assets/images/profile_img.png": "4b63666b9efb3491810c512970c58de8",
"assets/assets/images/github.svg": "f7348704525120f907a808df5fbe1032",
"assets/assets/images/projects_img/uber_3.png": "b1b7a97866520bba50abc90cbdc6d4ea",
"assets/assets/images/projects_img/uber_2.png": "e6c1177713a998b842c2ba49b2ddea99",
"assets/assets/images/projects_img/uber_1.png": "c8425775dc1af6470ca93535528bea87",
"assets/assets/images/projects_img/uber_4.png": "c69a8df968d5205f918d6de5abe231c3",
"assets/assets/images/projects_img/puppy_1.png": "25fd40e21df57fe55f4c049e8b217ed6",
"assets/assets/images/projects_img/puppy_2.png": "2f5f1ddf5959c8ab1d973abbe31e577c",
"assets/assets/images/projects_img/movie_2.png": "7f33b8e4019579d3662bf2666f294868",
"assets/assets/images/projects_img/smart_home_1.png": "4f90a10c8a55339ce9b6a5c1b62ddcb0",
"assets/assets/images/projects_img/movie_3.png": "97243581bec807c46ec2127c0e992bca",
"assets/assets/images/projects_img/movie_1.png": "c4d7ec4623a3989c4edd3b4512bed7e4",
"assets/assets/images/projects_img/smart_home_2.png": "6fb33385b07f8fd0b80c5c52827140d3",
"assets/assets/images/projects_img/smart_home_3.png": "db7dde5e33d217393698af1ac127af53",
"assets/assets/images/projects_img/food_delivery_4.png": "6071148eb7a7b1b7720da70402596ca0",
"assets/assets/images/projects_img/movie_4.png": "0ee8df90e9bb14fedc8f7c99e1bfdc6f",
"assets/assets/images/projects_img/streaming_1.png": "eaae7e1695eb417644c2942f781ea4dc",
"assets/assets/images/projects_img/food_delivery_1.png": "3ad5f83f0ac3bdf21fb6710096bd8202",
"assets/assets/images/projects_img/food_delivery_3.png": "3ad8eed1578536939992e9224041e4e7",
"assets/assets/images/projects_img/smart_home_4.png": "c475e686f85fa666674842508ab77495",
"assets/assets/images/projects_img/smart_home_5.png": "d94afa4ed64ccc2feaaa1d67db664881",
"assets/assets/images/projects_img/streaming_2.png": "a82d49c577514749360ddabdd0b4d0dc",
"assets/assets/images/projects_img/food_delivery_2.png": "9d61e3566b25262cc89a6a0be49a81b9",
"assets/assets/images/flutter.svg": "d29283392472b28493196f39ea787a8b",
"assets/assets/images/instagram.svg": "7c68ba778febb05f9628ccfa8d27c694",
"assets/assets/images/web.svg": "59a849030daec6d5c534100f3d8db3a7",
"assets/assets/images/linkedin.svg": "7818d4fdd407be8ac1875ce85aca86e2",
"assets/assets/images/swift.svg": "37c05d5dc10b1c202030a60a6f38fdf8",
"assets/assets/images/apple.svg": "4d995515c1cf81085df61c9d4ed0f5ca",
"assets/assets/lottie/loading.json": "9441556c8765b7496d0b2748ee2f3df8",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
