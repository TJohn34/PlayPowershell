#Generated Form Function 
function GenerateForm { 

#region Import the Assemblies 
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null 
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null 
#endregion 

#region Generated Form Objects 
$form1 = New-Object System.Windows.Forms.Form 
$button1 = New-Object System.Windows.Forms.Button 
$checkBox1 = New-Object System.Windows.Forms.CheckBox 
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState 
#endregion Generated Form Objects 

#---------------------------------------------- 
#Generated Event Script Blocks 
#---------------------------------------------- 
#Provide Custom Code for events specified in PrimalForms. 
$button1_OnClick= 
{ 
#TODO: Place custom script here 
if($DisableAdmin.CheckState -eq "1") {$LocalAdministrator = $(Get-WmiObject –Query ‘Select * from Win32_UserAccount Where (LocalAccount="True" and SID like "%-500")’) 
$LocalAdministrator.Disabled = $True 
$LocalAdministrator.Put()
}
} 

$OnLoadForm_StateCorrection= 
{#Correct the initial state of the form to prevent the .Net maximized form issue 
$form1.WindowState = $InitialFormWindowState 
} 

#---------------------------------------------- 
#region Generated Form Code 
$form1.Text = "Primal Form" 
$form1.Name = "form1" 
$form1.DataBindings.DefaultDataSourceUpdateMode = 0 
$System_Drawing_Size = New-Object System.Drawing.Size 
$System_Drawing_Size.Width = 877 
$System_Drawing_Size.Height = 642 
$form1.ClientSize = $System_Drawing_Size 

$button1.TabIndex = 1 
$button1.Name = "button1" 
$System_Drawing_Size = New-Object System.Drawing.Size 
$System_Drawing_Size.Width = 145 
$System_Drawing_Size.Height = 37 
$button1.Size = $System_Drawing_Size 
$button1.UseVisualStyleBackColor = $True 

$button1.Text = "button1" 

$System_Drawing_Point = New-Object System.Drawing.Point 
$System_Drawing_Point.X = 18 
$System_Drawing_Point.Y = 503 
$button1.Location = $System_Drawing_Point 
$button1.DataBindings.DefaultDataSourceUpdateMode = 0 
$button1.add_Click($button1_OnClick) 

$form1.Controls.Add($button1) 


$checkBox1.UseVisualStyleBackColor = $True 
$System_Drawing_Size = New-Object System.Drawing.Size 
$System_Drawing_Size.Width = 286 
$System_Drawing_Size.Height = 54 
$checkBox1.Size = $System_Drawing_Size 
$checkBox1.TabIndex = 0 
$checkBox1.Text = "checkBox1" 
$System_Drawing_Point = New-Object System.Drawing.Point 
$System_Drawing_Point.X = 18 
$System_Drawing_Point.Y = 26 
$checkBox1.Location = $System_Drawing_Point 
$checkBox1.DataBindings.DefaultDataSourceUpdateMode = 0 
$checkBox1.Name = "checkBox1" 


$form1.Controls.Add($checkBox1) 

#endregion Generated Form Code 

#Save the initial state of the form 
$InitialFormWindowState = $form1.WindowState 
#Init the OnLoad event to correct the initial state of the form 
$form1.add_Load($OnLoadForm_StateCorrection) 
#Show the Form 
$form1.ShowDialog()| Out-Null 

} #End Function 

#Call the Function 
GenerateForm 