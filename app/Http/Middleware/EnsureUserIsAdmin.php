<?php

namespace App\Http\Middleware;

use App\Models\Dosen;
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
        // 1. Cek dulu apakah user adalah tamu (belum login)
        if (Auth::guest()) {
            // Jika ya, arahkan ke halaman login admin
            return redirect()->route('filament.admin.auth.login');
        }

        // 2. Jika sudah login, barulah cek rolenya
        /** @var \App\Models\User */
        $user = Auth::user();
        if ($user->hasAnyRole(['admin', 'super_admin', 'dosen'])) {
            // Jika rolenya sesuai, izinkan akses
            return $next($request);
        }

        // 3. Jika sudah login tapi rolenya salah, barulah tolak akses
        abort(403, 'AKSES DITOLAK. ANDA BUKAN ADMINISTRATOR.');
    }
}
