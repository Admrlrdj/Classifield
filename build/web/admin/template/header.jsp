<!-- Basic Page Info -->
<meta charset="utf-8" />
<title>Classified</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="/Classifield/assets/vendors/images/apple-touch-icon.png" />
<link rel="icon" type="image/png" sizes="32x32" href="/Classifield/assets/vendors/images/favicon-32x32.png" />
<link rel="icon" type="image/png" sizes="16x16" href="/Classifield/assets/vendors/images/favicon-16x16.png" />

<!-- Mobile Specific Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/Classifield/assets/vendors/styles/core.css" />
<link rel="stylesheet" type="text/css" href="/Classifield/assets/vendors/styles/icon-font.min.css "/>
<link rel="stylesheet" type="text/css" href="/Classifield/assets/src/plugins/datatables/css/dataTables.bootstrap4.min.css" />
<link rel="stylesheet" type="text/css" href="/Classifield/assets/src/plugins/datatables/css/responsive.bootstrap4.min.css" />
<link rel="stylesheet" type="text/css" href="/Classifield/assets/vendors/styles/style.css" />

<!-- Global site tag (gtag.js) - Google Analytics -->

<!-- End Google Tag Manager -->
<style>
    .left-side-bar a:hover {
        background-color: orange;
    }

    body {
        margin: 0;
        padding: 0;
        overflow: hidden; /* Untuk menghilangkan overflow pada elemen body */
    }

    #background-svg {
        position: absolute;
        width: 100%;
        height: auto;
        bottom: 0;
        left: 0;
        z-index: -1; /* Menempatkan elemen di belakang elemen lainnya */
    }

    #myTable {
        position: relative;
        z-index: 1; /* Menempatkan elemen di depan elemen dengan z-index negatif */
    }
</style>