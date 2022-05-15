AUTHOR = "Ahmad Moutraji"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI_append = " \
        file://init-script.sh \
"
S="${WORKDIR}"

inherit update-rc.d
DEPENDS_append = " update-rc.d-native"
INITSCRIPT_NAME = "init-script.sh"
INITSCRIPT_PARAMS = "defaults"

do_install_append() {
    install -d ${D}/${sysconfdir}/init.d
	install -m 0755 ${WORKDIR}/init-script.sh ${D}${sysconfdir}/init.d/
    update-rc.d -r ${D} init-script.sh defaults
}

FILES_${PN} += "${sysconfdir} "