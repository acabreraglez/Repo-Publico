@Web
Feature: Reporte de Runs

@EN @ES @LinkIssue @Report @Nuevo @IssuesRun @Runs
Scenario Outline: REPORTE - Vincular incidencia de "<gestor>" (<idioma>)
  Given Existe una ejecución de run en Gitlab Automation creado por automation.ltm y 1234 para el proyecto "Proyecto de Automation" con estado EN_PROGRESO asociada con el gestor "<gestor>"
  And el cliente está autenticado con el usuario automation.ltm y la contraseña 1234
  And el cliente está en la ejecución de run en Gitlab Automation del proyecto Proyecto de Automation
  And el idioma del sistema está configurado en "<idioma>"
  And el cliente tiene integrada la herramienta "<gestor>" en la seccion de issues del proyecto
  And existe un enlace a una incidencia creada en "<gestor>"
  And el escenario no tiene vinculada ninguna incidencia
  When hace clic en el botón de opciones de un escenario y selecciona la opción "<opcion>"
  And ingresa el enlace de la incidencia creada en el campo "Enlace de la incidencia"
  And hace clic en el botón "Guardar"
  Then el issue se vincula al escenario
  And aparece una alerta con el mensaje: "<mensaje>"

@ES
Examples:
  | idioma | mensaje              | opcion              | gestor       |
  | ES     | Incidencia vinculada | Vincular incidencia | Gitlab       |
  | ES     | Incidencia vinculada | Vincular incidencia | Jira         |
  | ES     | Incidencia vinculada | Vincular incidencia | Azure DevOps |
  | ES     | Incidencia vinculada | Vincular incidencia | GitHub       |

@EN
Examples:
  | idioma | mensaje          | opcion     | gestor       |
  | EN     | Linked incidence | Link Issue | Gitlab       |
  | EN     | Linked incidence | Link Issue | Jira         |
  | EN     | Linked incidence | Link Issue | Azure DevOps |
  | EN     | Linked incidence | Link Issue | GitHub       |
