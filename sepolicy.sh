# debug
magiskpolicy --live "dontaudit system_server system_file file write"
magiskpolicy --live "allow     system_server system_file file write"

# context
magiskpolicy --live "type vendor_overlay_file"
magiskpolicy --live "dontaudit vendor_overlay_file labeledfs filesystem associate"
magiskpolicy --live "allow     vendor_overlay_file labeledfs filesystem associate"
magiskpolicy --live "dontaudit init vendor_overlay_file dir relabelfrom"
magiskpolicy --live "allow     init vendor_overlay_file dir relabelfrom"
magiskpolicy --live "dontaudit init vendor_overlay_file file relabelfrom"
magiskpolicy --live "allow     init vendor_overlay_file file relabelfrom"

# dir
magiskpolicy --live "dontaudit { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } blkio_dev dir search"
magiskpolicy --live "allow     { system_app priv_app platform_app untrusted_app_29 untrusted_app_27 untrusted_app } blkio_dev dir search"

# file
magiskpolicy --live "dontaudit zygote device file write"
magiskpolicy --live "allow     zygote device file write"


