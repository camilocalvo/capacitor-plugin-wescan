package com.camilocalvoalcaniz.wescan;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "WeScan")
public class WeScanPlugin extends Plugin {

    @PluginMethod
    public void scanDocument(PluginCall call) {
        call.reject("Not implemented on Android");
    }
}
