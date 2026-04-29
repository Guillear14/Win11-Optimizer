Add-Type -AssemblyName PresentationFramework

$xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Windows 11 Optimizer Pro" Height="620" Width="800" 
        WindowStartupLocation="CenterScreen" FontFamily="Segoe UI Variable, Segoe UI, Arial"
        WindowStyle="None" AllowsTransparency="True" Background="Transparent">
    <Window.Resources>
        <Style TargetType="Button">
            <Setter Property="Background" Value="#0078D4"/>
            <Setter Property="Foreground" Value="White"/>
            <Setter Property="Padding" Value="15,10"/>
            <Setter Property="BorderThickness" Value="0"/>
            <Setter Property="FontWeight" Value="SemiBold"/>
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="Button">
                        <Border Background="{TemplateBinding Background}" CornerRadius="8" Padding="{TemplateBinding Padding}">
                            <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                        </Border>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
            <Style.Triggers>
                <Trigger Property="IsMouseOver" Value="True">
                    <Setter Property="Background" Value="#2B88D8"/>
                </Trigger>
                <Trigger Property="IsPressed" Value="True">
                    <Setter Property="Background" Value="#005A9E"/>
                </Trigger>
                <Trigger Property="IsEnabled" Value="False">
                    <Setter Property="Background" Value="#555555"/>
                    <Setter Property="Foreground" Value="#888888"/>
                </Trigger>
            </Style.Triggers>
        </Style>
        <Style TargetType="CheckBox">
            <Setter Property="Foreground" Value="#E0E0E0"/>
            <Setter Property="FontSize" Value="14"/>
            <Setter Property="Margin" Value="0,8,0,8"/>
            <Setter Property="Cursor" Value="Hand"/>
        </Style>
    </Window.Resources>
    
    <Border Background="#181818" CornerRadius="12" BorderBrush="#333333" BorderThickness="1">
        <Grid>
            <Grid.RowDefinitions>
                <RowDefinition Height="50"/>
                <RowDefinition Height="*"/>
                <RowDefinition Height="85"/>
            </Grid.RowDefinitions>
            
            <!-- Custom Title Bar -->
            <Grid Grid.Row="0" Background="#202020" Name="TitleBar">
                <Grid.ColumnDefinitions>
                    <ColumnDefinition Width="*"/>
                    <ColumnDefinition Width="Auto"/>
                </Grid.ColumnDefinitions>
                <TextBlock Grid.Column="0" Text="⚡ Windows 11 Optimizer Pro" Foreground="White" FontWeight="Bold" FontSize="16" VerticalAlignment="Center" Margin="20,0,0,0"/>
                <Button Name="btnClose" Content="✕" Grid.Column="1" Width="50" Background="Transparent" Foreground="#888888" FontSize="14" Cursor="Hand">
                    <Button.Style>
                        <Style TargetType="Button">
                            <Setter Property="Template">
                                <Setter.Value>
                                    <ControlTemplate TargetType="Button">
                                        <Border Background="{TemplateBinding Background}" CornerRadius="0,12,0,0">
                                            <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                                        </Border>
                                    </ControlTemplate>
                                </Setter.Value>
                            </Setter>
                            <Style.Triggers>
                                <Trigger Property="IsMouseOver" Value="True">
                                    <Setter Property="Background" Value="#E81123"/>
                                    <Setter Property="Foreground" Value="White"/>
                                </Trigger>
                            </Style.Triggers>
                        </Style>
                    </Button.Style>
                </Button>
            </Grid>
            
            <!-- Content -->
            <Grid Grid.Row="1" Margin="30,20,30,0">
                <Grid.ColumnDefinitions>
                    <ColumnDefinition Width="*"/>
                    <ColumnDefinition Width="20"/>
                    <ColumnDefinition Width="*"/>
                </Grid.ColumnDefinitions>
                
                <!-- Left Column -->
                <StackPanel Grid.Column="0">
                    <TextBlock Text="Limpieza del Sistema" FontSize="18" FontWeight="Bold" Margin="0,0,0,10" Foreground="#0078D4"/>
                    <Border Background="#252525" CornerRadius="8" Padding="15">
                        <StackPanel>
                            <CheckBox Name="chkTempFiles" Content="Limpiar Archivos Temporales (Temp)" IsChecked="True"/>
                            <CheckBox Name="chkPrefetch" Content="Limpiar Prefetch (Mejora arranque)" IsChecked="True"/>
                            <CheckBox Name="chkUpdateCache" Content="Limpiar Caché de Windows Update" IsChecked="True"/>
                            <CheckBox Name="chkRecycleBin" Content="Vaciar Papelera de Reciclaje" IsChecked="False"/>
                        </StackPanel>
                    </Border>
                    
                    <TextBlock Text="Rendimiento del Sistema" FontSize="18" FontWeight="Bold" Margin="0,20,0,10" Foreground="#0078D4"/>
                    <Border Background="#252525" CornerRadius="8" Padding="15">
                        <StackPanel>
                            <CheckBox Name="chkPowerPlan" Content="Habilitar Plan 'Máximo Rendimiento'" IsChecked="True"/>
                            <CheckBox Name="chkDisableHibernation" Content="Desactivar Hibernación (Libera GBs)" IsChecked="False"/>
                            <CheckBox Name="chkSysMain" Content="Desactivar SysMain/Superfetch" IsChecked="False" ToolTip="Solo recomendado para discos SSD o si el disco está al 100%"/>
                        </StackPanel>
                    </Border>
                </StackPanel>
                
                <!-- Right Column -->
                <StackPanel Grid.Column="2">
                    <TextBlock Text="Privacidad y Telemetría" FontSize="18" FontWeight="Bold" Margin="0,0,0,10" Foreground="#0078D4"/>
                    <Border Background="#252525" CornerRadius="8" Padding="15">
                        <StackPanel>
                            <CheckBox Name="chkDisableTelemetry" Content="Desactivar Telemetría de Windows" IsChecked="True"/>
                            <CheckBox Name="chkDisableCortana" Content="Desactivar Cortana" IsChecked="False"/>
                            <CheckBox Name="chkDisableLocation" Content="Desactivar Rastreo de Ubicación" IsChecked="True"/>
                            <CheckBox Name="chkDisableXbox" Content="Desactivar Xbox Game Bar" IsChecked="False" ToolTip="Desactivar si no usas funciones de grabación de juegos"/>
                        </StackPanel>
                    </Border>
                    
                    <TextBlock Text="Red e Internet" FontSize="18" FontWeight="Bold" Margin="0,20,0,10" Foreground="#0078D4"/>
                    <Border Background="#252525" CornerRadius="8" Padding="15">
                        <StackPanel>
                            <CheckBox Name="chkFlushDNS" Content="Limpiar Caché DNS (FlushDNS)" IsChecked="True"/>
                            <CheckBox Name="chkOptimizeNetwork" Content="Optimizar Ajustes TCP/IP" IsChecked="True"/>
                        </StackPanel>
                    </Border>
                </StackPanel>
            </Grid>
            
            <!-- Footer -->
            <Border Grid.Row="2" Background="#202020" CornerRadius="0,0,12,12" Padding="30,0">
                <Grid>
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="*"/>
                        <ColumnDefinition Width="Auto"/>
                    </Grid.ColumnDefinitions>
                    
                    <StackPanel VerticalAlignment="Center">
                        <TextBlock Name="txtStatus" Text="Selecciona las opciones que deseas y haz clic en Optimizar." Foreground="#AAAAAA" FontSize="14" TextWrapping="Wrap"/>
                        <ProgressBar Name="pbProgress" Height="6" Margin="0,10,20,0" Maximum="100" Value="0" Foreground="#0078D4" Background="#333333" BorderThickness="0" CornerRadius="3"/>
                    </StackPanel>
                    
                    <Button Name="btnOptimize" Content="🚀 OPTIMIZAR AHORA" Grid.Column="1" FontSize="16" Width="220" Height="45" Cursor="Hand"/>
                </Grid>
            </Border>
        </Grid>
    </Border>
</Window>
"@

$reader = (New-Object System.Xml.XmlNodeReader([xml]$xaml))
$Window = [Windows.Markup.XamlReader]::Load($reader)

# Support moving the window by dragging the title bar
$TitleBar = $Window.FindName("TitleBar")
$TitleBar.Add_MouseLeftButtonDown({
    $Window.DragMove()
})

# Botones
$btnClose = $Window.FindName("btnClose")
$btnOptimize = $Window.FindName("btnOptimize")

# UI Elements
$txtStatus = $Window.FindName("txtStatus")
$pbProgress = $Window.FindName("pbProgress")

# Checkboxes
$chkTempFiles = $Window.FindName("chkTempFiles")
$chkPrefetch = $Window.FindName("chkPrefetch")
$chkUpdateCache = $Window.FindName("chkUpdateCache")
$chkRecycleBin = $Window.FindName("chkRecycleBin")
$chkPowerPlan = $Window.FindName("chkPowerPlan")
$chkDisableHibernation = $Window.FindName("chkDisableHibernation")
$chkSysMain = $Window.FindName("chkSysMain")
$chkDisableTelemetry = $Window.FindName("chkDisableTelemetry")
$chkDisableCortana = $Window.FindName("chkDisableCortana")
$chkDisableLocation = $Window.FindName("chkDisableLocation")
$chkDisableXbox = $Window.FindName("chkDisableXbox")
$chkFlushDNS = $Window.FindName("chkFlushDNS")
$chkOptimizeNetwork = $Window.FindName("chkOptimizeNetwork")

$btnClose.Add_Click({
    $Window.Close()
})

$btnOptimize.Add_Click({
    $btnOptimize.IsEnabled = $false
    $txtStatus.Text = "Optimizando el sistema, por favor espera..."
    $txtStatus.Foreground = "#FFA500" # Naranja
    $pbProgress.Value = 10
    
    # Do work in background to not freeze UI, but in PowerShell WPF, 
    # the easiest way without complex runspaces is just DoEvents trick or quick synchronous.
    # To keep it simple and responsive, we'll do quick synchronous with UI updates.
    
    Function Update-UI ([string]$message, [int]$progress) {
        $txtStatus.Text = $message
        $pbProgress.Value = $progress
        $Dispatcher = [System.Windows.Threading.Dispatcher]::CurrentDispatcher
        [System.Windows.Threading.DispatcherFrame] $frame = New-Object System.Windows.Threading.DispatcherFrame
        $Dispatcher.BeginInvoke("Background", [action] { $frame.Continue = $false }) | Out-Null
        [System.Windows.Threading.Dispatcher]::PushFrame($frame)
    }

    try {
        # 1. Archivos Temporales
        if ($chkTempFiles.IsChecked) {
            Update-UI "Limpiando Archivos Temporales..." 20
            Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
            Remove-Item -Path "$env:WINDIR\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
        }
        
        # 2. Prefetch
        if ($chkPrefetch.IsChecked) {
            Update-UI "Limpiando Prefetch..." 30
            Remove-Item -Path "$env:WINDIR\Prefetch\*" -Recurse -Force -ErrorAction SilentlyContinue
        }
        
        # 3. Caché Update
        if ($chkUpdateCache.IsChecked) {
            Update-UI "Limpiando Caché de Windows Update..." 40
            Stop-Service -Name wuauserv -Force -ErrorAction SilentlyContinue
            Remove-Item -Path "$env:WINDIR\SoftwareDistribution\Download\*" -Recurse -Force -ErrorAction SilentlyContinue
            Start-Service -Name wuauserv -ErrorAction SilentlyContinue
        }
        
        # 4. Papelera
        if ($chkRecycleBin.IsChecked) {
            Update-UI "Vaciando Papelera de Reciclaje..." 50
            Clear-RecycleBin -Force -ErrorAction SilentlyContinue
        }

        # 5. Plan de Energía
        if ($chkPowerPlan.IsChecked) {
            Update-UI "Activando Plan de Máximo Rendimiento..." 55
            # Habilita el plan Ultimate Performance (si no está, lo crea y lo activa)
            $plan = powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
            if ($plan -match "GUID.*:\s*([a-fA-F0-9-]+)") {
                powercfg -setactive $matches[1]
            }
        }

        # 6. Hibernación
        if ($chkDisableHibernation.IsChecked) {
            Update-UI "Desactivando Hibernación..." 60
            powercfg.exe /hibernate off
        }

        # 7. SysMain
        if ($chkSysMain.IsChecked) {
            Update-UI "Desactivando SysMain..." 65
            Stop-Service -Name SysMain -Force -ErrorAction SilentlyContinue
            Set-Service -Name SysMain -StartupType Disabled -ErrorAction SilentlyContinue
        }

        # 8. Telemetría
        if ($chkDisableTelemetry.IsChecked) {
            Update-UI "Desactivando Telemetría..." 75
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Value 0 -ErrorAction SilentlyContinue
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Value 0 -ErrorAction SilentlyContinue
        }

        # 9. Cortana
        if ($chkDisableCortana.IsChecked) {
            Update-UI "Desactivando Cortana..." 80
            if (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
                New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
            }
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Value 0 -ErrorAction SilentlyContinue
        }

        # 10. Ubicación
        if ($chkDisableLocation.IsChecked) {
            Update-UI "Desactivando Rastreo de Ubicación..." 85
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" -Name "DisableLocation" -Value 1 -ErrorAction SilentlyContinue
        }

        # 11. Xbox Game Bar
        if ($chkDisableXbox.IsChecked) {
            Update-UI "Desactivando Xbox Game Bar..." 90
            Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_Enabled" -Value 0 -ErrorAction SilentlyContinue
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR" -Name "AllowGameDVR" -Value 0 -ErrorAction SilentlyContinue
        }

        # 12. DNS y Red
        if ($chkFlushDNS.IsChecked) {
            Update-UI "Limpiando Caché DNS..." 95
            ipconfig /flushdns | Out-Null
        }
        if ($chkOptimizeNetwork.IsChecked) {
            Update-UI "Optimizando Configuración TCP/IP..." 98
            netsh int tcp set global autotuninglevel=normal | Out-Null
        }

        Update-UI "¡Sistema optimizado con éxito! Se recomienda reiniciar." 100
        $txtStatus.Foreground = "#00FF00" # Verde
    } catch {
        Update-UI "Error durante la optimización: $($_.Exception.Message)" 0
        $txtStatus.Foreground = "#FF0000" # Rojo
    }
    
    $btnOptimize.IsEnabled = $true
})

$Window.ShowDialog() | Out-Null
