<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="template/header.jsp" %>
    </head>
    <body>		
        <%@include file="template/sidebar.jsp" %>
        <div class="mobile-menu-overlay"></div>

        <svg id="background-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
        <path fill="#FF9A00" fill-opacity="1" d="M0,288L48,272C96,256,192,224,288,197.3C384,171,480,149,576,165.3C672,181,768,235,864,250.7C960,267,1056,245,1152,250.7C1248,256,1344,288,1392,304L1440,320L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path>
        </svg>

        <div class="main-container">
            <div class="xs-pd-20-10 pd-ltr-20">
                <div class="title pb-20">
                    <div class="pd-20 card-box mb-30">
                        <div class="clearfix mb-20">
                            <div class="pull-left">
                                <h2 class="h4" style="color: #FF9A00;">Instansi Data</h2>								
                            </div>							
                        </div>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Nama Instansi</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Username</th>
                                    <th scope="col">Password</th>
                                    <th scope="col">No. Telepon</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>												
            </div>
        </div>

        <%@include file="template/footer.jsp" %>

        <script>
            $(document).ready(function () {
                // Use Ajax to fetch data from the server
                $.ajax({
                    url: '/Classifield/UserCtr',
                    type: 'GET',
                    dataType: 'json',
                    success: function (data) {
                        console.log(data);
                        var tableBody = document.querySelector('table tbody');
                        tableBody.innerHTML = '';

                        var i = 1;

                        data.forEach(function (user) {
                            if (user.role === 2) {
                                tableBody.innerHTML +=
                                        '<tr>' +
                                        '<td>' + i++ + '</td>' +
                                        '<td>' + user.namaInstansi + '</td>' +
                                        '<td>' + user.email + '</td>' +
                                        '<td>' + user.username + '</td>' +
                                        '<td>' + user.password + '</td>' +
                                        '<td>' + user.noTlp + '</td>' +
                                        '<td>' +
                                        '<div class="dropdown">' +
                                        '<a class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle" href="#" role="button" data-toggle="dropdown">' +
                                        '<i class="dw dw-more"></i>' +
                                        '</a>' +
                                        '<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">' +
                                        '<a class="dropdown-item" href="#"><i class="dw dw-edit2"></i> Edit</a>' +
                                        '<a class="dropdown-item" href="#"><i class="dw dw-delete-3"></i> Delete</a>' +
                                        '</div>' +
                                        '</div>' +
                                        '</td>' +
                                        '</tr>';
                            }
                        });
                    }
                });
            });
        </script>
    </body>
</html>
