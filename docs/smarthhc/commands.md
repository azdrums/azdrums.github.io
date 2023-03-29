# Commands

The following commands are described using [this naming convention][2].

| Command          | Description
| ---              | ---
| G `{f1|f2|f3}`   | Gets the value of the specified fixed pedal position.
| G i              | Gets the index of the last `MCP_out` array element value written to the digital potentiometer. **[1]**
| G m              | Gets the `ADC` logical value of the min (closed) pedal position.
| G M              | Gets the `ADC` logical value of the MAX (open) pedal position.
| G P              | Gets the `ADC` logical value of the current pedal position. It can be higher than MAX or lower than min.
| G r `{0-127}`    | Gets the value of the specified `MCP_out` array element index.
| G R              | Gets the `MCP_out` array.
| S `{f1|f2|f3}` N | Sets the value of the specified fixed pedal position.
| S m N            | Sets the `ADC` logical value of the min (closed) pedal position.
| S M N            | Sets the `ADC` logical value of the MAX (open) pedal position.
| S r `{0-127}` N  | Sets the value of the specified index of a `MCP_out` array element.
| W `{f1|f2|f3}`   | Writes the value of the specified fixed pedal position to EEPROM.
| W m              | Writes the values of the min and MAX pedal positions to EEPROM.
| W R              | Writes the `MCP_out` array to EEPROM.

* `{f1|f2|f3}` (0-127)
* `MCP_MAX` = 127
* `MCP_out` is char[`MCP_MAX`+1]
* `ADC` is 10bit (0-1023)

**[1]**: In the application UI it's represented by a moving knob on the X axis,
         mapped with the current pedal position.


[2]: https://www.ibm.com/docs/en/tslm/1.4.0?topic=cli-syntax-conventions
