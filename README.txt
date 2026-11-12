RECALL CROSS-PLATFORM

Files
- index.html: the flashcard application
- manifest.webmanifest: installable app metadata
- service-worker.js: offline cache
- icon.svg: app icon

QUICK TEST
1. Extract this ZIP.
2. Open index.html in a browser.
3. Select Open deck and choose a JSON flashcard file.

IMPORTANT ABOUT INSTALLATION AND OFFLINE USE
For proper PWA installation and service-worker offline support, publish the folder to an HTTPS website.
Opening index.html directly still supports basic flashcard study, importing JSON decks and local progress, but browser installation and service-worker offline caching require HTTPS (localhost is also supported for testing).

WINDOWS 11
1. Open the HTTPS app address in Microsoft Edge or Chrome.
2. Use the browser's Install app option, or create a shortcut.
3. Launch Recall from the Start menu or desktop.

IPAD
1. Open the HTTPS app address in Safari.
2. Tap Share.
3. Choose Add to Home Screen.
4. Open Recall from the Home Screen.
5. Load your JSON decks from Files.

DECK JSON FORMAT
{
  "title": "OCR Computer Science - Computational Thinking",
  "cards": [
    {
      "front": "What is abstraction?",
      "back": "Removing unnecessary detail to focus on the important features."
    }
  ]
}

You can include an optional id field on each card. Each card needs front and back.

PROGRESSS
Review progress is saved locally in each browser/device. Use Export progress to back it up.
This first version does not synchronise progress automatically between iPad and Windows.
