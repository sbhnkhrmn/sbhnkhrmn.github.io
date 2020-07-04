const VERSION_CHECK_SUPPORTED = "UYUMLU";
const VERSION_CHECK_UNSUPPORTED = "UYUMSUZ";

(function(document) {

    "use strict";

    function parseVersionString(version) {

        var bits = version.split(".");
        return [bits[0], bits[1] ? bits[1] : 0, bits[2] ? bits[2] : 0];
    }

    function compareVersions(ours, theirs) {
        for (var i = 0; i < 4; i++) {
            var a = Number(theirs[i]),
                b = Number(ours[i]);

            if (a > b) { return 1; } else if (a < b) { return -1; }
        }
        return 0;
    }

    var prerequisite = document.querySelector(".prerequisite"),
        version = navigator.appVersion.match(/CPU (iPhone )?OS (\d+)_(\d+)(_(\d+))? like/i);

    if (!prerequisite || !version) { return; }

    var osVersion = [version[2], version[3], version[5] ? version[5] : 0],

        osString = osVersion[0] + "." + osVersion[1] + (osVersion[2] && osVersion[2] != 0 ? "." + osVersion[2] : ""),

        minString = prerequisite.dataset.minIos,
        maxString = prerequisite.dataset.maxIos,
        minVersion = parseVersionString(minString),
        maxVersion = maxString ? parseVersionString(maxString) : null,
        message = VERSION_CHECK_SUPPORTED.replace("%s", osString),
        isBad = false;

    if (compareVersions(minVersion, osVersion) == -1) {
        message = VERSION_CHECK_UNSUPPORTED.replace("%s", minString).replace("%s", maxString);
        isBad = true;
    } else if (maxVersion != null && compareVersions(osVersion, maxVersion) == -1) {
        message = VERSION_CHECK_UNSUPPORTED.replace("%s", minString).replace("%s", maxString);
        isBad = true;
    }

    var i = 0;

    prerequisite.querySelector("p").innerHTML = message;

    if (isBad) {
        prerequisite.querySelector("td").style.backgroundColor = "#DC143C";
    } else {
        prerequisite.querySelector("td").style.backgroundColor = "#c1e317";
    }
}(document));