// Lenovo V330-15IKB Master SSDT

DefinitionBlock("", "SSDT", 2, "V330", "_V330", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-XOSI.dsl"
    #include "SSDT-EC.dsl"
    #include "SSDT-USBX.dsl"
    #include "SSDT-USB.dsl"
    #include "SSDT-KBD.dsl"
    #include "SSDT-I2C.dsl"
    #include "SSDT-DDGPU.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-CX20752.dsl"
}
//EOF
