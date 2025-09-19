<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class EnsureUserIsAdmin
{
    /**
     * Handle an incoming request.
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Cek apakah user sudah login DAN memiliki role 'admin' ATAU 'super_admin'
        if (Auth::check() && Auth::user()->hasAnyRole(['admin', 'super_admin', 'dosen'])) {
            // Jika ya, izinkan akses
            return $next($request);
        }

        // Jika tidak, tolak akses dengan halaman 403 (Forbidden)
        abort(403, 'AKSES DITOLAK. ANDA BUKAN ADMINISTRATOR.');
    }
}
