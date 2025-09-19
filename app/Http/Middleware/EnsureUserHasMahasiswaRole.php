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
        // Cek apakah user sudah login DAN memiliki role 'mahasiswa'
        if (Auth::check() && Auth::user()->hasRole('mahasiswa')) {
            // Jika ya, izinkan dia melanjutkan ke halaman yang dituju
            return $next($request);
        }

        // Jika tidak, tolak akses dengan halaman 403 (Forbidden / Akses Ditolak)
        abort(403, 'AKSES DITOLAK. ANDA BUKAN MAHASISWA.');
    }
}
