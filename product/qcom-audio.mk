# Audio calibration database
ACDB_TARGET ?= MTP

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdbdata/$(ACDB_TARGET)_Bluetooth_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/$(ACDB_TARGET)_General_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/$(ACDB_TARGET)_Global_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/$(ACDB_TARGET)_Handset_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/$(ACDB_TARGET)_Hdmi_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/$(ACDB_TARGET)_Headset_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/$(ACDB_TARGET)_Speaker_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Speaker_cal.acdb

PRODUCT_PACKAGES += \
    audiod \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessingdescriptors \
    libqcomvoiceprocessing

# speaker protection
PRODUCT_PROPERTY_OVERRIDES += \
    persist.speaker.prot.enable=false \
    persist.spkr.cal.duration=0

# surround sound recording
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    persist.audio.ssr.3mic=false

# offload settings
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.gapless.enabled=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.video=true \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.multiple.enabled=false \
    audio.deep_buffer.media=true

# voip
PRODUCT_PROPERTY_OVERRIDES += \
    use.voice.path.for.pcm.voip=true
