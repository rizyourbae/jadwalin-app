<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class EnsureUserHasMahasiswaRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // 1. Cek dulu apakah user adalah tamu (belum login)
        if (Auth::guest()) {
            // Jika ya, arahkan ke halaman login mahasiswa
            return redirect()->route('filament.mahasiswa.auth.login');
        }

        // 2. Jika sudah login, barulah cek rolenya
        if (Auth::user()->role === 'mahasiswa') {
            // Jika rolenya sesuai, izinkan akses
            return $next($request);
        }

        // 3. Jika sudah login tapi rolenya salah, barulah tolak akses
        abort(403, 'AKSES DITOLAK. ANDA BUKAN MAHASISWA.');
    }
}
