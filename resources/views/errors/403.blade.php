<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>403 Forbidden</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body class="bg-gradient-to-br from-gray-900 to-black min-h-screen flex items-center justify-center p-4">
    <div class="text-center max-w-2xl">
        <div class="relative inline-block">
            <div class="absolute inset-0 bg-red-500 rounded-full blur-xl opacity-30 animate-pulse"></div>
            <h1 class="relative text-9xl font-extrabold text-white tracking-wider">
                403
            </h1>
        </div>

        <div class="mt-8">
            <h2 class="text-4xl font-bold text-red-500 mb-4">Akses Ditolak</h2>
            <p class="text-xl text-gray-300 mb-2">Kamu tidak memiliki hak akses untuk halaman ini.</p>
            <p class="text-gray-400 mb-8">Silahkan hubungi Admin jika ini bukan eror.</p>

            <div class="bg-gray-800 rounded-lg p-6 mb-8 inline-block">
                <div class="flex items-center justify-center space-x-4">
                    <i class="fas fa-lock text-red-500 text-3xl"></i>
                    <div class="text-left">
                        <p class="text-white font-semibold">Forbidden Resource</p>
                        <p class="text-gray-400 text-sm">Tidak Memiliki Izin Akses</p>
                    </div>
                </div>
            </div>

            <div class="flex flex-col sm:flex-row justify-center gap-4">
                <button onclick="history.back()"
                    class="px-6 py-3 bg-blue-600 hover:bg-blue-700 text-white font-medium rounded-lg transition duration-300 ease-in-out transform hover:scale-105">
                    <i class="fas fa-arrow-left mr-2"></i> Kembali
                </button>
                <button onclick="window.location.href='/'"
                    class="px-6 py-3 bg-gray-700 hover:bg-gray-600 text-white font-medium rounded-lg transition duration-300 ease-in-out transform hover:scale-105">
                    <i class="fas fa-home mr-2"></i> Beranda
                </button>
            </div>
        </div>

        <div class="mt-12 text-gray-500 text-sm">
            <p>Error Code: 403 Forbidden</p>
            <p class="mt-2">The server understood the request but refuses to authorize it.</p>
        </div>
    </div>
</body>

</html>
