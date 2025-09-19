<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JADWALIN</title>
    <link href="{{ asset('assets/img/apple.png') }}" rel="icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body class="bg-white font-sans" style="font-family: 'Inter', sans-serif">
    <!-- Header -->
    <header class="bg-white shadow-sm py-4">
        <div class="container mx-auto px-6 flex justify-between items-center">
            <div class="flex items-center">
                <div class="w-10 h-10 rounded-lg bg-teal-600 flex items-center justify-center mr-3">
                    <i class="fas fa-calendar-check text-white text-xl"></i>
                </div>
                <h1 class="text-2xl font-bold text-teal-600">JADWALIN</h1>
            </div>
            <div class="flex space-x-4">
                <a href="{{ route('filament.mahasiswa.auth.login') }}"
                    class="px-6 py-2 text-gray-800 font-medium rounded-lg hover:bg-gray-100 transition-colors">
                    Login Mahasiswa
                </a>
                <a href="{{ route('filament.admin.auth.login') }}"
                    class="px-6 py-2 bg-teal-600 text-white font-medium rounded-lg hover:bg-teal-700 transition-colors">
                    Login Admin
                </a>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="py-20 bg-gradient-to-b from-white to-gray-100">
        <div class="container mx-auto px-6 flex flex-col lg:flex-row items-center">
            <div class="w-full lg:w-1/2 pr-0 lg:pr-12 mb-12 lg:mb-0">
                <h1 class="text-4xl md:text-5xl font-bold text-gray-900 leading-tight mb-6">
                    Penjadwalan Sidang Skripsi Menjadi Lebih Mudah & Teratur
                </h1>
                <p class="text-xl text-gray-600 mb-8 leading-relaxed">
                    Aplikasi JADWALIN membantu mahasiswa dan dosen UINSI Samarinda mengelola jadwal seminar, sidang
                    munaqasah, dan memantau progres secara online.
                </p>
                <button
                    class="px-8 py-4 bg-teal-600 text-white font-semibold rounded-lg text-lg hover:bg-teal-700 transition-colors shadow-lg">
                    Login ke Portal Mahasiswa
                </button>
            </div>
            <div class="w-full lg:w-1/2 flex justify-center">
                <div class="relative">
                    <!-- Abstract Calendar Graphic -->
                    <div class="w-80 h-80 bg-white rounded-2xl shadow-xl p-6">
                        <!-- Calendar Base -->
                        <div class="w-full h-full border-2 border-teal-600 rounded-xl relative">
                            <!-- Calendar Header -->
                            <div class="flex justify-between items-center p-4 border-b-2 border-teal-600">
                                <span class="text-teal-600 font-bold text-lg">September 2023</span>
                                <div class="flex space-x-2">
                                    <div class="w-3 h-3 rounded-full bg-teal-600"></div>
                                    <div class="w-3 h-3 rounded-full bg-amber-400"></div>
                                </div>
                            </div>

                            <!-- Calendar Grid -->
                            <div class="p-4">
                                <!-- Days Header -->
                                <div class="grid grid-cols-7 gap-1 mb-2">
                                    <div class="text-center text-xs font-bold text-teal-600">M</div>
                                    <div class="text-center text-xs font-bold text-teal-600">T</div>
                                    <div class="text-center text-xs font-bold text-teal-600">W</div>
                                    <div class="text-center text-xs font-bold text-teal-600">T</div>
                                    <div class="text-center text-xs font-bold text-teal-600">F</div>
                                    <div class="text-center text-xs font-bold text-teal-600">S</div>
                                    <div class="text-center text-xs font-bold text-teal-600">S</div>
                                </div>

                                <!-- Calendar Days -->
                                <div class="grid grid-cols-7 gap-1">
                                    <!-- Empty days -->
                                    <div class="h-8"></div>
                                    <div class="h-8"></div>
                                    <div class="h-8"></div>
                                    <!-- Days with events -->
                                    <div class="h-8 flex items-center justify-center text-sm">1</div>
                                    <div class="h-8 flex items-center justify-center text-sm">2</div>
                                    <div
                                        class="h-8 flex items-center justify-center text-sm bg-teal-600 text-white rounded-full">
                                        3</div>
                                    <div class="h-8 flex items-center justify-center text-sm">4</div>
                                    <div class="h-8 flex items-center justify-center text-sm">5</div>
                                    <div
                                        class="h-8 flex items-center justify-center text-sm bg-amber-400 text-white rounded-full">
                                        6</div>
                                    <div class="h-8 flex items-center justify-center text-sm">7</div>
                                    <div class="h-8 flex items-center justify-center text-sm">8</div>
                                    <div class="h-8 flex items-center justify-center text-sm">9</div>
                                    <div class="h-8 flex items-center justify-center text-sm">10</div>
                                    <div class="h-8 flex items-center justify-center text-sm">11</div>
                                    <div
                                        class="h-8 flex items-center justify-center text-sm bg-teal-600 text-white rounded-full">
                                        12</div>
                                    <div class="h-8 flex items-center justify-center text-sm">13</div>
                                    <div class="h-8 flex items-center justify-center text-sm">14</div>
                                    <div class="h-8 flex items-center justify-center text-sm">15</div>
                                    <div class="h-8 flex items-center justify-center text-sm">16</div>
                                    <div class="h-8 flex items-center justify-center text-sm">17</div>
                                    <div class="h-8 flex items-center justify-center text-sm">18</div>
                                    <div class="h-8 flex items-center justify-center text-sm">19</div>
                                    <div
                                        class="h-8 flex items-center justify-center text-sm bg-amber-400 text-white rounded-full">
                                        20</div>
                                    <div class="h-8 flex items-center justify-center text-sm">21</div>
                                    <div class="h-8 flex items-center justify-center text-sm">22</div>
                                    <div class="h-8 flex items-center justify-center text-sm">23</div>
                                    <div class="h-8 flex items-center justify-center text-sm">24</div>
                                    <div class="h-8 flex items-center justify-center text-sm">25</div>
                                    <div class="h-8 flex items-center justify-center text-sm">26</div>
                                    <div class="h-8 flex items-center justify-center text-sm">27</div>
                                    <div
                                        class="h-8 flex items-center justify-center text-sm bg-teal-600 text-white rounded-full">
                                        28</div>
                                    <div class="h-8 flex items-center justify-center text-sm">29</div>
                                    <div class="h-8 flex items-center justify-center text-sm">30</div>
                                </div>
                            </div>

                            <!-- Checkmarks -->
                            <div
                                class="absolute top-16 right-6 w-8 h-8 rounded-full bg-green-100 flex items-center justify-center">
                                <i class="fas fa-check text-green-600"></i>
                            </div>
                            <div
                                class="absolute bottom-16 left-6 w-8 h-8 rounded-full bg-green-100 flex items-center justify-center">
                                <i class="fas fa-check text-green-600"></i>
                            </div>
                        </div>

                        <!-- Floating Elements -->
                        <div
                            class="absolute -top-4 -right-4 w-12 h-12 rounded-full bg-amber-400 flex items-center justify-center shadow-lg">
                            <i class="fas fa-bell text-white"></i>
                        </div>
                        <div
                            class="absolute -bottom-4 -left-4 w-12 h-12 rounded-full bg-teal-600 flex items-center justify-center shadow-lg">
                            <i class="fas fa-chart-line text-white"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-20 bg-white">
        <div class="container mx-auto px-6">
            <div class="text-center mb-16">
                <h2 class="text-3xl font-bold text-gray-900 mb-4">Fitur Utama JADWALIN</h2>
                <p class="text-xl text-gray-600 max-w-2xl mx-auto">Solusi komprehensif untuk manajemen penjadwalan
                    sidang skripsi di UINSI Samarinda</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
                <!-- Feature 1 -->
                <div class="text-center group">
                    <div
                        class="w-20 h-20 mx-auto mb-6 rounded-2xl bg-teal-50 flex items-center justify-center group-hover:bg-teal-600 transition-colors">
                        <i
                            class="fas fa-calendar-alt text-3xl text-teal-600 group-hover:text-white transition-colors"></i>
                    </div>
                    <h3 class="text-2xl font-bold text-gray-900 mb-4">Penjadwalan Terpusat</h3>
                    <p class="text-gray-600 leading-relaxed">Kelola semua jadwal sidang dalam satu platform terintegrasi
                        dengan mudah dan efisien.</p>
                </div>

                <!-- Feature 2 -->
                <div class="text-center group">
                    <div
                        class="w-20 h-20 mx-auto mb-6 rounded-2xl bg-amber-50 flex items-center justify-center group-hover:bg-amber-400 transition-colors">
                        <i class="fas fa-bell text-3xl text-amber-500 group-hover:text-white transition-colors"></i>
                    </div>
                    <h3 class="text-2xl font-bold text-gray-900 mb-4">Notifikasi Otomatis</h3>
                    <p class="text-gray-600 leading-relaxed">Terima pengingat otomatis untuk jadwal sidang dan
                        perubahan penting lainnya.</p>
                </div>

                <!-- Feature 3 -->
                <div class="text-center group">
                    <div
                        class="w-20 h-20 mx-auto mb-6 rounded-2xl bg-teal-50 flex items-center justify-center group-hover:bg-teal-600 transition-colors">
                        <i
                            class="fas fa-chart-line text-3xl text-teal-600 group-hover:text-white transition-colors"></i>
                    </div>
                    <h3 class="text-2xl font-bold text-gray-900 mb-4">Progres Terpantau</h3>
                    <p class="text-gray-600 leading-relaxed">Pantau perkembangan tahapan skripsi secara real-time dan
                        transparan.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-12">
        <div class="container mx-auto px-6">
            <div class="flex flex-col md:flex-row justify-between items-center">
                <div class="flex items-center mb-6 md:mb-0">
                    <div class="w-10 h-10 rounded-lg bg-teal-600 flex items-center justify-center mr-3">
                        <i class="fas fa-calendar-check text-white text-xl"></i>
                    </div>
                    <h3 class="text-2xl font-bold">JADWALIN</h3>
                </div>
                <div class="text-center md:text-right">
                    <p class="text-gray-400">© 2025 JADWALIN - UINSI Samarinda</p>
                    <p class="text-gray-500 mt-2">Sistem Informasi Penjadwalan Sidang Skripsi</p>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>
