if ($args.count -eq 0)
{
	write-output "Command line option is required:"
	write-output "add either -s (or --status), -e (or --enable), or -d (or --disable)"
	write-output "Exiting..."
	exit
}

if ($args.count -ge 2)
{
	write-output "Too many command line options"
	write-output "only provide one of -s (or --status), -e (or --enable), or -d (or --disable)"
	write-output "Exiting..."
	exit
}

if ($args.count -eq 1)
{
        $status = &"$PSScriptRoot\rdp_status.ps1"
 
        if ($args[0] -eq "--status" -OR $args[0] -eq "-s")
        {
            write-output $status

        }
        elseif ($args[0] -eq "--enable" -OR $args[0] -eq "-e")
        {
                if ($status -eq "RDP enabled")
                {
                    write-output "RDP already enabled."
                    write-output "exiting"
                    exit
                }

                write-output "Enabling rdp..."
                &"$PSScriptRoot\rdp_enable.ps1"
                &"$PSScriptRoot\rdp_status.ps1"
        }
        elseif ($args[0] -eq "--disable" -OR $args[0] -eq "-d" )
        {
                if ($status -ne "RDP enabled")
                {
                    write-output "RDP already disabled."
                    write-output "exiting"
                    exit
                }

                write-output "Disabling rdp..."
                &"$PSScriptRoot\rdp_disable.ps1"
                &"$PSScriptRoot\rdp_status.ps1"
        }
        else 
        {
            write-output "Invalid command line options provided"
            write-output "use either -s (or --status), -e (or --enable), or -d (or --disable)"
            write-output "Exiting..."
            exit


        }
}
exit

