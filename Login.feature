Feature: Inicio de Sesión

  @Login @Regression @Smoke @Candidate
  Scenario Outline: Iniciar sesión exitosamente con el <campo>
    Given el cliente se encuentra en la página de login
	And tiene rol administrador
    When ingresa al sistema con el usuario <usuario> y contraseña <contraseña>
    Then se visualizan todos los proyectos en la pantalla de Dashboard

    Examples:
    |campo  | usuario        | contraseña |
    |usuario| user.ltm       | 1234       |
    |correo | user@gmail.com | 1234       |
