// Lenovo V330-15IKB Keyboard Map

DefinitionBlock ("", "SSDT", 2, "V330", "_KBD", 0)
{
    External (_SB.PCI0.LPCB.EC0, DeviceObj)
    External (_SB.PCI0.LPCB.KBD0, DeviceObj)
    External (_SB.PCI0.LPCB.EC0.XQ1C, MethodObj)
    External (_SB.PCI0.LPCB.EC0.XQ1D, MethodObj)
    External (_SB.PCI0.LPCB.EC0.XQ3D, MethodObj)
    External (_SB.PCI0.LPCB.EC0.XQ28, MethodObj)
    External (_SB.PCI0.LPCB.EC0.XQ2E, MethodObj)
    
    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q1C, 0, NotSerialized) // (F15) Brightness Up
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD0, 0x0406)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ1C ()
            }
        }
        Method (_Q1D, 0, NotSerialized) // (F14) Brightness Down
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD0, 0x0405)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ1D ()
            }
        }
        Method (_Q3D, 0, NotSerialized) // (F4) Mic Mute - Siri
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD0, 0x033E)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ3D ()
            }
        }
        Method (_Q28, 0, NotSerialized) // (F17) Airplane Mode - Do not Disturb
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD0, 0x0368)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ28 ()
            }
        }
        Method (_Q2E, 0, NotSerialized) // (F18) Lock - System Preferences...
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD0, 0x036A)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ2E ()
            }
        }
    }

    Scope (_SB.PCI0.LPCB.KBD0)
    {
        Name (RMCF, Package ()
        {
            "Keyboard", 
            Package ()
            {
                "Breakless PS2", Package()
                {
                    Package(){},
                    "e06a", // Fn+F9
                    "e06b", // Fn+F10
                    "e02e", // Volume Down
                    "e030", // Volume Up

                },
                "MaximumMacroTime", 25000000,
                "Macro Inversion", Package()
                {
                    Package(){},
                    // Fn+F9
                    Buffer() { 0xff, 0xff, 0x02, 0x6a, 0x00, 0x00, 0x00, 0x00, 0x02, 0x5b, 0x01, 0x26 },
                    Buffer() { 0xff, 0xff, 0x02, 0xea, 0x00, 0x00, 0x00, 0x00, 0x01, 0x99, 0x02, 0xdb },
                    // Fn+F10
                    Buffer() { 0xff, 0xff, 0x02, 0x6b, 0x00, 0x00, 0x00, 0x00, 0x02, 0x5b, 0x01, 0x19 },
                    Buffer() { 0xff, 0xff, 0x02, 0xeb, 0x00, 0x00, 0x00, 0x00, 0x01, 0x99, 0x02, 0xdb },
                },
                "Custom ADB Map", Package()
                {
                    Package(){},
                    "e06a=4f", // (F18) Lock - System Preferences...
                    "e06b=70", // Video Mirror
                },
                "Custom PS2 Map", 
                Package ()
                {
                    Package (){}, 
                    "e037=64" // (F13) PrtSc - Save selected area as screenshot
                }
            }
        })
    }
}
