@ECHO OFF

IF %PROCESSOR_ARCHITECTURE%==x86 (
  SET APP_ROOT=%ADPROOT%\examples_perseus6010\perseus6010_mi125_record_playback\host\prj_win_rigo\Debug
) ELSE ( 
  SET APP_ROOT=%ADPROOT%\examples_perseus6010\perseus6010_mi125_record_playback\host\prj_win_rigo\x64\Debug
)   

REM Record file name
SET REC_FILENAME=G:\medidas_nutaq\record.bin
REM Perseus ip address
SET IP_ADDR_PERSEUS=192.168.0.101
REM 16 channels mode (bottom)
SET CHANNELSMODE=1
REM Internal 125MHz clk source
SET CLKSRC=0
REM Internal software trigger
SET TRIGSRC=0
REM Record size in number of samples per channel
SET SAMPLESPERCHANNEL=6553600
REM file where processed pulses will be stored
SET PULSE_FILENAME=G:\medidas_nutaq\pulses.bin
REM threshold value that will be used
SET THRESHOLD_VALUE=450
REM number of repetitions that will be executed, 99999 max
SET REPT_NUMB=560

%APP_ROOT%\perseus6010_mi125_record.exe %CHANNELSMODE% %TRIGSRC% %REC_FILENAME% %IP_ADDR_PERSEUS% %CLKSRC% %SAMPLESPERCHANNEL% %PULSE_FILENAME% %THRESHOLD_VALUE% %REPT_NUMB%
