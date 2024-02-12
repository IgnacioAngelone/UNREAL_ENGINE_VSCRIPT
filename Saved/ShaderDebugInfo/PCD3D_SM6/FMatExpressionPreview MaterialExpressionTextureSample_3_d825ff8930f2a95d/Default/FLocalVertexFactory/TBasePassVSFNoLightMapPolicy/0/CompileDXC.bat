@ECHO OFF
SET DXC="D:\Programas\UE_5.3\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "D:\Programas\UE_5.3\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -Zpr -O3 -auto-binding-space 0 -Wno-parentheses-equality -disable-lifetime-markers -T vs_6_6 -E Main -Fc BasePassVertexShader.d3dasm -Fo BasePassVertexShader.dxil BasePassVertexShader
:END
PAUSE
