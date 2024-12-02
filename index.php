<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NAYLA BUKET</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Basic CSS Reset and Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            transition: opacity 0.5s ease; /* Transition for fade-out effect */
        }

        /* Hero Section with Blurred Background */
        .hero {
            height: 80vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            background: url('assets/img/bglogin.png') center/cover no-repeat;
            position: relative;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
            backdrop-filter: blur(10px);
            z-index: 1;
        }

        .hero h1 {
            position: relative;
            z-index: 2;
            font-size: 3rem;
            white-space: nowrap;
            overflow: hidden;
            animation: moveText 10s linear infinite;
        }

        .hero h1 span {
            color: #FF5733;
        }

        /* Text animation */
        @keyframes moveText {
            0% {
                transform: translateX(-100%);
            }
            100% {
                transform: translateX(100%);
            }
        }

        /* About Section */
        .about {
            background-color: #f8f9fa;
            padding: 3rem 0;
        }

        .about h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
        }

        .about p {
            font-size: 1.1rem;
            color: #333;
            text-align: justify;
        }

        .about .btn-primary {
            margin-top: 20px;
            background-color: #FF5733;
            border: none;
        }

        .about img {
            max-width: 100%;
            height: auto;
            border-radius: 15px;
        }

        /* Fade-out effect */
        .fade-out {
            opacity: 0;
        }
    </style>
</head>
<body>

    <section class="hero">
        <h1>TOKO ONLINE <span>NAYLA BUKET</span></h1>
    </section>

    <section class="about">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center">
                    <img src="assets/img/kupu2.jpg" alt="NAYLA BUKET">
                </div>
                <div class="col-md-6">
                    <h2>Our Story</h2>
                    <p class="lead">Nayla Bucket adalah usaha mikro yang bergerak di bidang pembuatan bucket. 
                        Didirikan oleh Visesa pada tahun 2022, usaha ini muncul karena ia melihat peluang yang baik dan besar di desa Teluk Betung, Kabupaten Barito Selatan, Kalimantan Tengah, di mana belum ada usaha yang serupa.
                        Dengan demikian, masyarakat tidak perlu jauh-jauh ke kota untuk membeli bucket. Produk ini cocok sebagai hadiah untuk berbagai acara, seperti kenaikan kelas, perpisahan, atau untuk teman dan keluarga. 
                        Nayla Bucket menawarkan dua sistem pemesanan yaitu proses pengiriman langsung untuk produk yang siap dan pre-order, di mana pelanggan harus memesan terlebih dahulu dan barang akan tersedia dalam waktu 1-3 hari masa pengelolaan.</p>
                    <a href="katalog.php" class="btn btn-primary" id="lihatToko">SEE STORE</a>
                </div>
            </div>
        </div>
    </section>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Custom JavaScript for fade-out transition -->
    <script>
        document.getElementById('lihatToko').addEventListener('click', function(event) {
            event.preventDefault(); // Prevent immediate navigation
            document.body.classList.add('fade-out'); // Add fade-out effect
            setTimeout(function() {
                window.location.href = 'katalog.php'; // Navigate after fade-out
            }, 500); // Wait for the fade-out effect to complete
        });
    </script>
</body>
</html>
