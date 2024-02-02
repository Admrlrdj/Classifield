<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
        <title>Classifield - Home</title>
        <style>
            .square {
                height: 180px;
                background-color: gray;
            }

            .nav-link {
                font-weight: 500;
            }

            h4 {
                font-weight: bold;
            }

            #Form {
                border-radius: 50px 50px 50px 50px;
            }
        </style>
    </head>

    <body>
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-body-tertiary" id="Home">
            <div class="container-fluid" style="margin-inline: 30px;">
                <!-- Logo Classifield -->
                <svg width="152" height="17" viewBox="0 0 152 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                    d="M28.8154 14.1728C28.8154 10.4144 27.3224 6.80986 24.6648 4.15224C22.0071 1.49462 18.4026 0.0015872 14.6442 0.00158691C10.8857 0.00158663 7.28124 1.49462 4.62362 4.15224C1.966 6.80986 0.472962 10.4144 0.472961 14.1728L14.6442 14.1728H28.8154Z"
                    fill="#D3850C" />
                <path
                    d="M45.9029 4.678C45.4471 4.678 45.04 4.77569 44.6818 4.97106C44.3236 5.15992 44.0176 5.43671 43.7636 5.80141C43.5096 6.16611 43.3142 6.61221 43.1774 7.13973C43.0472 7.66073 42.9821 8.25337 42.9821 8.91764C42.9821 9.81637 43.096 10.5718 43.324 11.184C43.5519 11.7962 43.8971 12.2586 44.3595 12.5712C44.8284 12.8838 45.4145 13.0401 46.1178 13.0401C46.7561 13.0401 47.3682 12.9521 47.9544 12.7763C48.547 12.6005 49.1429 12.3888 49.7421 12.1413V15.4041C49.1103 15.6841 48.4624 15.886 47.7981 16.0098C47.1403 16.1335 46.4402 16.1954 45.6978 16.1954C44.1478 16.1954 42.8779 15.8893 41.888 15.2771C40.9046 14.6584 40.1784 13.802 39.7095 12.7079C39.2471 11.6138 39.016 10.3439 39.016 8.89811C39.016 7.81703 39.1657 6.82713 39.4653 5.9284C39.7714 5.02967 40.2175 4.25143 40.8036 3.59366C41.3898 2.92939 42.1127 2.41816 42.9723 2.05997C43.8385 1.69527 44.8284 1.51292 45.942 1.51292C46.6323 1.51292 47.3585 1.59432 48.1204 1.75714C48.8889 1.91344 49.6379 2.16742 50.3673 2.5191L49.1852 5.55719C48.6642 5.30971 48.1367 5.10131 47.6027 4.93199C47.0687 4.76266 46.5021 4.678 45.9029 4.678ZM56.531 16H52.7114V0.799797H56.531V16ZM64.9806 4.73661C66.3807 4.73661 67.4748 5.08503 68.2629 5.78187C69.0509 6.47219 69.4449 7.45884 69.4449 8.74181V16H66.7975L66.0649 14.5347H65.9867C65.6741 14.9254 65.3518 15.2445 65.0196 15.492C64.694 15.733 64.3195 15.9088 63.8962 16.0195C63.4729 16.1368 62.9552 16.1954 62.343 16.1954C61.7048 16.1954 61.1317 16.0651 60.6237 15.8046C60.1157 15.5441 59.7152 15.1501 59.4221 14.6226C59.1291 14.0951 58.9825 13.4276 58.9825 12.62C58.9825 11.4347 59.3928 10.5555 60.2134 9.98244C61.034 9.40934 62.2225 9.08697 63.779 9.01533L65.6253 8.95672V8.80042C65.6253 8.30547 65.5016 7.95379 65.2541 7.74539C65.0131 7.53699 64.6875 7.43279 64.2772 7.43279C63.8409 7.43279 63.3524 7.51094 62.8119 7.66724C62.2779 7.81703 61.7406 8.0124 61.2 8.25337L60.0962 5.73302C60.7344 5.4074 61.4573 5.15992 62.2648 4.9906C63.0724 4.82127 63.9776 4.73661 64.9806 4.73661ZM65.6448 11.057L64.7656 11.0961C64.0623 11.1221 63.5673 11.2459 63.2808 11.4673C63.0008 11.6822 62.8607 11.9915 62.8607 12.3953C62.8607 12.7731 62.9617 13.0531 63.1636 13.2354C63.3655 13.4113 63.6325 13.4992 63.9646 13.4992C64.427 13.4992 64.821 13.3527 65.1466 13.0596C65.4788 12.7665 65.6448 12.3856 65.6448 11.9167V11.057ZM80.6688 12.6005C80.6688 13.3038 80.5125 13.9258 80.1999 14.4663C79.8873 15.0068 79.3858 15.4302 78.6955 15.7362C78.0117 16.0423 77.1097 16.1954 75.9896 16.1954C75.2016 16.1954 74.4949 16.153 73.8697 16.0684C73.2511 15.9837 72.6226 15.8209 71.9844 15.5799V12.5223C72.6812 12.8414 73.3911 13.0726 74.114 13.2159C74.8369 13.3527 75.4067 13.421 75.8235 13.421C76.2533 13.421 76.5659 13.3755 76.7613 13.2843C76.9632 13.1866 77.0641 13.0433 77.0641 12.8545C77.0641 12.6916 76.9958 12.5549 76.859 12.4442C76.7287 12.3269 76.491 12.1934 76.1459 12.0436C75.8072 11.8939 75.3285 11.692 74.7099 11.438C74.0977 11.184 73.5865 10.9072 73.1762 10.6076C72.7724 10.3081 72.4696 9.94988 72.2677 9.53308C72.0658 9.11627 71.9648 8.60504 71.9648 7.99938C71.9648 6.9183 72.3816 6.10424 73.2152 5.55719C74.0488 5.01014 75.1527 4.73661 76.5269 4.73661C77.2563 4.73661 77.9433 4.81802 78.5881 4.98083C79.2328 5.13713 79.9003 5.36832 80.5907 5.67441L79.5454 8.13614C78.9983 7.88867 78.4448 7.69003 77.8847 7.54025C77.3246 7.39046 76.8785 7.31557 76.5464 7.31557C76.2468 7.31557 76.0156 7.35464 75.8528 7.43279C75.69 7.51094 75.6086 7.62491 75.6086 7.7747C75.6086 7.91146 75.6639 8.03194 75.7747 8.13614C75.8919 8.24034 76.11 8.36082 76.4292 8.49759C76.7483 8.63435 77.2139 8.82647 77.8261 9.07394C78.4708 9.33444 79.0016 9.61448 79.4184 9.91406C79.8417 10.2071 80.1543 10.5653 80.3562 10.9886C80.5646 11.4119 80.6688 11.9492 80.6688 12.6005ZM91.4238 12.6005C91.4238 13.3038 91.2675 13.9258 90.9549 14.4663C90.6423 15.0068 90.1409 15.4302 89.4505 15.7362C88.7667 16.0423 87.8647 16.1954 86.7446 16.1954C85.9566 16.1954 85.25 16.153 84.6248 16.0684C84.0061 15.9837 83.3776 15.8209 82.7394 15.5799V12.5223C83.4362 12.8414 84.1461 13.0726 84.869 13.2159C85.5919 13.3527 86.1617 13.421 86.5785 13.421C87.0083 13.421 87.3209 13.3755 87.5163 13.2843C87.7182 13.1866 87.8192 13.0433 87.8192 12.8545C87.8192 12.6916 87.7508 12.5549 87.614 12.4442C87.4838 12.3269 87.2461 12.1934 86.9009 12.0436C86.5622 11.8939 86.0836 11.692 85.4649 11.438C84.8527 11.184 84.3415 10.9072 83.9312 10.6076C83.5274 10.3081 83.2246 9.94988 83.0227 9.53308C82.8208 9.11627 82.7199 8.60504 82.7199 7.99938C82.7199 6.9183 83.1367 6.10424 83.9703 5.55719C84.8039 5.01014 85.9077 4.73661 87.2819 4.73661C88.0113 4.73661 88.6983 4.81802 89.3431 4.98083C89.9878 5.13713 90.6554 5.36832 91.3457 5.67441L90.3004 8.13614C89.7534 7.88867 89.1998 7.69003 88.6397 7.54025C88.0797 7.39046 87.6335 7.31557 87.3014 7.31557C87.0018 7.31557 86.7706 7.35464 86.6078 7.43279C86.445 7.51094 86.3636 7.62491 86.3636 7.7747C86.3636 7.91146 86.419 8.03194 86.5297 8.13614C86.6469 8.24034 86.8651 8.36082 87.1842 8.49759C87.5033 8.63435 87.9689 8.82647 88.5811 9.07394C89.2259 9.33444 89.7566 9.61448 90.1734 9.91406C90.5967 10.2071 90.9093 10.5653 91.1112 10.9886C91.3196 11.4119 91.4238 11.9492 91.4238 12.6005ZM97.7927 4.93199V16H93.9731V4.93199H97.7927ZM95.8975 0.477427C96.4446 0.477427 96.92 0.591396 97.3238 0.819334C97.7341 1.04727 97.9392 1.49989 97.9392 2.17719C97.9392 2.83496 97.7341 3.28106 97.3238 3.51551C96.92 3.74345 96.4446 3.85742 95.8975 3.85742C95.3375 3.85742 94.8588 3.74345 94.4615 3.51551C94.0708 3.28106 93.8754 2.83496 93.8754 2.17719C93.8754 1.49989 94.0708 1.04727 94.4615 0.819334C94.8588 0.591396 95.3375 0.477427 95.8975 0.477427ZM105.842 4.73661C106.916 4.73661 107.844 4.92547 108.626 5.3032C109.407 5.67441 110.01 6.23449 110.433 6.98343C110.856 7.73237 111.068 8.67017 111.068 9.79683V11.4966H104.24C104.272 12.0762 104.487 12.5516 104.884 12.9228C105.288 13.2941 105.881 13.4797 106.662 13.4797C107.353 13.4797 107.984 13.4113 108.557 13.2745C109.137 13.1378 109.733 12.9261 110.345 12.6395V15.3846C109.811 15.6646 109.228 15.8697 108.597 16C107.965 16.1303 107.167 16.1954 106.203 16.1954C105.09 16.1954 104.093 15.9967 103.214 15.5995C102.335 15.2022 101.641 14.5868 101.133 13.7532C100.632 12.9196 100.381 11.8483 100.381 10.5393C100.381 9.21071 100.609 8.11986 101.065 7.26672C101.521 6.40707 102.159 5.7721 102.98 5.36181C103.8 4.94501 104.754 4.73661 105.842 4.73661ZM105.979 7.3351C105.529 7.3351 105.151 7.47838 104.845 7.76493C104.546 8.04497 104.37 8.48782 104.318 9.09348H107.6C107.594 8.76786 107.528 8.47154 107.405 8.20452C107.281 7.93751 107.099 7.72585 106.858 7.56955C106.623 7.41325 106.33 7.3351 105.979 7.3351ZM120.387 7.79423H118.033V16H114.213V7.79423H112.748V5.91863L114.291 4.98083V4.79522C114.291 3.83788 114.418 3.05964 114.672 2.46049C114.926 1.85482 115.33 1.40872 115.884 1.12217C116.437 0.835615 117.16 0.69234 118.052 0.69234C118.625 0.69234 119.143 0.737928 119.606 0.829103C120.074 0.920278 120.563 1.05053 121.071 1.21985L120.25 3.69135C120.061 3.63925 119.85 3.59366 119.615 3.55459C119.387 3.51551 119.14 3.49598 118.873 3.49598C118.58 3.49598 118.365 3.58715 118.228 3.7695C118.098 3.94534 118.033 4.23515 118.033 4.63892V4.93199H120.387V7.79423ZM125.731 4.93199V16H121.911V4.93199H125.731ZM123.835 0.477427C124.382 0.477427 124.858 0.591396 125.262 0.819334C125.672 1.04727 125.877 1.49989 125.877 2.17719C125.877 2.83496 125.672 3.28106 125.262 3.51551C124.858 3.74345 124.382 3.85742 123.835 3.85742C123.275 3.85742 122.797 3.74345 122.399 3.51551C122.009 3.28106 121.813 2.83496 121.813 2.17719C121.813 1.49989 122.009 1.04727 122.399 0.819334C122.797 0.591396 123.275 0.477427 123.835 0.477427ZM133.78 4.73661C134.854 4.73661 135.782 4.92547 136.564 5.3032C137.345 5.67441 137.948 6.23449 138.371 6.98343C138.794 7.73237 139.006 8.67017 139.006 9.79683V11.4966H132.178C132.21 12.0762 132.425 12.5516 132.822 12.9228C133.226 13.2941 133.819 13.4797 134.6 13.4797C135.291 13.4797 135.922 13.4113 136.495 13.2745C137.075 13.1378 137.671 12.9261 138.283 12.6395V15.3846C137.749 15.6646 137.166 15.8697 136.534 16C135.903 16.1303 135.105 16.1954 134.141 16.1954C133.027 16.1954 132.031 15.9967 131.152 15.5995C130.273 15.2022 129.579 14.5868 129.071 13.7532C128.57 12.9196 128.319 11.8483 128.319 10.5393C128.319 9.21071 128.547 8.11986 129.003 7.26672C129.459 6.40707 130.097 5.7721 130.917 5.36181C131.738 4.94501 132.692 4.73661 133.78 4.73661ZM133.916 7.3351C133.467 7.3351 133.089 7.47838 132.783 7.76493C132.484 8.04497 132.308 8.48782 132.256 9.09348H135.538C135.532 8.76786 135.466 8.47154 135.343 8.20452C135.219 7.93751 135.037 7.72585 134.796 7.56955C134.561 7.41325 134.268 7.3351 133.916 7.3351ZM145.004 16.1954C143.864 16.1954 142.926 15.7102 142.19 14.7398C141.454 13.7695 141.086 12.3497 141.086 10.4806C141.086 8.59202 141.464 7.16252 142.219 6.19216C142.975 5.22179 143.952 4.73661 145.15 4.73661C145.645 4.73661 146.072 4.80825 146.43 4.95152C146.788 5.0948 147.097 5.29017 147.358 5.53765C147.625 5.77861 147.856 6.05214 148.051 6.35823H148.13C148.084 6.07819 148.042 5.69395 148.003 5.20551C147.964 4.71056 147.944 4.22863 147.944 3.75973V0.799797H151.793V16H148.911L148.091 14.6031H147.944C147.768 14.8961 147.547 15.1631 147.28 15.4041C147.019 15.6451 146.7 15.8372 146.322 15.9805C145.951 16.1237 145.512 16.1954 145.004 16.1954ZM146.567 13.1768C147.179 13.1768 147.609 12.9847 147.856 12.6005C148.11 12.2097 148.247 11.6171 148.266 10.8226V10.5197C148.266 9.64704 148.143 8.97951 147.895 8.51712C147.654 8.04822 147.198 7.81377 146.528 7.81377C146.072 7.81377 145.694 8.0352 145.394 8.47805C145.095 8.9209 144.945 9.60797 144.945 10.5393C144.945 11.4575 145.095 12.1283 145.394 12.5516C145.7 12.9684 146.091 13.1768 146.567 13.1768Z"
                    fill="black" />
                </svg>
                <!-- Logo Classifield -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
                        aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active text-warning" aria-current="page" href="#Home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-warning" href="#Info">Info</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-warning" href="#Contact" style="margin-right: 20px;">Contact</a>
                        </li>
                    </ul>
                    <a href="login.jsp" type="button" class="btn btn-warning text-white">Login</a>
                </div>
            </div>
        </nav>
        <!-- Navbar End -->
        <!-- Header Start -->
        <div class="container-fluid" style="background-color: #e4e3e3;" id="Header">
            <div class="container">
                <div class="row">
                    <div class="col align-self-start" style="margin-block: 100px;">
                        <h1 style="font-weight: bold;">Selamat Datang di Classifield</h1><br>
                        <p>Bersama, kita membuka pintu masa depan cerah untuk siswa-siswa kami. Dukungan Anda memajukan
                            pendidikan dan membentuk karakter. Mari ciptakan dampak positif bersama! Terima kasih atas
                            dukungan Anda.</p>
                    </div>
                </div>
                <div class="row align-items-start">
                    <!-- Gambar 1 -->
                    <div class="col">
                        <div class=" p-2" style="margin-bottom: 100px;">
                            <img style="border-radius: 8px;" src="assets/images/img1.jpeg" alt="Image 1" width="100%"
                                 height="100%">
                        </div>
                    </div>
                    <!-- Gambar 2 -->
                    <div class="col">
                        <div class="p-2">
                            <img style="border-radius: 8px;" src="assets/images/img2.jpeg" alt="Image 2" width="100%"
                                 height="100%">
                        </div>
                    </div>
                    <!-- Gambar 3 -->
                    <div class="col">
                        <div class="p-2">
                            <img style="border-radius: 8px;" src="assets/images/img3.jpeg" alt="Image 3" width="100%"
                                 height="100%">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
    <!-- Info Start -->
    <div class="container" id="Info">
        <!-- Fasilitas Start -->
        <div class="container mt-5">
            <h4 class="mb-4">Fasilitas</h4>
            <div class="row">
                <div class="col-md-3 mb-3">
                    <div class="p-2">
                        <img style="border-radius: 6px;" src="assets/images/imgf1.jpeg" alt="GAMBAR(1)" width="220px"
                             height="200px">
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="p-2">
                        <img style="border-radius: 6px;" src="assets/images/imgf2.jpeg" alt="GAMBAR(1)" width="220px"
                             height="200px">
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="p-2">
                        <img style="border-radius: 6px;" src="assets/images/imgf3.jpeg" alt="GAMBAR(1)" width="220px"
                             height="200px">
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="p-2">
                        <img style="border-radius: 6px;" src="assets/images/imgf4.jpeg" alt="GAMBAR(1)" width="220px"
                             height="200px">
                    </div>
                </div>
            </div>
        </div>
        <!-- Fasilitas End -->
        <!-- Ekskul Start -->
        <div class="container mt-5">
            <h4 style="margin-bottom: 20px;">Ekskul</h4>
            <div class="row align-items-start">
                <div class="col">
                    <div class="p-1" style="margin-bottom: 100px;">
                        <img style="border-radius: 6px;" src="assets/images/imge (1).jpeg" alt="GAMBAR(1)" width="300px"
                             height="200px">
                    </div>
                </div>
                <div class="col">
                    <div class="p-1">
                        <img style="border-radius: 6px;" src="assets/images/imge (2).jpeg" alt="GAMBAR(1)" width="300px"
                             height="200px">
                    </div>
                </div>
                <div class="col">
                    <div class=" p-1">
                        <img style="border-radius: 6px;" src="assets/images/imge (3).jpeg" alt="GAMBAR(1)" width="300px"
                             height="200px">
                    </div>
                </div>
            </div>
        </div>
        <!-- Ekskul End -->
    </div>
    <!-- Info End -->
    <!-- Form Start -->
    <div class="container-fluid" style="background-color: #e4e3e3;" id="Form">
        <div class="container">
            <div class="card-body">
                <div class="card-title d-flex justify-content-center">
                    <h4 class="fw-bolder" style="margin-top: 2%;">Join Us</h2>
                </div>
                <form action="/FormCtr" method="POST" class="mt-5">
                    <div class="d-flex justify-content-center">
                        <span class="input-group-text p-3"
                              style="height: 57px; margin-left: 15px; margin-bottom :5px;"><i
                                class="fa-solid fa-building-columns"></i></span>
                        <input type="text" name="nama_instansi" value="" class="form-control mb-3 w-75 p-3 border-bottom" placeholder="Nama Instansi">
                    </div>

                    <div class="d-flex justify-content-center">
                        <span class="input-group-text p-3"
                              style="height: 57px; margin-left: 15px; margin-bottom :5px;"><i
                                class="fa-solid fa-calendar-days"></i></span>
                        <input type="date" name="tanggal_undangan" class="form-control mb-3 w-75 p-3">
                    </div>
                    <div class="d-flex justify-content-center">
                        <span class="input-group-text p-3" style="height: 57px; margin-left: 15px; margin-bottom :5px;"
                              style="height: 100px"><i class="fa-solid fa-paper-plane"></i></span>
                        <input type="text" name="tujuan" class="form-control mb-3 w-75 p-3" placeholder="Tujuan">
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="submit" style="border-radius: 400px;"
                                class="btn btn-warning w-15 p-2 submit text-white">Submit</button>
                    </div><br>
                </form>
            </div>
        </div>
    </div>
    <!-- Form End -->
    <!-- Gmaps Start -->
    <h4 class="text-center" id="Location" style="margin-top: 20px;">Location</h4><br>
    <div class="mapouter shadow mb-5">
        <div class="gmap_canvas">
            <iframe
                src="https://maps.google.com/maps?q=SMKN%2024%20Jakarta&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed"
                frameborder="0" scrolling="no" style="width: 100%; height: 100%;"></iframe>
            <style>
                .mapouter {
                    position: relative;
                    height: 300px;
                    width: 550px;
                    background: #fff;
                    margin: 0 auto;
                    /* Center horizontally */
                }

                .gmap_canvas {
                    overflow: hidd  en;
                    height: 300px;
                    width: 100%;
                    /* Adjusted to 100% to fill the container */
                }

                .gmap_canvas iframe {
                    position: relative;
                    z-index: 2;
                    width: 100%;
                    /* Adjusted to 100% to fill the container */
                    height: 100%;
                    /* Adjusted to 100% to fill the container */
                }

                .mapouter a {
                    color: #fff !important;
                    position: absolute !important;
                    top: 0 !important;
                    z-index: 0 !important;
                }
            </style>
        </div>
    </div>
    <!-- Gmaps End -->
    <!-- Footer -->
    <footer class="text-center text-lg-start text-muted" id="Contact" style="background-color: #FF9A00;">
        <!-- Section: Social media -->
        <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
            <!-- Left -->
            <div class="me-5 d-none d-lg-block text-white">
                <h2>Classified</h2>
            </div>
            <!-- Left -->
            <!-- Right -->
            <div>
                <a href="#" class="me-4 text-reset"><i class="fa fa-brands fa-tiktok"></i></a>
                <a href="#" class="me-4 text-reset"><i class="fa fa-brands fa-twitter"></i></a>
                <a href="#" class="me-4 text-reset"><i class="fa fa-brands fa-instagram"></i></a>
            </div>
            <!-- Right -->
        </section>
        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section class="">
            <div class="container text-center text-md-start mt-5">
                <!-- Grid row -->
                <div class="row mt-3">
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                        <!-- Content -->
                        <h6 class="text-uppercase fw-bold mb-4 text-white">
                            Classifield
                        </h6>
                        <p>
                            Bersama, kita membuka pintu masa depan cerah untuk siswa-siswa kami. Dukungan Anda
                            memajukan
                            pendidikan dan membentuk karakter. Mari ciptakan dampak positif bersama! Terima kasih
                            atas
                            dukungan Anda.
                        </p>
                    </div>
                    <!-- Grid column -->
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4 text-white">
                            Useful links
                        </h6>
                        <p>
                            <a href="#Home" class="text-reset">Home</a>
                        </p>
                        <p>
                            <a href="#Info" class="text-reset">Info</a>
                        </p>
                        <p>
                            <a href="#Form" class="text-reset">Join</a>
                        </p>
                        <p>
                            <a href="#Location" class="text-reset">Location</a>
                        </p>
                        <p>
                            <a href="#Contact" class="text-reset">Contact</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4 text-white">Contact</h6>
                        <p><i class="fa fa-home me-3"></i> Jl. Bambu Apus, Bambu Hitam, Cipayung Jakarta Timur. 13890
                        </p>
                        <p>
                            <i class="fa fa-envelope me-3"></i>
                            informasi@smkn24jkt.sch.id
                        </p>
                        <p><i class="fa fa-phone me-3"></i> +62 021 844 1976</p>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
            © 2024 Copyright:
            <a class="text-reset fw-bold" href="#">Classifield.com</a>
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Footer -->
</body>

</html>