@echo off
:: @file    createfile.bat
:: @author  chenguanren
:: @version V1.0.0
:: @date    2018-10-27
:: @brief	自动生成一个Doxygen风格的.c和.h文件
::::::::::::::::::::::::::::::::::::::::::::::::::::

::判断参数
if "%3" NEQ "" (echo "Enter two parameters, the first is thefile name and the second is the brief comment for the file.") & goto :finish
::if {%3} NEQ {} goto :finish

if "%1" == "-h" (echo "Instructions for use") & (echo "Parameter 1: File name") & (echo "Parameter 2: Brief comment") & goto :finish
::if "%1" == "-h" goto :finish

set cfile=0
::1.2 创建文件
if exist %1.c (echo "%1.c file existed") else (echo  " "> %1.c ) & (set cfile=1)

set hfile=0
if exist %1.h (echo "%1.h file existed") else (echo  " "> %1.h ) & (set hfile=1)

set CURRENT_DATE=%date:~0,4%-%date:~5,2%-%date:~8,2% 
::echo %CURRENT_DATE%

::echo %USERDOMAIN%
set name=%USERDOMAIN%
for %%i in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do call set name=%%name:%%i=%%i%%

set UPPERCASE=%1
for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do call set UPPERCASE=%%UPPERCASE:%%i=%%i%%

echo %name%
::echo %UPPERCASE%
::echo %cfile%
::echo %hfile%

if %cfile% == 0 (goto :writehfile)

(echo /**) > %1.c &
(echo   ******************************************************************************) >> %1.c &
(echo   * @file    %1.c) >> %1.c &
(echo   * @author  %name%) >> %1.c &
(echo   * @version V1.0.0) >> %1.c &
(echo   * @date    %CURRENT_DATE%) >> %1.c &
(echo   * @brief   %2) >> %1.c &
(echo   ******************************************************************************) >> %1.c &
(echo   * @attention) >> %1.c &
(echo   *) >> %1.c &
(echo   *) >> %1.c &
(echo   ******************************************************************************) >> %1.c &
(echo   */ ) >> %1.c &
(echo.) >> %1.c &
(echo /* Includes ------------------------------------------------------------------*/) >> %1.c &
(echo.) >> %1.c &
(echo /** @addtogroup DataStruct_Driver) >> %1.c &
(echo   * @{) >> %1.c &
(echo   */) >> %1.c &
(echo.) >> %1.c &
(echo /** @addtogroup %1) >> %1.c &
(echo   * @{) >> %1.c &
(echo   */) >> %1.c &
(echo.) >> %1.c &
(echo /* Private typedef -----------------------------------------------------------*/) >> %1.c &
(echo.) >> %1.c &
(echo /* Private define ------------------------------------------------------------*/) >> %1.c &
(echo.) >> %1.c &
(echo /* Private macro -------------------------------------------------------------*/) >> %1.c &
(echo.) >> %1.c &
(echo /* Private variables ---------------------------------------------------------*/) >> %1.c &
(echo.) >> %1.c &
(echo /* Private function prototypes -----------------------------------------------*/) >> %1.c &
(echo.) >> %1.c &
(echo /* Private functions ---------------------------------------------------------*/) >> %1.c &
(echo.) >> %1.c &
(echo.) >> %1.c &
(echo /** @defgroup %1_Exported_Functions %1 Exported Functions) >> %1.c &
(echo   * @{) >> %1.c &
(echo   */) >> %1.c &
(echo.) >> %1.c &
(echo /** @defgroup %1_Exported_Functions_Group1 Initialization and deinitialization functions) >> %1.c &
(echo  *  @brief    Initialization and Configuration functions) >> %1.c &
(echo  *) >> %1.c &
(echo @verbatim    ) >> %1.c &
(echo  ===============================================================================) >> %1.c &
(echo               ##### Initialization and deinitialization functions #####) >> %1.c &
(echo  ===============================================================================) >> %1.c &
(echo   [..]) >> %1.c &
(echo     This section provides functions allowing to initialize and de-initialize the %1) >> %1.c &
(echo     to be ready for use.) >> %1.c &
(echo.) >> %1.c &
(echo @endverbatim) >> %1.c &
(echo   * @{) >> %1.c &
(echo   */ ) >> %1.c &
(echo.) >> %1.c &
(echo /**) >> %1.c &
(echo   * @brief  init%1) >> %1.c &
(echo   * @param   ) >> %1.c &
(echo   * @retval ) >> %1.c &
(echo   */ ) >> %1.c &
(echo int8_t %1_init^(void^) ) >> %1.c &
(echo {) >> %1.c &
(echo     return 0;) >> %1.c &
(echo }) >> %1.c &
(echo.) >> %1.c &
(echo /**) >> %1.c &
(echo   * @}) >> %1.c &
(echo   */) >> %1.c &
(echo.) >> %1.c &
(echo /** @defgroup %1_Exported_Functions_Group2 operation functions ) >> %1.c &
(echo  *  @brief   operation functions) >> %1.c &
(echo  *) >> %1.c &
(echo @verbatim   ) >> %1.c &
(echo  ===============================================================================) >> %1.c &
(echo                        ##### operation functions #####) >> %1.c &
(echo  ===============================================================================) >> %1.c &
(echo   [..]) >> %1.c &
(echo     This subsection provides a set of functions allowing to manage the %1.) >> %1.c &
(echo.) >> %1.c &
(echo @endverbatim) >> %1.c &
(echo   * @{) >> %1.c &
(echo   */) >> %1.c &
(echo.) >> %1.c &
(echo     /* operation functions */) >> %1.c &
(echo.) >> %1.c &
(echo   /**) >> %1.c &
(echo   * @}) >> %1.c &
(echo   */) >> %1.c &
(echo.) >> %1.c &
(echo.) >> %1.c &
(echo /**) >> %1.c &
(echo   * @}) >> %1.c &
(echo   */) >> %1.c &
(echo.) >> %1.c &
(echo /**) >> %1.c &
(echo   * @}) >> %1.c &
(echo   */) >> %1.c &
(echo.) >> %1.c &
(echo /**) >> %1.c &
(echo   * @}) >> %1.c &
(echo   */) >> %1.c &
(echo.) >> %1.c &
(echo /************************ ^(C^) HOME 2018 shenzhenglonghua *****END OF FILE****/) >> %1.c &
(echo %date:~0,4%-%date:~5,2%-%date:~8,2%-%time:~0,2%:%time:~3,2%:%time:~6,2%  create %1.c finish)

:writehfile
if %cfile% == 0 (goto :finish)

(echo /**) > %1.h &
(echo   ******************************************************************************) >> %1.h &
(echo   * @file    %1.h) >> %1.h &
(echo   * @author  %name%) >> %1.h &
(echo   * @version V1.0.0) >> %1.h &
(echo   * @date    %CURRENT_DATE%) >> %1.h &
(echo   * @brief   %2) >> %1.h &
(echo   ******************************************************************************) >> %1.h &
(echo   * @attention) >> %1.h &
(echo   *) >> %1.h &
(echo   *) >> %1.h &
(echo   ******************************************************************************) >> %1.h &
(echo   */ ) >> %1.h &
(echo.) >> %1.h &
(echo /* Define to prevent recursive inclusion -------------------------------------*/) >> %1.h &
(echo #ifndef __%UPPERCASE%_H) >> %1.h &
(echo #define __%UPPERCASE%_H) >> %1.h &
(echo.) >> %1.h &
(echo #ifdef __cplusplus) >> %1.h &
(echo  extern "C" {) >> %1.h &
(echo #endif) >> %1.h &
(echo.) >> %1.h &
(echo /* Includes ------------------------------------------------------------------*/) >> %1.h &
(echo.) >> %1.h &
(echo.) >> %1.h &
(echo /** @addtogroup DataStruct_Driver) >> %1.h &
(echo   * @{) >> %1.h &
(echo   */) >> %1.h &
(echo.) >> %1.h &
(echo /** @addtogroup %1) >> %1.h &
(echo   * @{) >> %1.h &
(echo   */) >> %1.h &
(echo.) >> %1.h &
(echo /* Exported types ------------------------------------------------------------*/) >> %1.h &
(echo /** @defgroup ) >> %1.h &
(echo   * @{) >> %1.h &
(echo   */ ) >> %1.h &
(echo.) >> %1.h &
(echo.) >> %1.h &
(echo.) >> %1.h &
(echo /**) >> %1.h &
(echo   * @}) >> %1.h &
(echo   */) >> %1.h &
(echo.) >> %1.h &
(echo.) >> %1.h &
(echo /* Exported constants --------------------------------------------------------*/) >> %1.h &
(echo.) >> %1.h &
(echo /* Exported macro ------------------------------------------------------------*/) >> %1.h &
(echo.) >> %1.h &
(echo /* Exported functions --------------------------------------------------------*/ ) >> %1.h &
(echo /* Initialization and de-initialization functions *******************************/) >> %1.h &
(echo /** @addtogroup %1_Exported_Functions) >> %1.h &
(echo   * @{) >> %1.h &
(echo   */) >> %1.h &
(echo.) >> %1.h &
(echo /** @addtogroup %1_Exported_Functions_Group1) >> %1.h &
(echo   * @{) >> %1.h &
(echo   */) >> %1.h &
(echo int8_t %1_init^(void^);) >> %1.h &
(echo.) >> %1.h &
(echo /**) >> %1.h &
(echo   * @}) >> %1.h &
(echo   */) >> %1.h &
(echo.) >> %1.h &
(echo /* operation functions *******************************************************/) >> %1.h &
(echo /** @addtogroup %1_Exported_Functions_Group2) >> %1.h &
(echo   * @{) >> %1.h &
(echo   */) >> %1.h &
(echo.) >> %1.h &
(echo.) >> %1.h &
(echo.) >> %1.h &
(echo /**) >> %1.h &
(echo   * @}) >> %1.h &
(echo   */) >> %1.h &
(echo.) >> %1.h &
(echo /**) >> %1.h &
(echo   * @}) >> %1.h &
(echo   */ ) >> %1.h &
(echo.) >> %1.h &
(echo /**) >> %1.h &
(echo   * @}) >> %1.h &
(echo   */) >> %1.h &
(echo.) >> %1.h &
(echo /**) >> %1.h &
(echo   * @}) >> %1.h &
(echo   */) >> %1.h &
(echo.) >> %1.h &
(echo.) >> %1.h &
(echo #ifdef __cplusplus) >> %1.h &
(echo }) >> %1.h &
(echo #endif) >> %1.h &
(echo.) >> %1.h &
(echo #endif /* __%UPPERCASE%_H */) >> %1.h &
(echo.) >> %1.h &
(echo /******************* ^(C^) HOME 2018 shenzhenglonghua *****END OF FILE****/) >> %1.h &
(echo %date:~0,4%-%date:~5,2%-%date:~8,2%-%time:~0,2%:%time:~3,2%:%time:~6,2%  create %1.h finish)	

:finish
   pause

