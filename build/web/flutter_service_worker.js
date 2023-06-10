'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "7770897bcc4b4afb643dec8e6712bb64",
"favicon.ico": "7003fe0a98fd6f7b9af4f39522f67981",
"index.html": "efb85d2d8cba6a10046123182fd9e9fd",
"/": "efb85d2d8cba6a10046123182fd9e9fd",
"main.dart.js": "0947a4b8601ac7891831ae7552b25d74",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"main.dart": "0bee74c6a17c2da0e1740084a5c17c38",
"assets/background_button/background_button_0.jpg": "4a17c45d0d372d196494304c7ab09085",
"assets/background_button/background_button_1.jpg": "d45d2fc87ba3eed91912a5f568f13eb2",
"assets/background_button/background_button_3.jpg": "36fa1a1c3c73d8366840fb8a0805061f",
"assets/background_button/background_button_2.jpg": "2be733f0f1e805c914216b523e7f163d",
"assets/background_button/background_button_4.jpg": "52a764c09811e07d5322f7620cae2649",
"assets/images/home/businessman_background_1_main.jpg": "e5964c5639e5a54e3460b1f66ca8c02d",
"assets/images/home/business_background_home_page_2.jpg": "5cf217768efd9c1deb308371b2dfed76",
"assets/images/mass_page/background_mass_page.jpg": "1d935e61c1f91cf42e6400e3b38ce09b",
"assets/images/background_img/worker_background_img.jpg": "b48868e5738ab8d29d0050ad280933b5",
"assets/images/background_img/sales_manager_background_img.jpg": "9ebf05af18f38789e43c51ef975b022a",
"assets/images/background_img/about_us_background_img.jpg": "87f1522ca09e0c2e5b30b6fa06ff01fc",
"assets/images/background_img/administration_background_img.jpg": "0e4f336f214857c46ef97ffee6e8ea8e",
"assets/images/background_img/financier_background_img.jpg": "49f2e74d84d54591b340610fef77a1eb",
"assets/images/background_img/business_woman_back_img.jpg": "8b22e079f9e66d4ec70ee63d1f796309",
"assets/images/background_img/advertising_background_img.jpg": "3704049d6db96605b00756577b4e4c47",
"assets/images/background_img/it_page_background_img.jpg": "206ebdc2b0a757fb10629b9928464ad2",
"assets/images/background_img/top_manager_background_img.jpg": "c51731c9626f973f049349dc1d0039d4",
"assets/images/background_img/background_scan_cv_page_img.jpg": "660659e702eebd971f38917c36b4c1f4",
"assets/images/background_img/logistics_background_img.jpg": "6597fffaea0087fb874e0fd5966a0178",
"assets/images/background_img/background_hr_consulting_img.jpg": "267de61928cedcec339f5054e98a9bd8",
"assets/images/background_img/building_background_img.jpg": "597461fd9724a9bdc03071b66490d3ea",
"assets/images/background_img/engineer_background_img.jpg": "ca779fd633064c1b6f43da3c4961febe",
"assets/images/background_img/meetup_background_img_2.jpg": "0144fa759b985dce473aef067243c84c",
"assets/images/background_img/outstaffing_background_img.jpg": "778ce71c799684f38fc51af67153656b",
"assets/images/background_img/meetup_background_img.jpg": "9d669392f994469e8b4b4c9059c3895c",
"assets/images/background_img/hr_page_background_img.jpg": "a7076e8b423da905f41b84be52958881",
"assets/images/background_img/people_in_office_back_img.jpg": "0043fd61228dd7c28fbd92620ab74aff",
"assets/images/background_img/background_employee_data_page_img.jpg": "328b5f42dc8d951437075b998ca55c88",
"assets/images/background_img/background_research_page_img.jpg": "b8cd7b48ac941498f44e64ecab15d8a8",
"assets/images/png/landscape_outline_icon.png": "1e10a146287a06d7146e866c49fc35ba",
"assets/AssetManifest.json": "2efbb41d7877d10aac9d091f58ccd7b9",
"assets/NOTICES": "8a059e69be63d622afe1897314c250bb",
"assets/FontManifest.json": "9d49e88cde2554e286f2bb7b60c152d5",
"assets/icons/arrow-dropright.png": "43f7e8f9be7f6a3f2c376a103e830cc8",
"assets/icons/ic_google.png": "8d61a1ae36dbd9d82305eab43cdb07fa",
"assets/icons/ic_linkedIn.png": "5b5479e865a403692971bdf905e09998",
"assets/icons/ic_dribbble.png": "ab2d08e303c4d0ee5467e4c272fdfd8b",
"assets/icons/ic_evernote.png": "19de46a5b8348420d099e78fde665955",
"assets/icons/ic_twitter.png": "83651994320dc0d3c7ad896ad058bb53",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/Nexa-Bold.otf": "c9f309b3d47969ecac64a77a6c672594",
"assets/fonts/MaterialIcons-Regular.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"assets/fonts/Nexa-Light.otf": "12108809f49c49bcdc126dcecc938761",
"assets/fonts/Product-Sans-Regular.ttf": "eae9c18cee82a8a1a52e654911f8fe83",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/fonts/Quicksand-Regular.otf": "3ce1580b66db6742cecd4b41519fb5f1",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
