# navigation
function gotorepdir { set-location "C:\Users\hbse\Dropbox\ucsd\mattarlab\replay" }
function gotonmldir { set-location "C:\Users\hbse\Dropbox\ucsd\neuromllab\" }
function gotojdir { set-location "C:\Users\hbse\Dropbox\personal\journal\" }

new-alias repdir gotorepdir
new-alias nmldir gotonmldir
new-alias jdir gotojdir
new-alias jlb jupyter-lab

# function alias
function gitstatus { git status }

new-alias gst gitstatus

# https://superuser.com/questions/1844322/how-can-i-have-a-colored-powershell-prompt-and-still-have-conda-env-label
#function prompt {
#	$envMatch = conda env list | Select-String -Pattern '[a-z ]* \*'  # find activated environment, it has an asterisk after its name
#	if($envMatch -ne $null){
#	    $envName = "(" + ($envMatch.Matches[0].Value | Select-String -Pattern '[a-z]*').Matches[0].Value + ") "
#	}
#	else{  # if no environment is activated
#	    $envName = ""
#	}
#	$promptColor = "Green"  # Change color as desired
#
#	Write-Host ("$envName" + "PS ") -NoNewline -ForegroundColor $promptColor
#	return "$($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
#	#return "$("$envName" + "PS ")$($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
#
#}
# more about prompt: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_prompts?view=powershell-7.4&viewFallbackFrom=powershell-7
# https://superuser.com/questions/1259900/how-to-colorize-the-powershell-prompt and https://superuser.com/questions/1601031/powershell-prompt-color-issue

function Prompt {
   if ($Env:CONDA_PROMPT_MODIFIER) {
      "$Env:CONDA_PROMPT_MODIFIER$(pwd) " | Write-Host -NoNewline -ForegroundColor "Green"
   }
   CondaPromptBackup;
}

