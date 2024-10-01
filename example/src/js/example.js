import { WeScan } from 'capacitor-plugin-wescan';

window.testScan = async () => {
    await WeScan.scanDocument();
}

// window.testScan = async () => {
//   await CapacitorIOSDocumentScanner.initLicense({
//     license:
//       'your-license-here',
//   });
//   const { scannedImages } = await CapacitorIOSDocumentScanner.scanDocument();

//   if (scannedImages.length === 0) return;

//   var elem = document.createElement('img');
//   elem.setAttribute('src', `data:image/png;base64, ${scannedImages[0]}`);
//   elem.setAttribute('width', '380');
//   elem.setAttribute('alt', 'Scanned Document');
//   document.getElementById('demo-main').appendChild(elem);
// };
