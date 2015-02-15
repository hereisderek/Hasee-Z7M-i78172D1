/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 16 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of ssdt5.dat, Sun Feb 15 17:36:58 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001C47 (7239)
 *     Revision         0x01
 *     Checksum         0x2E
 *     OEM ID           "HASEE "
 *     OEM Table ID     "PARADISE"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */
//DefinitionBlock ("ssdt5.aml", "SSDT", 1, "HASEE ", "PARADISE", 0x00003000)
//DefinitionBlock ("ssdt_pr.aml", "SSDT", 1, "APPLE ", "CpuPm", 0x00009100)
DefinitionBlock ("ssdt5.aml", "SSDT", 1, "APPLE ", "CpuPm", 0x00009100)
{
    /*
     * iASL Warning: There were 7 external control methods found during
     * disassembly, but only 4 were resolved (3 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods.
     *
     * If necessary, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */


/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130210-00 [Feb 10 2013]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000036A (874)
 *     Revision         0x01
 *     Checksum         0x00
 *     OEM ID           "APPLE "
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00009100 (37120)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20130210 (538116624)
 */

    External (\_SB_.CPU0, DeviceObj)
    External (\_SB_.CPU1, DeviceObj)
    External (\_SB_.CPU2, DeviceObj)
    External (\_SB_.CPU3, DeviceObj)
    External (\_SB_.CPU4, DeviceObj)
    External (\_SB_.CPU5, DeviceObj)
    External (\_SB_.CPU6, DeviceObj)
    External (\_SB_.CPU7, DeviceObj)

    Scope (\_SB_.CPU0)
    {
        Method (_INI, 0, NotSerialized)
        {
            Store ("ssdtPRGen version: 9.1 / Mac OS X 10.10.2 (14C109)", Debug)
            Store ("target processor : i7-4720HQ", Debug)
            Store ("running processor: Intel(R) Core(TM) i5 CPU M 480 @ 2.67GHz", Debug)
            Store ("baseFrequency    : 800", Debug)
            Store ("frequency        : 2200", Debug)
            Store ("busFrequency     : 100", Debug)
            Store ("logicalCPUs      : 8", Debug)
            Store ("tdp              : 37", Debug)
            Store ("packageLength    : 25", Debug)
            Store ("turboStates      : 10", Debug)
            Store ("maxTurboFrequency: 3200", Debug)
            Store ("gIvyWorkAround   : 3", Debug)
            Store ("machdep.xcpm.mode: 0", Debug)
        }

        Name (APLF, Zero)
        Name (APSN, 0x0A)
        Name (APSS, Package (0x19)
        {
            /* High Frequency Modes (turbo) */
            Package (0x06) { 0x0C80, 0x009088, 0x0A, 0x0A, 0x2000, 0x2000 },
            Package (0x06) { 0x0C1C, 0x009088, 0x0A, 0x0A, 0x1F00, 0x1F00 },
            Package (0x06) { 0x0BB8, 0x009088, 0x0A, 0x0A, 0x1E00, 0x1E00 },
            Package (0x06) { 0x0B54, 0x009088, 0x0A, 0x0A, 0x1D00, 0x1D00 },
            Package (0x06) { 0x0AF0, 0x009088, 0x0A, 0x0A, 0x1C00, 0x1C00 },
            Package (0x06) { 0x0A8C, 0x009088, 0x0A, 0x0A, 0x1B00, 0x1B00 },
            Package (0x06) { 0x0A28, 0x009088, 0x0A, 0x0A, 0x1A00, 0x1A00 },
            Package (0x06) { 0x09C4, 0x009088, 0x0A, 0x0A, 0x1900, 0x1900 },
            Package (0x06) { 0x0960, 0x009088, 0x0A, 0x0A, 0x1800, 0x1800 },
            Package (0x06) { 0x08FC, 0x009088, 0x0A, 0x0A, 0x1700, 0x1700 },
            /* High Frequency Modes (non-turbo) */
            Package (0x06) { 0x0898, 0x009088, 0x0A, 0x0A, 0x1600, 0x1600 },
            Package (0x06) { 0x0834, 0x008865, 0x0A, 0x0A, 0x1500, 0x1500 },
            Package (0x06) { 0x07D0, 0x00806C, 0x0A, 0x0A, 0x1400, 0x1400 },
            Package (0x06) { 0x076C, 0x00789A, 0x0A, 0x0A, 0x1300, 0x1300 },
            Package (0x06) { 0x0708, 0x0070F0, 0x0A, 0x0A, 0x1200, 0x1200 },
            Package (0x06) { 0x06A4, 0x00696D, 0x0A, 0x0A, 0x1100, 0x1100 },
            Package (0x06) { 0x0640, 0x006211, 0x0A, 0x0A, 0x1000, 0x1000 },
            Package (0x06) { 0x05DC, 0x005ADC, 0x0A, 0x0A, 0x0F00, 0x0F00 },
            Package (0x06) { 0x0578, 0x0053CD, 0x0A, 0x0A, 0x0E00, 0x0E00 },
            Package (0x06) { 0x0514, 0x004CE4, 0x0A, 0x0A, 0x0D00, 0x0D00 },
            Package (0x06) { 0x04B0, 0x004621, 0x0A, 0x0A, 0x0C00, 0x0C00 },
            Package (0x06) { 0x044C, 0x003F83, 0x0A, 0x0A, 0x0B00, 0x0B00 },
            Package (0x06) { 0x03E8, 0x00390A, 0x0A, 0x0A, 0x0A00, 0x0A00 },
            Package (0x06) { 0x0384, 0x0032B6, 0x0A, 0x0A, 0x0900, 0x0900 },
            /* Low Frequency Mode */
            Package (0x06) { 0x0320, 0x002C87, 0x0A, 0x0A, 0x0800, 0x0800 }
        })

        Method (ACST, 0, NotSerialized)
        {
            Store ("Method CPU0.ACST Called", Debug)
            Store ("CPU0 C-States    : 29", Debug)

            /* Low Power Modes for CPU0 */
            Return (Package (0x06)
            {
                One,
                0x04,
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000000, // Address
                            0x01,               // Access Size
                            )
                    },
                    One,
                    Zero,
                    0x03E8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000010, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x03,
                    0xCD,
                    0x01F4
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000020, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x06,
                    0xF5,
                    0x015E
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000030, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x07,
                    0xF5,
                    0xC8
                }
            })
        }

        Method (_DSM, 4, NotSerialized)
        {
            Store ("Method CPU0._DSM Called", Debug)

            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                    0x03
                })
            }

            Return (Package (0x02)
            {
                "plugin-type",
                One
            })
        }
    }

    Scope (\_SB_.CPU1)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method CPU1.APSS Called", Debug)

            Return (\_SB_.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized)
        {
            Store ("Method CPU1.ACST Called", Debug)
            Store ("CPU1 C-States    : 7", Debug)

            /* Low Power Modes for CPU1 */
            Return (Package (0x05)
            {
                One,
                0x03,
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000000, // Address
                            0x01,               // Access Size
                            )
                    },
                    One,
                    0x03E8,
                    0x03E8
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000010, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x02,
                    0x94,
                    0x01F4
                },

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW,
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000030, // Address
                            0x03,               // Access Size
                            )
                    },
                    0x03,
                    0xC6,
                    0xC8
                }
            })
        }
    }

    Scope (\_SB_.CPU2)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method CPU2.APSS Called", Debug)

            Return (\_SB_.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB_.CPU1.ACST ()) }
    }

    Scope (\_SB_.CPU3)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method CPU3.APSS Called", Debug)

            Return (\_SB_.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB_.CPU1.ACST ()) }
    }

    Scope (\_SB_.CPU4)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method CPU4.APSS Called", Debug)

            Return (\_SB_.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB_.CPU1.ACST ()) }
    }

    Scope (\_SB_.CPU5)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method CPU5.APSS Called", Debug)

            Return (\_SB_.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB_.CPU1.ACST ()) }
    }

    Scope (\_SB_.CPU6)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method CPU6.APSS Called", Debug)

            Return (\_SB_.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB_.CPU1.ACST ()) }
    }

    Scope (\_SB_.CPU7)
    {
        Method (APSS, 0, NotSerialized)
        {
            Store ("Method CPU7.APSS Called", Debug)

            Return (\_SB_.CPU0.APSS)
        }

        Method (ACST, 0, NotSerialized) { Return (\_SB_.CPU1.ACST ()) }
    }
}
