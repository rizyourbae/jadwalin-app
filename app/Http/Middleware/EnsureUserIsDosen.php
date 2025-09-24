<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class EnsureUserIsDosen
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if (Auth::guest()) {
            return redirect()->route('filament.dosen.auth.login');
        }
        if (Auth::check() && Auth::user()->hasRole('dosen')) {
            return $next($request);
        }
        abort(403, 'AKSES DITOLAK. ANDA BUKAN DOSEN.');
    }
}
