import { WeScan } from 'capacitor-plugin-wescan';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    WeScan.echo({ value: inputValue })
}
