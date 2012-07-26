"use strict";

Cu.import("resource://gre/modules/XPCOMUtils.jsm", modules);

const progressListener = {
    QueryInterface: XPCOMUtils.generateQI([Ci.nsISupportsWeakReference, Ci.nsIWebProgressListener]),

    onSecurityChange: function onSecurityChange(webProgress, request, state) {
        if (state & Ci.nsIWebProgressListener.STATE_IS_INSECURE)
            highlight.set("StatusLine", "");
        else if (state & Ci.nsIWebProgressListener.STATE_IS_BROKEN)
            highlight.set("StatusLine", "color: white; background: darkred");
        else if (state & Ci.nsIWebProgressListener.STATE_IDENTITY_EV_TOPLEVEL)
            highlight.set("StatusLine", "color: white; background: darkgreen");
        else if (state & Ci.nsIWebProgressListener.STATE_SECURE_HIGH)
            highlight.set("StatusLine", "color: white; background: darkblue");
    }
};

config.browser.addProgressListener(progressListener, Ci.nsIWebProgress.NOTIFY_SECURITY);
