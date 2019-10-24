
"""
    onClose!(behavior::Symbol)

Set behavior on disconnect from device.
Options:
- `:run` - Allows state to continue after disconnect
- `:stop` - Default
- `:shutdown`
"""
function onClose!(behavior::Symbol)
    if behavior == :run
        val = Cint(0)
    elseif behavior == :stop
        val = Cint(1)
    elseif behavior == :shutdown
        val = Cint(2)
    else
        error("Behavior symbol `$behavior` not recognised")
    end
    FDwfParamSet(DwfParamOnClose, val)
    return nothing
end
