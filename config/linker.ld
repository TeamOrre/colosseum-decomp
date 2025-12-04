/* Linker script for Pokémon Colosseum Decomp
 * Placeholder – real sections will be added once build system is ready.
 */

SECTIONS
{
    /* Text/code section */
    .text :
    {
        *(.text*)
    }

    /* Read-only data */
    .rodata :
    {
        *(.rodata*)
    }

    /* Data */
    .data :
    {
        *(.data*)
    }

    /* BSS */
    .bss :
    {
        *(.bss*)
        *(COMMON)
    }
}
