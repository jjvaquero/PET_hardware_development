######################################################
#
# XPS Tcl API script generated by PlanAhead
#
######################################################

proc _main_ {} {
  cd "C:/Users/rchil/Desktop/Artemis/Software_desarrollado/Zynq/XApp_v2/XApp_v2.srcs/sources_1/edk/module_1"
  if { [ catch {xload xmp module_1.xmp} result ] } {
    exit 10
  }
  # Set the export bmm/bit 0
  xset sdk_export_bmm_bit 0
  # Set the export dir
  xset sdk_export_dir C:/Users/rchil/Desktop/Artemis/Software_desarrollado/Zynq/XApp_v2/XApp_v2.sdk/SDK/SDK_Export
  if { [catch {run exporttosdk} result] } {
    return -1
  }
  return $result
}

# Export Hardware Data
if { [catch {_main_} result] } {
  exit -1
}

# Check return status and exit
if { [string length $result] == 0 } {
  exit 0
} else {
  exit $result
}
