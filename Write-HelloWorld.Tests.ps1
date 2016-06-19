$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace('.Tests.', '.')
. "$here\$sut"

Describe 'Write-HelloWorld' {
    It 'The function should exist' {
        Get-Command -Name Write-HelloWorld -ErrorAction SilentlyContinue |
        Should Be $true 
    }
}
