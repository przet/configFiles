// From answers found in http://stackoverflow.com/questions/4806575/how-do-i-use-rundll32-to-swapmousebutton
// This script is directly https://superuser.com/questions/205861/keyboard-shortcut-to-swap-mouse-buttons, user
//  mvik.

using System.Runtime.InteropServices;
using System;

class SwapMouse
{
    [DllImport("user32.dll")]
    public static extern Int32 SwapMouseButton(Int32 bSwap);

    static void Main(string[] args)
    {
        int rightButtonIsAlreadyPrimary = SwapMouseButton(1);
        if (rightButtonIsAlreadyPrimary !=0)
        {
            // Make the left mousebutton primary
            SwapMouseButton(0);
        }
    }
}

