<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Clientes</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="../css/shards.min.css"> -->
</head>

<body>
<div class="container my-2">
    <div class="card">
        <div class="card-body">
            <div th:switch="${clientes}" class="container my-5">
                <p class="my-5">
                    <a href="/clientes/signup" class="btn btn-primary"><i
                            class="fas fa-user-plus ml-2"> Nuevo cliente</i></a>
                </p>
                <div class="col-md-10">
                    <h2 th:case="null">No existen clientes</h2>
                    <div th:case="*">
                        <table class="table table-striped table-responsive-md">
                            <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Apellidos</th>
                                <th>Fecha de nacimiento</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr th:each="cliente : ${clientes}">
                                <td th:text="${cliente.name}"></td>
                                <td th:text="${cliente.apellidos}"></td>
                                <td th:text="${cliente.Fecha de nacimiento}"></td>
                                <td><a th:href="@{/clientes/delete/{id}(id=${cliente.id})}" class="btn btn-primary"><i class="fas fa-user-times ml-2"></i></a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>