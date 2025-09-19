<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>404 Not Found</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body
    class="bg-gradient-to-br from-indigo-900 via-purple-900 to-pink-800 min-h-screen flex items-center justify-center p-4">
    <div class="text-center max-w-2xl">
        <div class="relative inline-block">
            <div class="absolute inset-0 bg-yellow-400 rounded-full blur-xl opacity-30 animate-pulse"></div>
            <h1 class="relative text-9xl font-extrabold text-white tracking-wider">
                404
            </h1>
        </div>

        <div class="mt-8">
            <h2 class="text-4xl font-bold text-yellow-400 mb-4">Halaman Tidak Ditemukan</h2>
            <p class="text-xl text-gray-200 mb-2">Maaf, halaman yang Anda cari tidak dapat ditemukan.</p>
            <p class="text-gray-300 mb-8">Mungkin URL salah atau halaman telah dipindahkan.</p>

            <div class="bg-gray-800 bg-opacity-50 rounded-lg p-6 mb-8 inline-block">
                <div class="flex items-center justify-center space-x-4">
                    <i class="fas fa-search text-yellow-400 text-3xl"></i>
                    <div class="text-left">
                        <p class="text-white font-semibold">Resource Tidak Tersedia</p>
                        <p class="text-gray-300 text-sm">Halaman tidak ditemukan di server</p>
                    </div>
                </div>
            </div>

            <div class="flex flex-col sm:flex-row justify-center gap-4">
                <button onclick="history.back()"
                    class="px-6 py-3 bg-indigo-600 hover:bg-indigo-700 text-white font-medium rounded-lg transition duration-300 ease-in-out transform hover:scale-105">
                    <i class="fas fa-arrow-left mr-2"></i> Kembali
                </button>
                <button onclick="window.location.href='/'"
                    class="px-6 py-3 bg-purple-600 hover:bg-purple-700 text-white font-medium rounded-lg transition duration-300 ease-in-out transform hover:scale-105">
                    <i class="fas fa-home mr-2"></i> Halaman Utama
                </button>
            </div>
        </div>

        <div class="mt-12 text-gray-400 text-sm">
            <p>Kode Error: 404 Not Found</p>
            <p class="mt-2">Server tidak dapat menemukan resource yang diminta.</p>
        </div>
    </div>
</body>

</html>
